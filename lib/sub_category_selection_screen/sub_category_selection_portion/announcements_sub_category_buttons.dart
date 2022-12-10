import 'package:flutter/material.dart';
import 'package:invitor/data_collection_screen/data_collection_ui.dart';
import 'package:invitor/home_screen/home_behavior.dart';
import 'package:invitor/sub_category_selection_screen/sub_category_selection_portion/sub_category_selection_button.dart';
import 'package:provider/provider.dart';

import '../sub_category_selection_behavior.dart';

class AnnouncementsSubCategorySelectionPortion extends StatefulWidget {

  const AnnouncementsSubCategorySelectionPortion({Key? key}) : super(key: key);

  @override
  _AnnouncementsSubCategorySelectionPortionState createState() => _AnnouncementsSubCategorySelectionPortionState();
}

class _AnnouncementsSubCategorySelectionPortionState extends State<AnnouncementsSubCategorySelectionPortion> {
  EdgeInsetsGeometry margin = const EdgeInsets.all(0);
  double height = 0.0, width = 0.0;

  @override
  Widget build(BuildContext context) {
    margin = EdgeInsets.only(top: ((screenHeight! * 0.70) * 0.01), bottom: ((screenHeight! * 0.70) * 0.01));
    height = (screenHeight! * 0.70) * 0.100;
    width = screenWidth! * 0.75;

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Selector<SubCategorySelectionChangeNotifier, double?>(
          shouldRebuild: (previous, next) => previous != next,
          selector: (context, dataCollectionScreenChangeNotifier) =>
          subCategorySelectionChangeNotifier.subCategorySelectionButtonChangeNotifierMap[subCategorySelectionButtonTextList[0]],
          builder: (context, value, child) => SubCategorySelectionButton(
            text: subCategorySelectionButtonTextList[0],
            routeName: DataCollection.ROUTE_NAME,
            height: height,
            width: width,
            margin: margin,
            numberOfCards: '2 cards',
            duration: (animationSpeedController * 0.085).toInt(),
            visibility: subCategorySelectionButtonVisibilityMap![subCategorySelectionButtonTextList[0]]!,
          ),
        ),
        Selector<SubCategorySelectionChangeNotifier, double?>(
          shouldRebuild: (previous, next) => previous != next,
          selector: (context, dataCollectionScreenChangeNotifier) =>
          subCategorySelectionChangeNotifier.subCategorySelectionButtonChangeNotifierMap[subCategorySelectionButtonTextList[1]],
          builder: (context, value, child) => SubCategorySelectionButton(
            text: subCategorySelectionButtonTextList[1],
            routeName: DataCollection.ROUTE_NAME,
            margin: margin,
            height: height,
            width: width,
            numberOfCards: '3 cards',
            duration: (animationSpeedController * 0.120).toInt(),
            visibility: subCategorySelectionButtonVisibilityMap![subCategorySelectionButtonTextList[1]]!,
          ),
        ),
        Selector<SubCategorySelectionChangeNotifier, double?>(
          shouldRebuild: (previous, next) => previous != next,
          selector: (context, dataCollectionScreenChangeNotifier) =>
          subCategorySelectionChangeNotifier.subCategorySelectionButtonChangeNotifierMap[subCategorySelectionButtonTextList[2]],
          builder: (context, value, child) => SubCategorySelectionButton(
            text: subCategorySelectionButtonTextList[2],
            routeName: DataCollection.ROUTE_NAME,
            margin: margin,
            height: height,
            width: width,
            numberOfCards: '3 cards',
            duration: (animationSpeedController * 0.155).toInt(),
            visibility: subCategorySelectionButtonVisibilityMap![subCategorySelectionButtonTextList[2]]!,
          ),
        ),
        Selector<SubCategorySelectionChangeNotifier, double?>(
          shouldRebuild: (previous, next) => previous != next,
          selector: (context, dataCollectionScreenChangeNotifier) =>
          subCategorySelectionChangeNotifier.subCategorySelectionButtonChangeNotifierMap[subCategorySelectionButtonTextList[3]],
          builder: (context, value, child) => SubCategorySelectionButton(
            text: subCategorySelectionButtonTextList[3],
            routeName: DataCollection.ROUTE_NAME,
            height: height,
            width: width,
            margin: margin,
            numberOfCards: '2 cards',
            duration: (animationSpeedController * 0.190).toInt(),
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
            height: height,
            width: width,
            margin: margin,
            numberOfCards: '2 cards',
            duration: (animationSpeedController * 0.225).toInt(),
            visibility: subCategorySelectionButtonVisibilityMap![subCategorySelectionButtonTextList[4]]!,
          ),
        ),
        Selector<SubCategorySelectionChangeNotifier, double?>(
          shouldRebuild: (previous, next) => previous != next,
          selector: (context, dataCollectionScreenChangeNotifier) =>
          subCategorySelectionChangeNotifier.subCategorySelectionButtonChangeNotifierMap[subCategorySelectionButtonTextList[5]],
          builder: (context, value, child) => SubCategorySelectionButton(
            text: subCategorySelectionButtonTextList[5],
            routeName: DataCollection.ROUTE_NAME,
            height: height,
            width: width,
            margin: margin,
            numberOfCards: '2 cards',
            duration: (animationSpeedController * 0.260).toInt(),
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
            height: height,
            width: width,
            margin: margin,
            numberOfCards: '3 cards',
            duration: (animationSpeedController * 0.295).toInt(),
            visibility: subCategorySelectionButtonVisibilityMap![subCategorySelectionButtonTextList[6]]!,
          ),
        ),
        Selector<SubCategorySelectionChangeNotifier, double?>(
          shouldRebuild: (previous, next) => previous != next,
          selector: (context, dataCollectionScreenChangeNotifier) =>
          subCategorySelectionChangeNotifier.subCategorySelectionButtonChangeNotifierMap[subCategorySelectionButtonTextList[7]],
          builder: (context, value, child) => SubCategorySelectionButton(
            text: subCategorySelectionButtonTextList[7],
            routeName: DataCollection.ROUTE_NAME,
            height: height,
            width: width,
            margin: margin,
            numberOfCards: '3 cards',
            duration: (animationSpeedController * 0.330).toInt(),
            visibility: subCategorySelectionButtonVisibilityMap![subCategorySelectionButtonTextList[7]]!,
          ),
        ),
      ],
    );
  }
}
