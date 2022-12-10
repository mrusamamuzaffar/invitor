import 'package:flutter/material.dart';
import 'package:invitor/home_screen/home_behavior.dart';
import 'package:invitor/splash_screen/splash_behavior.dart';
import 'package:invitor/sub_category_selection_screen/sub_category_selection_behavior.dart';

class SubCategorySelectionButton extends StatelessWidget with SubCategorySelectionBehavior {
  bool visibility = false;
  String text = '',  numberOfCards = '';
  double width = 0.0, height = 0.0;
  String routeName = '';
  EdgeInsetsGeometry margin = const EdgeInsets.all(0.0);
  int duration = 0;

  SubCategorySelectionButton({Key? key, this.height = 0.0, this.margin = const EdgeInsets.all(0.0), this.visibility = false, this.text = '', this.width = 0.0, this.duration = 0, this.routeName = '', this.numberOfCards = '-- cards'}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    if (!isSubCategorySelectionBeingPopped) {
      Future.delayed(Duration(milliseconds: duration), () {
        subCategorySelectionButtonVisibilityMap![text] = true;
        subCategorySelectionChangeNotifier.subCategorySelectionButtonChangeNotifierMap[text] = duration.toDouble();
        subCategorySelectionChangeNotifier.notify();
      });
    }

    if (subCategorySelectionButtonTextList.last.contains(text)) {
      isSubCategorySelectionBeingPopped = true;
    }

    return Visibility(
      visible: subCategorySelectionButtonVisibilityMap![text]!,
      child: GestureDetector(
        onTap: () {
          numberOfSubCategoryCards = numberOfCards;
          eventCategoriesVisibility = false;
          subCategorySelectionChangeNotifier.eventCategoriesVisibilityChangeNotifier = false;
          subCategoryTitle = text;
          Navigator.pushNamed(context, routeName,);
        },
        child: Container(
          margin: margin,
          height: height,
          width: width,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 0.5,),
            borderRadius: BorderRadius.circular(((screenHeight! * 0.70) * 0.12)/2),
            color: const Color(0XFFEBEBEB),
          ),
          child: Center(
            child: Text(text, style: TextStyle(fontSize: screenWidth! * 0.0408,),textAlign: TextAlign.center,),
          ),
        ),
      ),
    );
  }
}


