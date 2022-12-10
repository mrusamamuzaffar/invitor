import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:invitor/local_database/domain/model/contacts.dart';

List<Contact> selectedContactList = [
  Contact(name: 'Usama'),
  Contact(name: 'Ali'),
  Contact(name: 'Muzam'),
];

class ContactsBehavior {
  // my variables
  late BuildContext buildContext;
  int retryCounter = 0;
  late CollectionReference personCollection;
  List<DocumentSnapshot> firestoreContactList = [];
  String contactName = '';
  bool isContactLoadingCompleted = false, isUpdatingContact = false, contactScreenTickButtonVisibility = false;

  List<Contact> contactList = [];
  int inviteeCounter = 0, nextIndex = 1;
  GlobalKey<FormState> textUpdatingFormKey = GlobalKey<FormState>();
  TextEditingController textEditingController = TextEditingController();
  // ContactDatabaseClient contactDatabaseClient = ContactDatabaseClient();

  String convertToValidName({required String name}) {
    var spaceCounter = 0;
    var validName = name.trim();
    validName = validName.replaceRange(0, 1, validName[0].toUpperCase());

    for(var i = 1; i < validName.length; i++) {
      if(validName[i] == ' ') {
        if(spaceCounter != 0) {
          validName = validName.replaceRange(i, (i + 1), '');
          i--;
        } else {
          spaceCounter++;
        }
      } else {
        if(spaceCounter != 0) {
          validName = validName.replaceRange(i, (i + 1), validName[i].toUpperCase());
        } else {
          validName = validName.replaceRange(i, (i + 1), validName[i].toLowerCase());
        }
        spaceCounter = 0;
      }
    }
    return validName;
  }

  void registerFirebaseAuthenticationStateChangeListeners() {
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        print('authStateChanges...................User is currently signed out!');
      } else {
        print('authStateChanges...................User is signed in!');
      }
    });

    FirebaseAuth.instance.idTokenChanges().listen((User? user) {
      if (user == null) {
        print('idTokenChanges.....................User is currently signed out!');
      } else {
        print('idTokenChanges.....................User is signed in!');
      }
    });

    FirebaseAuth.instance.userChanges().listen((User? user) {
      if (user == null) {
        print('userChanges........................User is currently signed out!');
      } else {
        print('userChanges........................User is signed in!');
      }
    });
  }

  void manageFirestoreInternetAccess({required bool enable}) async {
    enable ?
    await FirebaseFirestore.instance.enableNetwork()
        :
    await FirebaseFirestore.instance.disableNetwork();
  }
}