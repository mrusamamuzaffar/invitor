import 'package:flutter/material.dart';
import 'package:invitor/data_collection_screen/data_collection_ui.dart';
import 'package:invitor/home_screen/home_behavior.dart';
import 'package:invitor/sub_category_selection_screen/sub_category_selection_portion/sub_category_selection_button.dart';
import 'package:provider/provider.dart';

import '../sub_category_selection_behavior.dart';

class BabiesAndKidsSubCategorySelectionPortion extends StatefulWidget {

  const BabiesAndKidsSubCategorySelectionPortion({Key? key}) : super(key: key);

  @override
  _BabiesAndKidsSubCategorySelectionPortionState createState() => _BabiesAndKidsSubCategorySelectionPortionState();
}

class _BabiesAndKidsSubCategorySelectionPortionState extends State<BabiesAndKidsSubCategorySelectionPortion> {
  EdgeInsetsGeometry margin = EdgeInsets.only(top: ((screenHeight! * 0.70) * 0.033), bottom: ((screenHeight! * 0.70) * 0.033));
  double height = (screenHeight! * 0.70) * 0.115, width = screenWidth! * 0.370;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Selector<SubCategorySelectionChangeNotifier, double?>(
              shouldRebuild: (previous, next) => previous != next,
              selector: (context, dataCollectionScreenChangeNotifier) =>
              subCategorySelectionChangeNotifier.subCategorySelectionButtonChangeNotifierMap[subCategorySelectionButtonTextList[0]],
              builder: (context, value, child) => SubCategorySelectionButton(
                text: subCategorySelectionButtonTextList[0],
                routeName: DataCollection.ROUTE_NAME,
                width: width,
                margin: margin,
                height: height,
                numberOfCards: '2 cards',
                duration: (animationSpeedController * 0.085).toInt(),
                visibility: subCategorySelectionButtonVisibilityMap![subCategorySelectionButtonTextList[0]]!,
              ),
            ),
            Selector<SubCategorySelectionChangeNotifier, double?>(
              shouldRebuild: (previous, next) => previous != next,
              selector: (context, dataCollectionScreenChangeNotifier) =>
              subCategorySelectionChangeNotifier.subCategorySelectionButtonChangeNotifierMap[subCategorySelectionButtonTextList[2]],
              builder: (context, value, child) => SubCategorySelectionButton(
                text: subCategorySelectionButtonTextList[2],
                routeName: DataCollection.ROUTE_NAME,
                width: width,
                margin: margin,
                height: height,
                numberOfCards: '1 card',
                duration: (animationSpeedController * 0.120).toInt(),
                visibility: subCategorySelectionButtonVisibilityMap![subCategorySelectionButtonTextList[2]]!,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Selector<SubCategorySelectionChangeNotifier, double?>(
              shouldRebuild: (previous, next) => previous != next,
              selector: (context, dataCollectionScreenChangeNotifier) =>
              subCategorySelectionChangeNotifier.subCategorySelectionButtonChangeNotifierMap[subCategorySelectionButtonTextList[3]],
              builder: (context, value, child) => SubCategorySelectionButton(
                text: subCategorySelectionButtonTextList[3],
                routeName: DataCollection.ROUTE_NAME,
                width: width,
                margin: margin,
                height: height,
                numberOfCards: '3 cards',
                duration: (animationSpeedController * 0.120).toInt(),
                visibility: subCategorySelectionButtonVisibilityMap![subCategorySelectionButtonTextList[3]]!,
              ),
            ),
            Selector<SubCategorySelectionChangeNotifier, double?>(
              shouldRebuild: (previous, next) => previous != next,
              selector: (context, dataCollectionScreenChangeNotifier) =>
              subCategorySelectionChangeNotifier.subCategorySelectionButtonChangeNotifierMap[subCategorySelectionButtonTextList[4]],
              builder: (context, value, child) => SubCategorySelectionButton(
                text: subCategorySelectionButtonTextList[4],
                routeName: DataCollection.ROUTE_NAME,
                width: width,
                margin: margin,
                height: height,
                numberOfCards: '3 cards',
                duration: (animationSpeedController * 0.155).toInt(),
                visibility: subCategorySelectionButtonVisibilityMap![subCategorySelectionButtonTextList[4]]!,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Selector<SubCategorySelectionChangeNotifier, double?>(
              shouldRebuild: (previous, next) => previous != next,
              selector: (context, dataCollectionScreenChangeNotifier) =>
              subCategorySelectionChangeNotifier.subCategorySelectionButtonChangeNotifierMap[subCategorySelectionButtonTextList[5]],
              builder: (context, value, child) => SubCategorySelectionButton(
                text: subCategorySelectionButtonTextList[5],
                routeName: DataCollection.ROUTE_NAME,
                width: width,
                margin: margin,
                height: height,
                numberOfCards: '2 cards',
                duration: (animationSpeedController * 0.155).toInt(),
                visibility: subCategorySelectionButtonVisibilityMap![subCategorySelectionButtonTextList[5]]!,
              ),
            ),
            Selector<SubCategorySelectionChangeNotifier, double?>(
              shouldRebuild: (previous, next) => previous != next,
              selector: (context, dataCollectionScreenChangeNotifier) =>
              subCategorySelectionChangeNotifier.subCategorySelectionButtonChangeNotifierMap[subCategorySelectionButtonTextList[6]],
              builder: (context, value, child) => SubCategorySelectionButton(
                text: subCategorySelectionButtonTextList[6],
                routeName: DataCollection.ROUTE_NAME,
                width: width,
                margin: margin,
                height: height,
                numberOfCards: '3 cards',
                duration: (animationSpeedController * 0.190).toInt(),
                visibility: subCategorySelectionButtonVisibilityMap![subCategorySelectionButtonTextList[6]]!,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Selector<SubCategorySelectionChangeNotifier, double?>(
              shouldRebuild: (previous, next) => previous != next,
              selector: (context, dataCollectionScreenChangeNotifier) =>
              subCategorySelectionChangeNotifier.subCategorySelectionButtonChangeNotifierMap[subCategorySelectionButtonTextList[7]],
              builder: (context, value, child) => SubCategorySelectionButton(
                text: subCategorySelectionButtonTextList[7],
                routeName: DataCollection.ROUTE_NAME,
                width: width,
                margin: margin,
                height: height,
                numberOfCards: '3 cards',
                duration: (animationSpeedController * 0.190).toInt(),
                visibility: subCategorySelectionButtonVisibilityMap![subCategorySelectionButtonTextList[7]]!,
              ),
            ),
            Selector<SubCategorySelectionChangeNotifier, double?>(
              shouldRebuild: (previous, next) => previous != next,
              selector: (context, dataCollectionScreenChangeNotifier) =>
              subCategorySelectionChangeNotifier.subCategorySelectionButtonChangeNotifierMap[subCategorySelectionButtonTextList[8]],
              builder: (context, value, child) => SubCategorySelectionButton(
                text: subCategorySelectionButtonTextList[8],
                routeName: DataCollection.ROUTE_NAME,
                width: width,
                margin: margin,
                height: height,
                numberOfCards: '1 card',
                duration: (animationSpeedController * 0.225).toInt(),
                visibility: subCategorySelectionButtonVisibilityMap![subCategorySelectionButtonTextList[8]]!,
              ),
            ),
          ],
        ),
        Selector<SubCategorySelectionChangeNotifier, double?>(
          shouldRebuild: (previous, next) => previous != next,
          selector: (context, dataCollectionScreenChangeNotifier) =>
          subCategorySelectionChangeNotifier.subCategorySelectionButtonChangeNotifierMap[subCategorySelectionButtonTextList[9]],
          builder: (context, value, child) => SubCategorySelectionButton(
            text: subCategorySelectionButtonTextList[9],
            routeName: DataCollection.ROUTE_NAME,
            width: width,
            margin: margin,
            height: height,
            numberOfCards: '3 cards',
            duration: (animationSpeedController * 0.225).toInt(),
            visibility: subCategorySelectionButtonVisibilityMap![subCategorySelectionButtonTextList[9]]!,
          ),
        ),
      ],
    );
  }
}
