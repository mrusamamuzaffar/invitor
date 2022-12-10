import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:invitor/google_sign_in_screen/google_sign_in_ui.dart';
import 'package:invitor/home_screen/home_ui.dart';
import 'package:path_provider/path_provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  static const String ROUTE_NAME = 'SplashScreen';

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  void initializeFirebaseApp() async {
    await Firebase.initializeApp();
    await initGoogleMobAdSdk();
    checkSignInStatus();
  }

  void checkSignInStatus() async {
    (FirebaseAuth.instance.currentUser != null) ?
    Navigator.pushReplacementNamed(context, HomeScreen.ROUTE_NAME)
        :
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const MyGoogleSignIn(),));
  }

  Future<void> initGoogleMobAdSdk() async {
    WidgetsFlutterBinding.ensureInitialized();
    await MobileAds.instance.initialize();
    /*SchedulerBinding.instance!.addPostFrameCallback((_) {
      Navigator.pushReplacementNamed(context, HomeScreen.ROUTE_NAME);
    });*/
  }

  void storeWatermarkToApplicationDocumentDirectory() async {
    try {
      ByteData byteData = await rootBundle.load('assets/images/watermark.png');
      Directory appDocDir = await getApplicationDocumentsDirectory();
      File file = File('${appDocDir.path}/watermark.png');
      await file.create();
      await file.writeAsBytes(byteData.buffer.asUint8List());
    } on Exception {
    }
  }

  @override
  void initState() {
    initializeFirebaseApp();
    storeWatermarkToApplicationDocumentDirectory();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
      child: Image(
          height: 100,
          width: 100,
          fit: BoxFit.cover,
          image: AssetImage('assets/images/invitor_logo.png')),
    ));
  }
}
