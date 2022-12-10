import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:invitor/card_collection_screen/card_collection_ui.dart';
import 'package:invitor/contacts_screen/contacts_behavior.dart';
import 'package:invitor/data_collection_screen/data_collection_behavior.dart';
import 'package:invitor/local_database/domain/model/contacts.dart';
import 'package:invitor/network_connectivity_handler.dart';

class ContactsScreen extends StatefulWidget {
  const ContactsScreen({Key? key,}) : super(key: key);

  static const String ROUTE_NAME = 'ContactsScreen';

  @override
  _ContactsScreenState createState() => _ContactsScreenState();
}

class _ContactsScreenState extends State<ContactsScreen> with ContactsBehavior, ConnectivityHandler {

  void showLoadingDialog({required BuildContext context, required String taskDescription}) async {
    showDialog<void>(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return SimpleDialog(
              children: <Widget>[
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const CircularProgressIndicator(strokeWidth: 3.0,),
                      const SizedBox(width: 20,),
                      Text(taskDescription, style: const TextStyle(fontFamily: 'Roboto'),),
                    ])
              ]);
        });
  }

  void createReferenceToMyContactCollection() {
    personCollection = FirebaseFirestore.instance.collection(FirebaseAuth.instance.currentUser!.email!);
  }

  Future<bool> loadContacts() async {
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection(FirebaseAuth.instance.currentUser!.email!)
        .orderBy('full_name', descending: false)
        .get();

      for (DocumentSnapshot doc in querySnapshot.docs) {
        firestoreContactList.add(doc);
        contactList.add(Contact(name: doc['full_name'].toString()));
      }
      setState(() {
        isContactLoadingCompleted = true;
      });

      return true;
  }

  void refreshContactList({int index = 0}) {
    int currentContactListLength = contactList.length;
    String currentContactName = '';
    if (currentContactListLength != 0) {
      // currentContactName = firestoreContactList[index]['full_name'].toString();
      currentContactName = contactList[index].name;
    }
    firestoreContactList.clear();
    contactList.clear();
    FirebaseFirestore.instance
        .collection(FirebaseAuth.instance.currentUser!.email!)
        .orderBy('full_name', descending: false)
        .get()
        .then((QuerySnapshot querySnapshot) {
      for (DocumentSnapshot doc in querySnapshot.docs) {
        firestoreContactList.add(doc);
        contactList.add(Contact(name: doc['full_name'].toString()));
      }
      if (!isUpdatingContact) {
        if(currentContactListLength != contactList.length) {
          setState(() {
            Navigator.pop(buildContext);
          });
        } else {
          refreshContactList();
        }
      } else {
        if(contactList[index].name != currentContactName || retryCounter > 4) {
          setState(() {
            isUpdatingContact = false;
            currentContactName = '';
            Navigator.pop(buildContext);
          });
        } else {
          refreshContactList(index: index);
        }
      }
    }).catchError((error) {
      Navigator.pop(buildContext);
      ScaffoldMessenger.of(buildContext).showSnackBar(SnackBar(
        content: const Text('Error refreshing contact list.', style: TextStyle(fontFamily: 'Roboto'),),
        action: SnackBarAction(
          onPressed: () {
            showLoadingDialog(
              context: buildContext,
              taskDescription: 'Refreshing contact list...',
            );
            refreshContactList();
          },
          label: 'retry',
        ),
      )
      );
    });
    retryCounter++;
  }

  // Future<void> displayContactInputDialog({required String action, int index = 0}) async {
  //   return showDialog(
  //       context: context,
  //       barrierDismissible: false,
  //       builder: (context) {
  //         return AlertDialog(
  //           title: const Text('Enter new name'),
  //           content: SizedBox(
  //             height: 70,
  //             child: Column(
  //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //               children: <Widget>[
  //                 TextField(
  //                   onChanged: (value) {
  //                     contactName = value;
  //                   },
  //                   decoration: const InputDecoration(hintText: "Name"),
  //                 ),
  //               ],
  //             ),
  //           ),
  //           actions: <Widget>[
  //             TextButton(
  //               child: const Text('Cancel'),
  //               onPressed: () {
  //                 Navigator.pop(context);
  //               },
  //             ),
  //             TextButton(
  //               child: Text(action),
  //               onPressed: () async {
  //                 Navigator.pop(context);
  //                 if(action.contains('Add')) {
  //                   contactName = convertToValidName(name: contactName);
  //                   try {
  //                     showLoadingDialog(context: buildContext, taskDescription: 'adding contact...');
  //                     personCollection.add({
  //                       'full_name': contactName,
  //                     });
  //                     refreshContactList();
  //                   } on Exception {
  //                     Navigator.pop(buildContext);
  //                     ScaffoldMessenger.of(buildContext).showSnackBar(const SnackBar(content: Text("Error adding contact!"),));
  //                   }
  //                 } else {
  //                   contactName = convertToValidName(name: contactName);
  //                   try {
  //                     isUpdatingContact = true;
  //                     showLoadingDialog(context: buildContext, taskDescription: 'updating contact...');
  //                     personCollection.doc(contactList[index].id).update({'full_name': contactName});
  //                     refreshContactList(index: index);
  //                   } on Exception {
  //                     Navigator.pop(buildContext);
  //                     ScaffoldMessenger.of(buildContext).showSnackBar(const SnackBar(content: Text("Error updating contact!"),));
  //                   }
  //                 }
  //               },
  //             ),
  //           ],
  //         );
  //       });
  // }

  void displayContactInputDialog() {
    textEditingController.clear();
    textEditingController.text = '';
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Enter name', style: TextStyle(fontFamily: 'Roboto'),),
          content: Form(
            key: textUpdatingFormKey,
            child: TextFormField(
              validator: (value) {
                if(value!.trim().isNotEmpty) {
                  return null;
                }
                else {
                  return 'enter valid name';
                }
              },
              controller: textEditingController,
              decoration: const InputDecoration(
                hintText: 'Name',
                contentPadding: EdgeInsets.only(left: 10),
              ),
              style: const TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          actions: [
            TextButton(onPressed: () {
              Navigator.pop(context);
              // setState(() {});
            }, child: const Text('Cancel', style: TextStyle(fontFamily: 'Roboto',),)),

            TextButton(
                onPressed: () {
                  if(textUpdatingFormKey.currentState!.validate()) {
                    Navigator.pop(context);
                    contactName = convertToValidName(name: textEditingController.text.trim());
                    try {
                      showLoadingDialog(context: buildContext, taskDescription: 'adding contact...');
                      personCollection.add({
                        'full_name': contactName,
                      });
                      textEditingController.clear();
                      inviteeCounter = 0;
                      refreshContactList();
                    } on Exception {
                      Navigator.pop(buildContext);
                      ScaffoldMessenger.of(buildContext).showSnackBar(const SnackBar(content: Text('Error adding contact!', style: TextStyle(fontFamily: 'Roboto'),),));
                    }
                    // setState(() {
                    //   contactDatabaseClient.insert(contact: Contact(primaryKey: nextIndex, name: textEditingController.text.trim()));
                    //   textEditingController.clear();
                    //   fetchContacts();
                    //   inviteeCounter = 0;
                    // });
                  }
                },
                child: const Text('Add', style: TextStyle(fontFamily: 'Roboto',),)),
          ],
        );
      },
    );
  }

  void displayContactUpdateDialog({required int index}) {
    // textEditingController.text = contactList[index].name.toString();
    textEditingController.text = contactList[index].name;
    textEditingController.selection = TextSelection(baseOffset: 0, extentOffset: textEditingController.text.length);
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Enter new name', style: TextStyle(fontFamily: 'Roboto'),),
          content: Form(
            key: textUpdatingFormKey,
            child: TextFormField(
              validator: (value) {
                if(value!.trim().isNotEmpty) {
                  return null;
                }
                else {
                  return 'enter valid name';
                }
              },
              controller: textEditingController,
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.only(left: 10),
              ),
              style: const TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          actions: [
            TextButton(onPressed: () {
              Navigator.pop(context);
              // setState(() {});
            }, child: const Text('Cancel', style: TextStyle(fontFamily: 'Roboto',),)),

            TextButton(
                onPressed: () {
                  if(textUpdatingFormKey.currentState!.validate()) {
                    retryCounter = 0;
                    Navigator.pop(context);
                    contactName = convertToValidName(name: textEditingController.text.trim());
                    try {
                      isUpdatingContact = true;
                      showLoadingDialog(context: buildContext, taskDescription: 'updating contact...');
                      personCollection.doc(firestoreContactList[index].id).update({'full_name': contactName});
                      textEditingController.clear();
                      textEditingController.text = '';
                      refreshContactList(index: index);
                      inviteeCounter = 0;
                    } on Exception {
                      Navigator.pop(buildContext);
                      ScaffoldMessenger.of(buildContext).showSnackBar(const SnackBar(content: Text('Error updating contact!', style: TextStyle(fontFamily: 'Roboto'),),));
                    }
                    // setState(() {
                    //   Contact contact = Contact(primaryKey: contactList[index].primaryKey, name: textEditingController.text.trim());
                    //   contactDatabaseClient.update(contact: contact);
                    //   contactList[index] = contact;
                    //   textEditingController.clear();
                    //   textEditingController.text = '';
                    //   contactList.sort((Contact contactOne, Contact contactTwo) => contactOne.name.toLowerCase().compareTo(contactTwo.name.toLowerCase()));
                    // });
                  }
                },
                child: const Text('Update', style: TextStyle(fontFamily: 'Roboto',),)),
          ],
        );
      },
    );
  }

  void contactDeleteDialog({required int index}) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          title: const Text(
            'Delete contact?',
            style: TextStyle(
              fontFamily: 'Roboto',
            ),
          ),
          content: const Text(
            'This contact will be permanently deleted from your device',
            style: TextStyle(fontFamily: 'Roboto'),
          ),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Cancel', style: TextStyle(fontFamily: 'Roboto'))),
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  showLoadingDialog(context: buildContext, taskDescription: 'Deleting contact...');
                  try {
                    personCollection.doc(firestoreContactList[index].id).delete();
                    refreshContactList();
                    inviteeCounter = 0;
                  } on Exception {
                    Navigator.pop(context);
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Error deleting contact!', style: TextStyle(fontFamily: 'Roboto'),),));
                  }
                  // setState(() {
                  //   contactDatabaseClient.delete(primaryKey: contactList[index].primaryKey);
                  //   if (contactList[index].isChecked) {
                  //     inviteeCounter = inviteeCounter - 1;
                  //   }
                  //   contactList.removeAt(index);
                  // });
                  // Navigator.pop(context);
                },
                child: const Text(
                  'Delete',
                  style: TextStyle(color: Colors.red, fontFamily: 'Roboto'),
                )),
          ],
        );
      },
    );
  }

  Future<void> synchronizeContactsWithFirestore() async {
    showLoadingDialog(context: buildContext, taskDescription: 'restoring contact\'s backup...');
    if(await checkForInternetServiceAvailability(buildContext)) {
      try {
        await FirebaseFirestore.instance.enableNetwork();
        contactList.clear();
        firestoreContactList.clear();
        await loadContacts();
        await FirebaseFirestore.instance.disableNetwork();
        inviteeCounter = 0;
        Navigator.pop(context);
        setState(() {});
      } on Exception {
        ScaffoldMessenger.of(buildContext).showSnackBar(const SnackBar(content: Text('something went wrong, please try again', style: TextStyle(fontFamily: 'Roboto',),),));
      }
    } else {
      Navigator.pop(context);
    }
  }

  // void fetchContacts() async {
  //   contactList = await contactDatabaseClient.fetch();
  //
  //   if (contactList.isNotEmpty) {
  //     nextIndex = contactList.last.primaryKey + 1;
  //   }
  //
  //   contactList.sort((Contact contactOne, Contact contactTwo) =>
  //       contactOne.name.toLowerCase().compareTo(contactTwo.name.toLowerCase()));
  //   setState(() {});
  // }

  PopupMenuButton contactsMenu() {
    return PopupMenuButton(
      icon: const Icon(Icons.more_vert, color: Colors.black,),
      itemBuilder: (BuildContext context) => <PopupMenuEntry>[
        PopupMenuItem(
          child: const Text('Create Backup', style: TextStyle(fontFamily: 'Roboto'),),
          onTap: () {
            Future.delayed(const Duration(milliseconds: 0), () async {
              showLoadingDialog(context: buildContext, taskDescription: 'creating contact\'s backup...');
              if(await checkForInternetServiceAvailability(context)) {
              try {
                await FirebaseFirestore.instance.enableNetwork();
                await FirebaseFirestore.instance.waitForPendingWrites();
                await FirebaseFirestore.instance.disableNetwork();
                Navigator.pop(buildContext);
                setState(() {});
              } on Exception {
                Navigator.pop(buildContext);
                ScaffoldMessenger.of(buildContext).showSnackBar(const SnackBar(content: Text('something went wrong, please try again', style: TextStyle(fontFamily: 'Roboto',),),));
              }
              } else {
              setState(() {
              Navigator.pop(buildContext);
              });
              }
            });
          },
        ),
        PopupMenuItem(
          child: const Text('Restore Backup', style: TextStyle(fontFamily: 'Roboto'),),
          onTap: () {
            Future.delayed(const Duration(milliseconds: 0), () {
              synchronizeContactsWithFirestore();
            });
          },
        ),
      ],
    );
  }

  @override
  void initState() {
    selectedContactList.clear();
    registerFirebaseAuthenticationStateChangeListeners();
    checkMyInitialConnectionState(context);
    connectivitySubscription = connectivity.onConnectivityChanged.listen(checkMyConnectivity);
    manageFirestoreInternetAccess(enable: false);
    createReferenceToMyContactCollection();
    loadContacts();
    // fetchContacts(); // replaced with firebase version
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    (textFieldDataMap.isNotEmpty && contactList.isNotEmpty) ? contactScreenTickButtonVisibility = true : contactScreenTickButtonVisibility = false;
    buildContext = context;
    return WillPopScope(
      onWillPop: () {
        ScaffoldMessenger.of(context).clearSnackBars();
        return Future.value(true);
      },
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 1,
            leading: Center(
              child: Text(
                '$inviteeCounter',
                style: const TextStyle(
                    fontSize: 20, color: Colors.black, fontFamily: 'Roboto'),
              ),
            ),
            title: const Text(
              'Contacts',
              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            actions: [
              Visibility(
                visible: contactScreenTickButtonVisibility,
                child: IconButton(
                icon: const Icon(Icons.check),
                color: Colors.black,
                onPressed: () {
                selectedContactList.clear();

                // if(textFieldDataMap.isNotEmpty && contactList.isNotEmpty) {
                  for(int i = 0; i < contactList.length; i++) {
                    if(contactList[i].isChecked) {
                      selectedContactList.add(contactList[i]);
                    }
                  }
                  if(selectedContactList.isNotEmpty) {
                    ScaffoldMessenger.of(context).clearSnackBars();
                    Navigator.pushNamed(context, CardCollectionGridViewScreen.ROUTE_NAME,);
                  }
                  else {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('first_communion select a person to be invited', style: TextStyle(fontFamily: 'Roboto'),)));
                  }
                // }
                // else {
                //   ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Please enter the event data after selecting the event category', style: TextStyle(fontFamily: 'Roboto'),)));
                // }
                },
                ),
              ),
              contactsMenu(),
            ],
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 50,
                child: Material(
                  color: Color(0xE3F6F6F6),
                  elevation: 1,
                  child: Center(
                    child: ListTile(
                      leading: Text(
                        'Invite',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Roboto',
                            fontSize: 16),
                      ),
                      title: Text(
                        'Name',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Roboto',
                            fontSize: 16),
                      ),
                      trailing: Text(
                        'Family',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Roboto',
                            fontSize: 16),
                      ),
                    ),
                  ),
                ),
              ),
              (!isContactLoadingCompleted) ?
              const Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 32.0),
                  child: SizedBox(
                    width: 30,
                    height: 30,
                    child: CircularProgressIndicator(
                      strokeWidth: 3,
                    ),
                  ),
                ),
              )
                  :
              Expanded(
                child: contactList.isNotEmpty ?
                ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: contactList.length,
                  itemBuilder: (context, index) {
                    return Material(
                      elevation: 1,
                      child: Slidable(
                        actionExtentRatio: 1/2,
                        actionPane: const SlidableScrollActionPane(),
                        secondaryActions: [
                          IconSlideAction(
                            caption: 'delete',
                            closeOnTap: true,
                            color: Colors.red.shade50,
                            iconWidget: const Icon(Icons.delete_outline_rounded, color: Colors.red,),
                            onTap: () {
                              contactDeleteDialog(index: index);
                            },
                          ),
                          IconSlideAction(
                            caption: 'edit',
                            closeOnTap: true,
                            color: Colors.blue.shade50,
                            iconWidget: const Icon(Icons.edit, color: Colors.blue,),
                            onTap: () {
                              displayContactUpdateDialog(index: index);
                            },
                          ),
                        ],
                        child: CheckboxListTile(
                          activeColor: const Color(0xFF22D28B),
                          value: contactList[index].isChecked,
                          onChanged: (isChecked) {
                            setState(() {
                              contactList[index].isChecked = isChecked!;
                              isChecked
                                  ? inviteeCounter += 1
                                  : inviteeCounter -= 1;
                              contactList[index].isWithFamily = false;
                            });
                          },
                          secondary: Checkbox(
                            activeColor: const Color(0xFF22D28B),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            value: contactList[index].isWithFamily,
                            onChanged: (isWithFamily) {
                              if (contactList[index].isChecked &&
                                  contactList.isNotEmpty) {
                                setState(() {
                                  contactList[index].isWithFamily = isWithFamily!;
                                });
                              } else {
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(SnackBar(
                                  content: Text(
                                    '${contactList[index].name} is not invited.',
                                    style: const TextStyle(fontFamily: 'Roboto'),
                                  ),
                                  action: SnackBarAction(
                                    label: 'invite',
                                    textColor: Colors.yellowAccent,
                                    onPressed: () {
                                      setState(() {
                                        if (!(contactList[index].isChecked)) {
                                          contactList[index].isChecked = true;
                                          inviteeCounter += 1;
                                        }
                                      });
                                    },
                                  ),
                                ));
                              }
                            },
                          ),
                          title: Text(
                            contactList[index].name,
                            style: const TextStyle(fontFamily: 'Roboto'),
                          ),
                          controlAffinity: ListTileControlAffinity.leading,
                        ),
                      ),
                    );
                  },
                )
                :
                Center(
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: 'No contacts to display\n\n',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        TextSpan(
                          text: 'tap + button to add new contact or\nrestore existing contacts by tapping three dots\nat the upper right corner',
                          style: TextStyle(
                              color: Colors.grey,
                              fontFamily: 'Roboto'
                          ),
                        )
                      ]
                    ),
              ),
                ))],
          ),
          floatingActionButton: Padding(
            padding: const EdgeInsets.only(right: 20, bottom: 20),
            child: FloatingActionButton(
              backgroundColor: const Color(0xFF22D28B),
              onPressed: () {
                displayContactInputDialog();
              },
              tooltip: 'Add new contact',
              child: const Icon(Icons.add),
            ),
          )),
    );
  }
}
