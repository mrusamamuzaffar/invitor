import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:invitor/card_customization_screen/card_customization_behavior.dart';
import 'package:invitor/data_collection_screen/data_collection_behavior.dart';
import 'package:invitor/home_screen/home_behavior.dart';
import 'package:invitor/routes.dart';
import 'package:invitor/splash_screen/splash_ui.dart';
import 'package:invitor/sub_category_selection_screen/sub_category_selection_behavior.dart';
import 'package:provider/provider.dart';
import 'animation_to_video_screen/animation_to_video_behavior.dart';


void main()  {

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark
  ));

  /*SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);*/

  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<HomeScreenChangeNotifier>(create: (context) => HomeScreenChangeNotifier(),),
      ChangeNotifierProvider<SubCategorySelectionChangeNotifier>(create: (context) => SubCategorySelectionChangeNotifier(),),
      ChangeNotifierProvider<DataCollectionScreenChangeNotifier>(create: (context) => DataCollectionScreenChangeNotifier(),),
      ChangeNotifierProvider<CardCustomizationScreenChangeNotifier>(create: (context) => CardCustomizationScreenChangeNotifier(),),
      ChangeNotifierProvider<AnimationProgressStatusChangeNotifier>(create: (context) => AnimationProgressStatusChangeNotifier(),)
    ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'PlayfairDisplay', colorScheme: ColorScheme.fromSwatch().copyWith(secondary: const Color(0xfffbfbfb))),
      initialRoute: SplashScreen.ROUTE_NAME,
      onGenerateRoute: generateRoutes,
      home: const SplashScreen(),
      title: 'Invitor App',
    ),
  ));
}