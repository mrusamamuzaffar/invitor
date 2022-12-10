import 'package:flutter/material.dart';
import 'package:invitor/contacts_screen/contacts_ui.dart';
import 'package:invitor/data_collection_screen/data_collection_ui.dart';
import 'package:invitor/gallery_screen/gallery_ui.dart';
import 'package:invitor/home_screen/home_ui.dart';
import 'package:invitor/splash_screen/splash_ui.dart';
import 'package:invitor/sub_category_selection_screen/sub_category_selection_ui.dart';

import 'animation_to_video_screen/animation_to_video_ui.dart';
import 'card_collection_screen/card_collection_ui.dart';
import 'card_customization_screen/card_customization_behavior.dart';
import 'card_customization_screen/card_customization_ui.dart';
import 'google_sign_in_screen/google_sign_in_ui.dart';
import 'home_screen/home_behavior.dart';

Route<dynamic> generateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case SplashScreen.ROUTE_NAME:
      {
        return MaterialPageRoute(
          builder: (context) => const SplashScreen(),
        );
       /* PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              SplashScreen(),
          transitionDuration: const Duration(milliseconds: (animationSpeedController * 0.005).toInt()),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return ScaleTransition(
              alignment: Alignment.center,
              scale: animation,
              child: child,
            );
          },
        );*/
      }
    case HomeScreen.ROUTE_NAME:
      {
        return PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) =>
                const HomeScreen(),
            transitionDuration: Duration(milliseconds: (animationSpeedController * 0.15).toInt()),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              /*Tween<Offset> homeTransitionTween =
                  Tween<Offset>(begin: Offset(0, 1), end: Offset(0, 0));*/
              return FadeTransition(
                opacity: animation,
                child: child,
              );
            });
      }
    case SubCategorySelection.ROUTE_NAME:
      {
        String categoryTitle  = settings.arguments.toString();
        return PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) =>
                SubCategorySelection(categoryTitleHeroText: categoryTitle,),
            transitionDuration: Duration(milliseconds: (animationSpeedController * 0.25).toInt()),
            reverseTransitionDuration: Duration(milliseconds: (animationSpeedController * 0.25).toInt()),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return FadeTransition(
                opacity: animation,
                child: child,
              );
            });
      }
    case DataCollection.ROUTE_NAME:
      {
        return PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) => const DataCollection(),
            transitionDuration: Duration(milliseconds: (animationSpeedController * 0.15).toInt()),
            reverseTransitionDuration: Duration(milliseconds: (animationSpeedController * 0.25).toInt()),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              /*Tween<Offset> homeTransitionTween =
                  Tween<Offset>(begin: Offset(0, 1), end: Offset(0, 0));*/
              return FadeTransition(
                opacity: animation,
                child: child,
              );
            });
      }
    case ContactsScreen.ROUTE_NAME : {
      return MaterialPageRoute(
        builder: (context) => const ContactsScreen(),
      );
    }
    case CardCollectionGridViewScreen.ROUTE_NAME : {
      return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) => const CardCollectionGridViewScreen(),
          transitionDuration: Duration(milliseconds: (animationSpeedController * 0.25).toInt()),
          reverseTransitionDuration: Duration(milliseconds: (animationSpeedController * 0.25).toInt()),
          transitionsBuilder:
              (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          });
    }
    case CardCustomizationScreen.ROUTE_NAME : {
      return MaterialPageRoute(
        builder: (context) => CardCustomizationScreen(cardCategoryProvider: settings.arguments as CardCategoryProvider),
      );
    }
    case AnimationToVideoScreen.ROUTE_NAME : {
      return MaterialPageRoute(
        builder: (context) => const AnimationToVideoScreen(),
      );
    }
    case GalleryScreen.ROUTE_NAME : {
      return MaterialPageRoute(
        builder: (context) => const GalleryScreen(),
      );
    }
    case MyGoogleSignIn.ROUTE_NAME : {
      return MaterialPageRoute(
        builder: (context) => const MyGoogleSignIn(),
      );
    }
    default:
      {
        return MaterialPageRoute(
          builder: (context) => Container(),
        );
      }
  }
}
