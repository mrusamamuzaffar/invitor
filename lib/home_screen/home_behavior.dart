import 'package:flutter/material.dart';
import 'package:invitor/home_screen/home_ui.dart';

/// declare a typedef to be used in rowView() as a general closure to be
/// used in onTap of GestureDetector Widget, which is declared in [HomeScreen]
typedef OnTap = void Function();

// declare a integer variable to control the overall animation speed of the application
// all animation durations are calculated as a percentage from this factor
int animationSpeedController = 2000;

/// declare a variable to translate the text and images of [HomeScreen], outside the screen
Animation<Offset>? animation;

/// declare a variable to control the animation of text and images of [HomeScreen]
AnimationController? animationController;

double backgroundTextOpacity = 0.0;
double? screenWidth, screenHeight;

String categoryTitleForVisibilityController = '', mainCategoryIconPath = '',  numberOfMainCategoryCards = '', numberOfSubCategoryCards = '', rootDirectory = '';

class HomeScreenBehavior {
  static String heroTag = '';

  String categoryTitle = '';

  Offset? offsetImage,
      offsetCategoryTitle,
      offsetBackgroundTitle,
      offsetCardText;

  bool isAnimationInitialized = false;

  HomeScreenChangeNotifier? homeScreenChangeNotifier;

  double? ringHeight = 120,
      ringWidth = 120,
      cardTextFontSize,
      animatedHeight = 0.0,
      animatedWidth = 0.0,
      rowViewMainContainerWidth,
      rowViewMainContainerHeight,
      appBarIconPadding,
      appBarLeadingWidth,
      mainContainerTopLeftRadius,
      appBarTitleLeftPadding,
      opacity = 0.0;

  void initValues() {
    appBarIconPadding = screenWidth! * 0.051;
    appBarLeadingWidth = screenWidth! * 0.0765;
    mainContainerTopLeftRadius = screenWidth! * 0.3;
    appBarTitleLeftPadding = screenWidth! * 0.028;
    rowViewMainContainerHeight = screenWidth! * 0.46;
    cardTextFontSize = screenWidth! * 0.033;
    rowViewMainContainerWidth = screenWidth;
  }

  void initAnimationValues() {
    opacity = 1.0;
    backgroundTextOpacity = 0.05;
    ringHeight = rowViewMainContainerHeight! * 0.80;
    ringWidth = rowViewMainContainerHeight! * 0.80;
    isAnimationInitialized = true;
  }
}

class HomeScreenChangeNotifier extends ChangeNotifier {
  void homeScreenNotifyChange() {
    notifyListeners();
  }
}
