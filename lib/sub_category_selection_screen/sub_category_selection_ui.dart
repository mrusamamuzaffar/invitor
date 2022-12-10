import 'package:flutter/material.dart';
import 'package:invitor/data_collection_screen/data_collection_behavior.dart';
import 'package:invitor/home_screen/home_behavior.dart';
import 'package:invitor/home_screen/home_ui.dart';
import 'package:invitor/sub_category_selection_screen/sub_category_selection_behavior.dart';
import 'package:invitor/sub_category_selection_screen/sub_category_selection_portion_provider.dart';
import 'package:provider/provider.dart';


class SubCategorySelection extends StatefulWidget {
  const SubCategorySelection({Key? key, this.categoryTitleHeroText}) : super(key: key);

  static const String ROUTE_NAME = 'MySubCategorySelection';
  final categoryTitleHeroText;



  @override
  _SubCategorySelectionState createState() => _SubCategorySelectionState();
}

class _SubCategorySelectionState extends State<SubCategorySelection> with HomeScreenBehavior, DataCollectionBehavior, TickerProviderStateMixin, SubCategorySelectionBehavior {


  Widget appBarAction(IconData icon, AppbarCallback onTap) => GestureDetector(
    onTap: onTap,
    child: Padding(
      padding: EdgeInsets.only(left: appBarIconPadding!),
      child: Icon(icon, color: Colors.black),
    ),
  );

