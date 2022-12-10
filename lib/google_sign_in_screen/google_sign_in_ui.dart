import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:invitor/home_screen/home_ui.dart';
import 'package:path_provider/path_provider.dart';
import '../network_connectivity_handler.dart';

class MyGoogleSignIn extends StatefulWidget {
  const MyGoogleSignIn({Key? key}) : super(key: key);

  static const String ROUTE_NAME = 'MyGoogleSignIn';

  @override
  _MyGoogleSignInState createState() => _MyGoogleSignInState();
}

class _MyGoogleSignInState extends State<MyGoogleSignIn> with ConnectivityHandler {
  late double screenHeight, screenWidth;
  late Widget googleSignInProcessIndicator;
  bool isProcessing = false;
  late GoogleSignInAccount? googleUser;
  late GoogleSignInAuthentication? googleAuth;
  late UserCredential googleUserCredential;

  Image googleLogo() => const Image(image: AssetImage('assets/images/google_logo.png'),);
  Widget processingIndicator() => const Center(
    child: SizedBox(
      width: 30,
      height: 30,
      child: CircularProgressIndicator(
        color: Colors.black,
      ),
    ),
  );

  void showErrorDetailsDialog({required String errorDescription}) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Error Details', style: TextStyle(fontFamily: 'Roboto',),),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                setState(() {
                  Navigator.pop(context);
                });
              },
              child: const Text('OK', style: TextStyle(fontFamily: 'Roboto',),),
            ),
          ],
          content: Text(errorDescription),
        );
      },
    );
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

  void signInWithGoogle() async {
    isProcessing = true;
    // setState(() {
    //   isProcessing = true;
    //   googleSignInProcessIndicator = processingIndicator();
    // });

    try {
      List<InternetAddress> result = await InternetAddress.lookup('example.com').timeout(const Duration(seconds: 10));

      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        try {
          // Trigger the authentication flow
          googleUser = await GoogleSignIn().signIn();

          try {
            if(googleUser != null) {
              // Obtain the auth details from the request
              googleAuth = await googleUser?.authentication;

              try {
                AuthCredential credential = GoogleAuthProvider.credential(
                  accessToken: googleAuth?.accessToken,
                  idToken: googleAuth?.idToken,
                );
                // Once signed in, return the UserCredential
                googleUserCredential = await FirebaseAuth.instance.signInWithCredential(credential);
                Navigator.pushReplacementNamed(context, HomeScreen.ROUTE_NAME);

              } on FirebaseAuthException catch (e) {
                setState(() {
                  isProcessing = false;
                  googleSignInProcessIndicator = googleLogo();
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: const Text('Error signing you in!', style: TextStyle(fontFamily: 'Roboto',),),
                    action: SnackBarAction(label: 'detail', onPressed: () => showErrorDetailsDialog(errorDescription: e.message!),),
                  ));
                });
              } catch (e) {
                setState(() {
                  isProcessing = false;
                  googleSignInProcessIndicator = googleLogo();
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text('Something went wrong, please try again.', style: TextStyle(fontFamily: 'Roboto',),),
                  ));
                });
              }
            }
            else {
              setState(() {
                isProcessing = false;
                googleSignInProcessIndicator = googleLogo();
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('please select an account', style: TextStyle(fontFamily: 'Roboto',),),));
              });
            }
          } on FirebaseAuthException catch (e) {
            setState(() {
              isProcessing = false;
              googleSignInProcessIndicator = googleLogo();
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: const Text('Error signing you in!', style: TextStyle(fontFamily: 'Roboto',),),
                action: SnackBarAction(label: 'detail', onPressed: () => showErrorDetailsDialog(errorDescription: e.message!),),
              ));
            });
          } catch (e) {
            setState(() {
              isProcessing = false;
              googleSignInProcessIndicator = googleLogo();
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content: Text('Something went wrong, please try again.', style: TextStyle(fontFamily: 'Roboto',),),
              ));
            });
          }
        } on FirebaseAuthException catch (e) {
          setState(() {
            isProcessing = false;
            googleSignInProcessIndicator = googleLogo();
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: const Text('Error signing you in!', style: TextStyle(fontFamily: 'Roboto',),),
              action: SnackBarAction(label: 'detail', onPressed: () => showErrorDetailsDialog(errorDescription: e.message!),),
            ));
          });
        } catch (e) {
          setState(() {
            isProcessing = false;
            googleSignInProcessIndicator = googleLogo();
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text('poor internet connectivity', style: TextStyle(fontFamily: 'Roboto',),),
            ));
          });
        }
      }
    } catch (e) {
      setState(() {
        isProcessing = false;
        googleSignInProcessIndicator = googleLogo();
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('timeout, no internet access', style: TextStyle(fontFamily: 'Roboto',),),));
      });
    }
    isProcessing = false;
  }

  void checkInternetAccess() async {
    setState(() {
      // isProcessing = true;
      googleSignInProcessIndicator = processingIndicator();
    });
    if (await checkMyInitialConnectionState(context)) {
      if (isConnectedToNetwork) {
        if (!isProcessing) {
          signInWithGoogle();
        }
        else {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('please wait...', style: TextStyle(fontFamily: 'Roboto',),),));
        }
      }
      else {
        setState(() {
          googleSignInProcessIndicator = googleLogo();
        });
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('not connected to network', style: TextStyle(fontFamily: 'Roboto',),),));
      }
    } else {
      setState(() {
        // isProcessing = false;
        googleSignInProcessIndicator = googleLogo();
      });
    }
  }

  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarColor: Colors.transparent, statusBarIconBrightness: Brightness.dark));
    registerFirebaseAuthenticationStateChangeListeners();
    googleSignInProcessIndicator = googleLogo();
    checkMyInitialConnectionState(context);
    connectivitySubscription = connectivity.onConnectivityChanged.listen(checkMyConnectivity);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Image(
              /*height: 300,
              width: 300,*/
              fit: BoxFit.fill,
                image: AssetImage('assets/images/login.jpg')),
            Container(
              width: screenWidth * 0.8,
              height: 50,
              decoration: BoxDecoration(
                color: const Color(0xFFE2E2E2),
                borderRadius: BorderRadius.circular(25.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: googleSignInProcessIndicator,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () async {
                        // checkInternetAccess();
                        Navigator.pushReplacementNamed(context, HomeScreen.ROUTE_NAME);
                      },
                      child: Container(
                          alignment: Alignment.center,
                          child: const Text('SIGN IN WITH GOOGLE', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontFamily: 'Roboto'), softWrap: false,)),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: screenWidth,
              height: screenHeight * 0.1,
            ),
          ],
        ),
      ),
    );
  }
}