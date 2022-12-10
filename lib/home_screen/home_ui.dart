import 'dart:async';
import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:invitor/contacts_screen/contacts_behavior.dart';
import 'package:invitor/contacts_screen/contacts_ui.dart';
import 'package:invitor/gallery_screen/gallery_ui.dart';
import 'package:invitor/google_sign_in_screen/google_sign_in_ui.dart';
import 'package:invitor/home_screen/home_behavior.dart';
import 'package:invitor/network_connectivity_handler.dart';
import 'package:invitor/splash_screen/splash_behavior.dart';
import 'package:invitor/sub_category_selection_screen/sub_category_selection_ui.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';

typedef AppbarCallback = void Function();

String heroTag = 'This tag will be replaced at run time.';

class HomeScreen extends StatefulWidget {
  static const String ROUTE_NAME = 'HomeScreen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with HomeScreenBehavior, TickerProviderStateMixin, ConnectivityHandler, ContactsBehavior {
  Widget appBarAction(IconData icon, AppbarCallback onTap) => GestureDetector(
        onTap: onTap,
        child: Padding(
          padding: EdgeInsets.only(left: appBarIconPadding!),
          child: Icon(icon, color: Colors.black),
        ),
      );

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
                      Text(taskDescription, style: const TextStyle(fontFamily: 'Roboto',),),
                    ])
              ]);
        });
  }

  Future<void> showSignOutConfirmationDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Log out?', style: TextStyle(fontFamily: 'Roboto',),),
          content: SingleChildScrollView(
            child: Column(
              children: const <Widget>[
                Text('Are you sure you want to log out?', style: TextStyle(fontFamily: 'Roboto',),),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Cancel', style: TextStyle(fontFamily: 'Roboto',),),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            TextButton(
              child: const Text('Log out', style: TextStyle(fontFamily: 'Roboto',),),
              onPressed: () {
                Navigator.pop(context);
                signOutMyGoogleAccount();
              },
            ),
          ],
        );
      },
    );
  }

  void signOutMyGoogleAccount() async {
    showLoadingDialog(context: buildContext, taskDescription: 'Signing you out...');
    if (await checkMyInitialConnectionState(context)) {
      if (isConnectedToNetwork) {
        // showLoadingDialog(context: buildContext, taskDescription: 'Signing you out...');
        try {
          List<InternetAddress> result = await InternetAddress.lookup('example.com').timeout(const Duration(seconds: 10));
          if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
            try {
              await FirebaseAuth.instance.signOut();
              await GoogleSignIn().disconnect();
              await GoogleSignIn().signOut();
              Navigator.pushNamedAndRemoveUntil(context, MyGoogleSignIn.ROUTE_NAME, (route) => false);
            } on FirebaseAuthException {
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Error signing you out!', style: TextStyle(fontFamily: 'Roboto',),),));
            } catch (e) {
              setState(() {
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Error signing you out!', style: TextStyle(fontFamily: 'Roboto',),),));
              });
            }
          }
        } catch (e) {
          setState(() {
            Navigator.pop(context);
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('timeout, no internet access', style: TextStyle(fontFamily: 'Roboto',),),));
          });
        }
      }
      else {
        Navigator.pop(context);
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('not connected to network', style: TextStyle(fontFamily: 'Roboto',),),));
      }
    } else {
      Navigator.pop(context);
    }
  }

  Widget rowView({
    String? title,
    String? noOfCard,
    String? imagePath,
    OnTap? onTap,
    double? dx,
    String? heroTagCategoryTitle,
    String? heroTagBackgroundText,
    bool cardTextVisibility = true,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: rowViewMainContainerHeight,
        width: rowViewMainContainerWidth,
        child:  Stack(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding:
                      EdgeInsets.only(left: rowViewMainContainerHeight! * 0.1),
                  child: Hero(
                    tag: heroTagBackgroundText!,
                    child: Transform(
                      transform: Matrix4.identity()
                        ..setEntry(3, 2, 0.001)
                        ..translate(dx),
                      child: Opacity(
                        opacity: backgroundTextOpacity,
                        child: Material(
                          textStyle: TextStyle(
                              color: Colors.black,
                              fontFamily: 'PlayfairDisplay',
                              fontSize: screenWidth! * 0.115,
                          ),
                          child: Text(
                            title!,
                            maxLines: 1,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: screenWidth! * 0.0943,
                            top: rowViewMainContainerHeight! * 0.105),
                        child: Hero(
                          tag: heroTagCategoryTitle!,
                          child: Transform(
                            transform: Matrix4.identity()
                              ..setEntry(3, 2, 0.001)
                              ..translate(dx),
                            child: AnimatedOpacity(
                              opacity: opacity!,
                              duration: Duration(milliseconds: (animationSpeedController * 0.25).toInt()),
                              child: Material(
                                textStyle: TextStyle(
                                  fontSize: screenWidth! * 0.054,
                                  color: Colors.black,
                                  fontFamily: 'PlayfairDisplay',
                                ),
                                color: Colors.transparent,
                                child: Text(
                                  title,
                                  maxLines: 1,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: rowViewMainContainerHeight! * 0.185),
                        child: Visibility(maintainSize: true,maintainAnimation: true, maintainState: true,
                          visible:cardTextVisibility,
                              // isReverseTransition ? true : cardTextVisibility,
                          child: Transform(
                            transform: Matrix4.identity()
                              ..setEntry(3, 2, 0.001)
                              ..translate(-animation!.value.dx),
                            child: AnimatedOpacity(
                              duration: Duration(milliseconds: (animationSpeedController * 0.25).toInt()),
                              opacity: opacity!,
                              child: Text(
                                noOfCard!,
                                style: TextStyle(
                                    fontSize: cardTextFontSize,
                                    color: const Color(0xff6c6c6c)),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Transform(
                    alignment: Alignment.center,
                    transform: Matrix4.identity()
                      ..setEntry(3, 2, 0.001)
                      ..translate(animation!.value.dx),
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: (animationSpeedController * 0.15).toInt()),
                      height: ringHeight,
                      width: ringWidth,
                      child: AnimatedOpacity(
                        duration: Duration(milliseconds: (animationSpeedController * 0.15).toInt()),
                        opacity: opacity!,
                        child: Image(
                          fit: BoxFit.contain,
                          image: AssetImage(imagePath!),
                          alignment: Alignment.centerLeft,
                        ),
                      ),
                    ),
                  ),
                ],
              ))
            ],
          ),
      ),
    );
  }

  @override
  void initState() {
    getExternalStorageDirectory().then((value) {
      rootDirectory = value!.path;
    });
    checkMyInitialConnectionState(context);
    connectivitySubscription = connectivity.onConnectivityChanged.listen(checkMyConnectivity);
    manageFirestoreInternetAccess(enable: false);
    animationController = AnimationController(
        vsync: this, duration: Duration(milliseconds: (animationSpeedController * 0.20).toInt()));

    animation = Tween<Offset>(begin: const Offset(0, 0), end: const Offset(600, 0))
        .animate(CurvedAnimation(curve: Curves.easeIn, parent: animationController!))
          ..addListener(() {
            homeScreenChangeNotifier!.homeScreenNotifyChange();
          });
    super.initState();
  }

  /*@override
  void dispose() {
    animationController!.dispose();
    super.dispose();
  }*/



  @override
  Widget build(BuildContext context) {
    buildContext = context;
    homeScreenChangeNotifier =   Provider.of<HomeScreenChangeNotifier>(context, listen: false);

    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;

    if (!isAnimationInitialized) {
      Future.delayed(Duration(milliseconds: (animationSpeedController * 0.20).toInt()), () {
        setState(() {
          initAnimationValues();
        });
      });
    }

    initValues();

    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xfffbfbfb),
          elevation: 0,
          leadingWidth: 0,
          title: Padding(
            padding: const EdgeInsets.only(left: 10, top: 10),
            child: Text(
              'Invitor',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: appBarIconPadding! * 2.2,
                  fontFamily: 'Billabong'),
            ),
          ),
          actions: <Widget>[
            appBarAction(Icons.collections_outlined, () {
              Navigator.pushNamed(context, GalleryScreen.ROUTE_NAME);
            }),
            appBarAction(Icons.person_outline_outlined, () {
              Navigator.pushNamed(context, ContactsScreen.ROUTE_NAME);
            }),

            Padding(
              padding: EdgeInsets.only(right: appBarIconPadding!),
              child: appBarAction(Icons.logout_rounded, () {
                showSignOutConfirmationDialog();
              }),
            ),
          ],
        ),
        body: Container(
          width: screenWidth,
          height: screenHeight,
          decoration: BoxDecoration(
              color: const Color(0xffebebeb),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(mainContainerTopLeftRadius!),
              ),
              gradient: const LinearGradient(
                  begin: Alignment.topRight,
                  colors: [Color(0XFFEBEBEB), Colors.white],
                  stops: <double>[0.2, 1],
                  end: Alignment.bottomLeft)),
          child: Consumer<HomeScreenChangeNotifier>(
            builder: (context, value, child) => ListView(
              children: [
                rowView(
                    title: 'Wedding',
                    imagePath: 'assets/images/ring.png',
                    noOfCard: '36 cards',
                    heroTagCategoryTitle: 'WeddingTag',
                    heroTagBackgroundText: 'WeddingTagBackground',
                    onTap: () {
                      numberOfMainCategoryCards = '36 cards';
                      mainCategoryIconPath = 'assets/images/ring.png';
                      heroTag = 'WeddingTag';
                      categoryTitle = 'Wedding';
                      mainCategoryTitle = 'Wedding';
                      categoryTitleForVisibilityController = categoryTitle;
                      animationController!.forward();
                        Navigator.pushNamed(context, SubCategorySelection.ROUTE_NAME, arguments: 'Wedding');
                    },
                    dx: (categoryTitle.contains('Wedding'))
                        ? 0.0
                        : -animation!.value.dx,
                    cardTextVisibility:
                        (categoryTitleForVisibilityController.contains('Wedding')) ? false : true,
                ),
                rowView(
                    title: 'Birthday',
                    imagePath: 'assets/images/birthday.png',
                    noOfCard: '14 cards',
                    heroTagCategoryTitle: 'BirthdayTag',
                    heroTagBackgroundText: 'BirthdayTagBackground',
                    onTap: () {
                      mainCategoryIconPath = 'assets/images/birthday.png';
                      numberOfMainCategoryCards = '14 cards';
                      heroTag = 'BirthdayTag';
                      categoryTitle = 'Birthday';
                      mainCategoryTitle = 'Birthday';
                      categoryTitleForVisibilityController = categoryTitle;
                      animationController!.forward();
                        Navigator.pushNamed(context, SubCategorySelection.ROUTE_NAME, arguments: 'Birthday');
                    },
                    dx: (categoryTitle.contains('Birthday'))
                        ? 0.0
                        : -animation!.value.dx,
                    cardTextVisibility:
                        (categoryTitleForVisibilityController.contains('Birthday')) ? false : true),
                rowView(
                    title: 'Party',
                    imagePath: 'assets/images/party.png',
                    noOfCard: '37 cards',
                    heroTagCategoryTitle: 'PartyTag',
                    heroTagBackgroundText: 'PartyTagBackground',
                    onTap: () {
                      mainCategoryIconPath = 'assets/images/party.png';
                      numberOfMainCategoryCards = '37 cards';
                      heroTag = 'PartyTag';
                      categoryTitle = 'Party';
                      mainCategoryTitle = 'Party';
                      categoryTitleForVisibilityController = categoryTitle;
                      animationController!.forward();
                        Navigator.pushNamed(context, SubCategorySelection.ROUTE_NAME,
                            arguments: 'Party');
                    },
                    dx: (categoryTitle.contains('Party'))
                        ? 0.0
                        : -animation!.value.dx,
                    cardTextVisibility:
                        (categoryTitleForVisibilityController.contains('Party')) ? false : true),
                rowView(
                    title: 'Babies & Kids',
                    imagePath: 'assets/images/babies_and_kids.png',
                    noOfCard: '21 cards',
                    heroTagCategoryTitle: 'Babies & KidsTag',
                    heroTagBackgroundText: 'Babies & KidsTagBackground',
                    onTap: () {
                      mainCategoryIconPath = 'assets/images/babies_and_kids.png';
                      numberOfMainCategoryCards = '21 cards';
                      heroTag = 'Babies & KidsTag';
                      categoryTitle = 'Babies & Kids';
                      mainCategoryTitle = 'Babies & Kids';
                      categoryTitleForVisibilityController = categoryTitle;
                      animationController!.forward();
                        Navigator.pushNamed(context, SubCategorySelection.ROUTE_NAME,
                            arguments: 'Babies & Kids');
                    },
                    dx: (categoryTitle.contains('Babies & Kids'))
                        ? 0.0
                        : -animation!.value.dx,
                    cardTextVisibility:
                        (categoryTitleForVisibilityController.contains('Babies & Kids')) ? false : true),
                rowView(
                    title: 'Announcements',
                    imagePath: 'assets/images/announcement.png',
                    noOfCard: '20 cards',
                    heroTagCategoryTitle: 'AnnouncementsTag',
                    heroTagBackgroundText: 'AnnouncementsTagBackground',
                    onTap: () {
                      mainCategoryIconPath = 'assets/images/announcement.png';
                      numberOfMainCategoryCards = '20 cards';
                      heroTag = 'AnnouncementsTag';
                      categoryTitle = 'Announcements';
                      mainCategoryTitle = 'Announcements';
                      categoryTitleForVisibilityController = categoryTitle;
                      animationController!.forward();
                        Navigator.pushNamed(context, SubCategorySelection.ROUTE_NAME,
                            arguments: 'Announcements');
                    },
                    dx: (categoryTitle.contains('Announcements'))
                        ? 0.0
                        : -animation!.value.dx,
                    cardTextVisibility:
                        (categoryTitleForVisibilityController.contains('Announcements')) ? false : true),
              ],
            ),
          ),
        ),
    );
  }
}