  Widget eventTitlePortion() {
    return Container(
      alignment: Alignment.centerLeft,
      height: screenHeight! * 0.20,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Hero(
            tag: heroTag + 'Background',
            child: Opacity(
              opacity: backgroundTextOpacity,
              child: Material(
                textStyle: TextStyle(
                  color: Colors.black,
                  fontFamily: 'PlayfairDisplay',
                  fontSize: screenWidth! * 0.115,
                ),
                color: Colors.transparent,
                child: Text(
                  widget.categoryTitleHeroText,
                  maxLines: 1,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: screenWidth! * 0.0433, top: screenWidth! * 0.049),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Hero(
                  tag: heroTag,
                  child: Material(
                    textStyle: TextStyle(
                      fontSize: screenWidth! * 0.054,
                      color: Colors.black,
                      fontFamily: 'PlayfairDisplay',
                    ),
                    color: Colors.transparent,
                    child: Text(
                      widget.categoryTitleHeroText,
                      maxLines: 1,
                    ),
                  ),
                ),
                Selector<SubCategorySelectionChangeNotifier, bool>(
                  shouldRebuild: (previous, next) => previous != next,
                  selector: (context, subCategorySelectionChangeNotifier) =>
                  subCategorySelectionChangeNotifier.verticalTextVisibility,
                  builder: (context, verticalTextVisibility, child) =>
                      Visibility(
                        visible: verticalTextVisibility,
                        maintainState: true,
                        maintainAnimation: true,
                        maintainSize: true,
                        child: Text(
                          numberOfMainCategoryCards,
                          style: TextStyle(
                              fontSize: cardTextFontSize, color: const Color(0xff6c6c6c)),
                        ),
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void initializeTextFieldShakingAnimationControllerMap() {
    for (String hintText in hintTextList) {
      textFieldShakingAnimationControllerMap[hintText] = AnimationController(
          vsync: this,
          duration: Duration(
              milliseconds: (animationSpeedController * 0.025).toInt()));
    }
  }

  @override
  void initState() {
    subCategorySelectionChangeNotifier = Provider.of<SubCategorySelectionChangeNotifier>(context, listen: false);
    subCategorySelectionImageAnimationController = AnimationController(vsync: this, duration: Duration(milliseconds: (animationSpeedController * 0.25).toInt()));

    subCategorySelectionImageAnimation = Tween<Offset>(begin: Offset(-(screenWidth! * 0.6112), 0), end: Offset(-(screenWidth! * 0.45) / 2, 0))
        .animate(subCategorySelectionImageAnimationController!)..addListener(() {
        subCategorySelectionChangeNotifier.imageChangeNotifier = subCategorySelectionImageAnimation!.value.dx;
      });

    subCategorySelectionImageAnimationController!.forward();

    initializeSubCategorySelectionButtonTextList(listTitle: widget.categoryTitleHeroText);
    initializeSubCategorySelectionButtonVisibilityMap();
    subCategorySelectionChangeNotifier.initializeSubCategorySelectionButtonChangeNotifierMap();
    checkVibrationAvailability();

    super.initState();
  }

  @override
  void dispose() {
    subCategorySelectionImageAnimationController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    isSubCategorySelectionBeingPopped = false;

    eventCategoriesVisibility = true;

    Future.delayed(
        Duration(milliseconds: (animationSpeedController * 0.10).toInt()), () {
      subCategorySelectionChangeNotifier.verticalTextVisibility = true;
    });

    initValues();

    return WillPopScope(
      onWillPop: () {
        int durationIncrement = 0;
        categoryTitleForVisibilityController = '';
        subCategorySelectionImageAnimationController!.reverse();
        isSubCategorySelectionBeingPopped = true;

        for (int i = subCategorySelectionButtonTextList.length - 1; i >= 0; i--) {
          durationIncrement += 1;
          Future.delayed(Duration(milliseconds: (animationSpeedController * 0.035).toInt() * durationIncrement), () {
            subCategorySelectionButtonVisibilityMap![subCategorySelectionButtonTextList[i]] = false;
            subCategorySelectionChangeNotifier.subCategorySelectionButtonChangeNotifierMap[subCategorySelectionButtonTextList[i]] = i.toDouble();
            subCategorySelectionChangeNotifier.notify();
          });
        }
        subCategorySelectionChangeNotifier.verticalTextVisibility = false;
        Navigator.pop(context);
        animationController!.reverse();
        return Future.value(true);
      },
      child: Scaffold(
        resizeToAvoidBottomInset: true,
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
          /*actions: <Widget>[
            appBarAction(Icons.favorite_border_sharp, () {}),
            appBarAction(Icons.shopping_cart_outlined, () {}),
            Padding(
              padding: EdgeInsets.only(right: appBarIconPadding!),
              child: appBarAction(Icons.person_outline_outlined, () {}),
            ),
          ],*/
        ),
        body: GestureDetector(
          onTap: () {
            FocusScope.of(context).requestFocus(FocusNode());
          },
          child: SingleChildScrollView(
            controller: scrollController,
            physics: scrollPhysics,
            child: Stack(
              children: [
                Container(
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
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                width: screenWidth! * 0.20,
                                height: screenHeight! / 3.0,
                              ),
                              Container(
                                width: screenWidth! * 0.20,
                                height: screenHeight! / 3.0,
                                alignment: Alignment.topCenter,
                                child: RotatedBox(
                                  quarterTurns: -1,
                                  child: Selector<
                                      SubCategorySelectionChangeNotifier, bool>(
                                    shouldRebuild: (previous, next) =>
                                    previous != next,
                                    selector: (context,
                                        subCategorySelectionChangeNotifier) =>
                                    subCategorySelectionChangeNotifier
                                        .verticalTextVisibility,
                                    builder: (context, verticalTextVisibility,
                                        child) => Visibility(
                                          visible: verticalTextVisibility,
                                          child: Text(
                                            'Select event category',
                                            style: TextStyle(
                                                fontSize: screenWidth! * 0.051),
                                          ),
                                        ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: screenHeight! * 0.20,
                                  width: screenWidth! * 0.75,
                                  child: eventTitlePortion(),
                                ),
                                Selector<SubCategorySelectionChangeNotifier, bool>(
                                  shouldRebuild: (previous, next) => previous != next,
                                  selector: (context,
                                      subCategorySelectionChangeNotifier) =>
                                  subCategorySelectionChangeNotifier
                                      .verticalTextVisibility,
                                  builder: (context, verticalTextVisibility, child) => Visibility(
                                    visible: eventCategoriesVisibility,
                                    child: SizedBox(
                                      height: screenHeight! * 0.70,
                                      width: screenWidth! * 0.75,
                                      // color: Colors.amberAccent,
                                      child: fetchSubCategorySelectionPortion(),
                                    ),
                                  ),
                                ),
                              ]),
                        ],
                      ),
                    ],
                  ),
                ),

                Selector<SubCategorySelectionChangeNotifier, double>(
                  shouldRebuild: (previous, next) => previous != next,
                  selector: (context, subCategorySelectionChangeNotifier) =>
                  subCategorySelectionChangeNotifier.imageChangeNotifier,
                  builder: (context, animationValue, child) => Transform(
                    alignment: Alignment.center,
                    transform: Matrix4.identity()
                      ..setEntry(3, 2, 0.001)
                      ..translate(
                        animationValue,
                      ),
                    child: Image(
                      width: screenWidth! * 0.50,
                      height: screenWidth! * 0.45,
                      fit: BoxFit.fill,
                      image: AssetImage(mainCategoryIconPath),
                      alignment: Alignment.centerLeft,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}