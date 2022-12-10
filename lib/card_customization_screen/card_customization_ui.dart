import 'package:flutter/material.dart';
import 'package:invitor/animation_to_video_screen/animation_to_video_ui.dart';
import 'package:invitor/home_screen/home_behavior.dart';
import 'package:provider/provider.dart';
import 'card_customization_behavior.dart';

class CardCustomizationScreen extends StatefulWidget {
  static const String ROUTE_NAME = 'CardCustomizationScreen';

  CardCustomizationScreen({Key? key, required this.cardCategoryProvider})
      : super(key: key);

  CardCategoryProvider cardCategoryProvider;

  @override
  _CardCustomizationScreenState createState() =>
      _CardCustomizationScreenState();
}

class _CardCustomizationScreenState extends State<CardCustomizationScreen>
    with CardCustomizationBehavior, TickerProviderStateMixin {
  Widget bottomSheetHeaderItem(
      {required IconData icon, required String title, required Color color}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(
          icon,
          color: color,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 4),
          child: Text(
            title,
            style: TextStyle(
                fontFamily: 'Roboto',
                fontWeight: FontWeight.bold,
                color: color),
          ),
        ),
      ],
    );
  }

  Widget bottomSheetFontChild() {
    return AnimatedContainer(
      duration: const Duration(
          milliseconds: CardCustomizationBehavior
              .cardCustomizationScreenAnimationSpeedController),
      height: bottomSheetFontChildHeight,
      child: Selector<CardCustomizationScreenChangeNotifier, String>(
        shouldRebuild: (previous, next) => previous != next,
        selector: (context, cardCustomizationScreenChangeNotifier) =>
            cardCustomizationScreenChangeNotifier.fontStyle,
        builder: (context, fontStyle, child) => ListView(
          physics: const BouncingScrollPhysics(),
          controller: fontListScrollController,
          children: [
            for (int i = 0; i < fontNameList.length; i++)
              GestureDetector(
                onTap: () {
                  indexOfFont = i;
                  cardCustomizationScreenChangeNotifier.fontStyle =
                      fontNameList[i];
                  cardCustomizationDataModelList[containerIndex].fontStyle =
                      fontNameList[i];
                  cardCustomizationScreenChangeNotifier
                              .cardCustomizationSelectorControllerList[
                          containerIndex] =
                      !(cardCustomizationScreenChangeNotifier
                              .cardCustomizationSelectorControllerList[
                          containerIndex]);
                  cardCustomizationScreenChangeNotifier.myNotify();
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 36,
                  color: indexOfFont == i
                      ? const Color(0xFFF9F9FB)
                      : Colors.transparent,
                  child: Text(
                    fontNameList[i],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: fontNameList[i].replaceAll(' ', ''),
                      color: indexOfFont == i
                          ? const Color(0xFF22D28B)
                          : Colors.black,
                      fontSize: 17,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget bottomSheetSizeChild() {
    return AnimatedContainer(
      duration: const Duration(
          milliseconds: CardCustomizationBehavior
              .cardCustomizationScreenAnimationSpeedController),
      height: bottomSheetSizeChildHeight,
      width: screenWidth,
      child: Center(
        child: SingleChildScrollView(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  if (cardCustomizationScreenChangeNotifier
                          .bottomSheetSizeSliderValue >
                      7) {
                    cardCustomizationScreenChangeNotifier
                        .bottomSheetSizeSliderValue -= 1;
                    cardCustomizationDataModelList[containerIndex].fontSize -=
                        1;
                    cardCustomizationScreenChangeNotifier
                                .cardCustomizationSelectorControllerList[
                            containerIndex] =
                        !(cardCustomizationScreenChangeNotifier
                                .cardCustomizationSelectorControllerList[
                            containerIndex]);
                  }
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'A',
                      style: TextStyle(
                        fontSize: 13,
                        fontFamily: 'Roboto',
                        color: Colors.black54,
                      ),
                    ),
                    Icon(Icons.arrow_drop_down_sharp, color: Colors.black54),
                  ],
                ),
              ),
              AnimatedContainer(
                duration: const Duration(
                    milliseconds: CardCustomizationBehavior
                        .cardCustomizationScreenAnimationSpeedController),
                width: screenWidth! * 0.70,
                child: Selector<CardCustomizationScreenChangeNotifier, int>(
                  shouldRebuild: (previous, next) => previous != next,
                  selector: (context, cardCustomizationScreenChangeNotifier) =>
                      cardCustomizationScreenChangeNotifier
                          .bottomSheetSizeSliderValue,
                  builder: (context, bottomSheetSizeSliderValue, child) =>
                      SliderTheme(
                    data: const SliderThemeData(
                        activeTrackColor: Colors.black12,
                        inactiveTrackColor: Colors.black12,
                        valueIndicatorColor: Colors.black,
                        trackHeight: 3,
                        thumbShape: RoundSliderThumbShape(
                            elevation: 3, pressedElevation: 10),
                        trackShape: RectangularSliderTrackShape(),
                        overlayShape: RoundSliderOverlayShape(
                          overlayRadius: 0.0,
                        ),
                        valueIndicatorTextStyle: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Roboto'),
                        thumbColor: Colors.white),
                    child: Slider(
                      onChanged: (newFontSize) {
                        cardCustomizationScreenChangeNotifier
                            .bottomSheetSizeSliderValue = newFontSize.toInt();
                        cardCustomizationDataModelList[containerIndex]
                            .fontSize = newFontSize.toInt();
                        cardCustomizationScreenChangeNotifier
                                    .cardCustomizationSelectorControllerList[
                                containerIndex] =
                            !(cardCustomizationScreenChangeNotifier
                                    .cardCustomizationSelectorControllerList[
                                containerIndex]);
                      },
                      value: cardCustomizationScreenChangeNotifier
                          .bottomSheetSizeSliderValue
                          .toDouble(),
                      min: 7,
                      max: 200,
                      divisions: 190,
                      label: '${bottomSheetSizeSliderValue.toInt()} px',
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  if (cardCustomizationScreenChangeNotifier
                          .bottomSheetSizeSliderValue <
                      200) {
                    cardCustomizationScreenChangeNotifier
                        .bottomSheetSizeSliderValue += 1;
                    cardCustomizationDataModelList[containerIndex].fontSize +=
                        1;
                    cardCustomizationScreenChangeNotifier
                                .cardCustomizationSelectorControllerList[
                            containerIndex] =
                        !(cardCustomizationScreenChangeNotifier
                                .cardCustomizationSelectorControllerList[
                            containerIndex]);
                  }
                },
                child: Row(
                  children: const [
                    Text(
                      'A',
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Roboto',
                          color: Colors.black54),
                    ),
                    Icon(Icons.arrow_drop_up_sharp, color: Colors.black54),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget bottomSheetColorChild() {
    return AnimatedContainer(
      duration: const Duration(
          milliseconds: CardCustomizationBehavior
              .cardCustomizationScreenAnimationSpeedController),
      height: bottomSheetColorChildHeight,
      width: screenWidth! * 0.67,
      child: Selector<CardCustomizationScreenChangeNotifier, Color>(
        shouldRebuild: (previous, next) => previous != next,
        selector: (context, cardCustomizationScreenChangeNotifier) =>
            cardCustomizationScreenChangeNotifier.bottomSheetColorChildValue,
        builder: (context, bottomSheetColorChildValue, child) => GridView.count(
          childAspectRatio: 1.1,
          crossAxisCount: 6,
          children: [
            for (int i = 0; i < colorHexCodeList.length; i++)
              Center(
                child: Container(
                  width: 28,
                  height: 28,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(
                          color: Color(
                              transparentColorHexCodeMap[colorHexCodeList[i]]!),
                          width: 0.5)),
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        transparentColorHexCodeMap[
                            cardCustomizationDataModelList[containerIndex]
                                .textColor] = 0x00000000;
                        transparentColorHexCodeMap[colorHexCodeList[
                                bottomSheetColorChildIndexToBeTransparent]] =
                            0x00000000;
                        transparentColorHexCodeMap[colorHexCodeList[i]] =
                            0xFF000000;
                        bottomSheetColorChildIndexToBeTransparent = i;
                        cardCustomizationScreenChangeNotifier
                                .bottomSheetColorChildValue =
                            Color(colorHexCodeList[i]);
                        cardCustomizationDataModelList[containerIndex]
                            .textColor = colorHexCodeList[i];
                        cardCustomizationScreenChangeNotifier
                                    .cardCustomizationSelectorControllerList[
                                containerIndex] =
                            !(cardCustomizationScreenChangeNotifier
                                    .cardCustomizationSelectorControllerList[
                                containerIndex]);
                      },
                      child: Container(
                        height: 23,
                        width: 23,
                        decoration: BoxDecoration(
                            color: Color(colorHexCodeList[i]),
                            borderRadius: BorderRadius.circular(12),
                            border:
                                Border.all(color: Colors.black12, width: 0.5)),
                      ),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget bottomSheetAlignChild() {
    return AnimatedContainer(
      alignment: Alignment.center,
      duration: const Duration(
          milliseconds: CardCustomizationBehavior
              .cardCustomizationScreenAnimationSpeedController),
      height: bottomSheetAlignChildHeight,
      child: SingleChildScrollView(
        child: Selector<CardCustomizationScreenChangeNotifier, Alignment>(
          shouldRebuild: (previous, next) => previous != next,
          selector: (context, cardCustomizationScreenChangeNotifier) =>
              cardCustomizationScreenChangeNotifier.bottomSheetAlignChildValue,
          builder: (context, bottomSheetAlignChildValue, child) => Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                  onTap: () {
                    bottomSheetHeaderLeftAlignColor = const Color(0xFF22D28B);
                    bottomSheetHeaderCenterAlignColor = Colors.black;
                    bottomSheetHeaderRightAlignColor = Colors.black;
                    cardCustomizationScreenChangeNotifier
                        .bottomSheetAlignChildValue = Alignment.centerLeft;
                    cardCustomizationDataModelList[containerIndex]
                        .textAlignment = TextAlign.left;
                    cardCustomizationScreenChangeNotifier
                                .cardCustomizationSelectorControllerList[
                            containerIndex] =
                        !(cardCustomizationScreenChangeNotifier
                                .cardCustomizationSelectorControllerList[
                            containerIndex]);
                  },
                  child: Icon(
                    Icons.format_align_left_outlined,
                    color: bottomSheetHeaderLeftAlignColor,
                  )),
              GestureDetector(
                  onTap: () {
                    bottomSheetHeaderLeftAlignColor = Colors.black;
                    bottomSheetHeaderCenterAlignColor = const Color(0xFF22D28B);
                    bottomSheetHeaderRightAlignColor = Colors.black;
                    cardCustomizationScreenChangeNotifier
                        .bottomSheetAlignChildValue = Alignment.center;
                    cardCustomizationDataModelList[containerIndex]
                        .textAlignment = TextAlign.center;
                    cardCustomizationScreenChangeNotifier
                                .cardCustomizationSelectorControllerList[
                            containerIndex] =
                        !(cardCustomizationScreenChangeNotifier
                                .cardCustomizationSelectorControllerList[
                            containerIndex]);
                  },
                  child: Icon(
                    Icons.format_align_center_outlined,
                    color: bottomSheetHeaderCenterAlignColor,
                  )),
              GestureDetector(
                  onTap: () {
                    bottomSheetHeaderLeftAlignColor = Colors.black;
                    bottomSheetHeaderCenterAlignColor = Colors.black;
                    bottomSheetHeaderRightAlignColor = const Color(0xFF22D28B);
                    cardCustomizationScreenChangeNotifier
                        .bottomSheetAlignChildValue = Alignment.centerRight;
                    cardCustomizationDataModelList[containerIndex]
                        .textAlignment = TextAlign.right;
                    cardCustomizationScreenChangeNotifier
                                .cardCustomizationSelectorControllerList[
                            containerIndex] =
                        !(cardCustomizationScreenChangeNotifier
                                .cardCustomizationSelectorControllerList[
                            containerIndex]);
                  },
                  child: Icon(
                    Icons.format_align_right_outlined,
                    color: bottomSheetHeaderRightAlignColor,
                  )),
            ],
          ),
        ),
      ),
    );
  }

  Widget bottomSheetEffectChild() {
    return AnimatedContainer(
      duration: const Duration(
          milliseconds: CardCustomizationBehavior
              .cardCustomizationScreenAnimationSpeedController),
      height: bottomSheetEffectChildHeight,
      child: Center(
        child: SingleChildScrollView(
          child: SizedBox(
            height: 70,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: animatedTextGifList.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    containerIndexAnimationNumber[containerIndex] = index;
                    myAnimatedTextKitControllerMap[containerIndex]!.reset();
                    cardCustomizationScreenChangeNotifier
                            .cardCustomizationSelectorControllerList[
                        containerIndex] = !cardCustomizationScreenChangeNotifier
                            .cardCustomizationSelectorControllerList[
                        containerIndex];
                    cardCustomizationScreenChangeNotifier.myNotify();
                    myAnimatedTextChildObjects[index]!.initAnimation(
                        myAnimatedTextKitControllerMap[containerIndex]!);
                    myAnimatedTextKitControllerMap[containerIndex]!.forward();
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    margin: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          fit: BoxFit.contain,
                          image: AssetImage(animatedTextGifList[index]),
                        )),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    isAnimationCompleted = false;

    cardImageExtension = widget.cardCategoryProvider.cardName.substring(widget.cardCategoryProvider.cardName.indexOf('.'), widget.cardCategoryProvider.cardName.length);
    cardImageTitle = widget.cardCategoryProvider.cardName.substring(0, widget.cardCategoryProvider.cardName.indexOf('.'));

    cardCustomizationScreenChangeNotifier = Provider.of<CardCustomizationScreenChangeNotifier>(context, listen: false);

    cardCustomizationScreenChangeNotifier.initSelectorControllerList();

    initCardCustomizationDataModelList(cardName: widget.cardCategoryProvider.cardName,);

    cardColumn = cardMainCategorySelection(cardName: widget.cardCategoryProvider.cardName,);

    for (int i = 0; i < animatedTextContainerVisibilityList.length; i++) {
      animatedTextContainerVisibilityList[i] = false;
    }
    super.initState();
  }

  void startAnimatedText() {
    isPreviewEnable = true;
      myAnimatedTextKitControllerMap[0]!.reset();
      animatedTextContainerVisibilityList[0] = true;
      cardCustomizationScreenChangeNotifier.cardCustomizationSelectorControllerList[0] = !cardCustomizationScreenChangeNotifier.cardCustomizationSelectorControllerList[0];
      myAnimatedTextKitControllerMap[0]!.forward();
      cardCustomizationScreenChangeNotifier.myNotify();

  }

  @override
  Widget build(BuildContext context) {

    Future.delayed(const Duration(milliseconds: 1500), () {
      startAnimatedText();
    });

    return WillPopScope(
      onWillPop: () {
        isEnable = false;
        isPreviewEnable = false;
        isAnimationCompleted = false;
        //re initialize with default values
        myAnimatedTextKitControllerMap.forEach((key, value) {
          if (value.isAnimating) {
            value.stop();
            value.reset();
          }
        });

        //re initialize with default values
        for (int i = 0; i < cardCustomizationDataModelList.length; i++) {
          animatedTextContainerVisibilityList[i] = false;
          cardCustomizationDataModelList[i].customizeContainerBorderColor = Colors.transparent;
          cardCustomizationScreenChangeNotifier.cardCustomizationSelectorControllerList[i] = !(cardCustomizationScreenChangeNotifier.cardCustomizationSelectorControllerList[i]);
        }

        dividerContainerHeight = 0.0;
        cardCustomizationScreenChangeNotifier.bottomSheetMainHeight = 0.0;
        cardCustomizationScreenChangeNotifier.bottomSheetSizeSliderValue = 10;
        cardCustomizationScreenChangeNotifier.bottomSheetAlignChildValue = Alignment.center;
        cardCustomizationScreenChangeNotifier.bottomSheetColorChildValue = Colors.black;
        bottomSheetHeaderHeight = 0.0;
        bottomSheetFontChildHeight = 0.0;
        bottomSheetSizeChildHeight = 0.0;
        bottomSheetColorChildHeight = 0.0;
        bottomSheetAlignChildHeight = 0.0;
        bottomSheetEffectChildHeight = 0.0;

        formalInvitationHeaderText = '';

        return Future.value(true);
      },
      child: Scaffold(
        backgroundColor: const Color(0xFFF9F9FB),
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leadingWidth: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                flex: 1,
                child: GestureDetector(
                    onTap: () {
                      isEnable = false;
                      isPreviewEnable = false;
                      isAnimationCompleted = false;
                      //re initialize with default values
                      myAnimatedTextKitControllerMap.forEach((key, value) {
                        if (value.isAnimating) {
                          value.stop();
                          value.reset();
                        }
                      });
                      //re initialize with default values
                      for (int i = 0; i < animatedTextContainerVisibilityList.length; i++) {
                        animatedTextContainerVisibilityList[i] = false;
                      }

                      for (int i = 0; i < cardCustomizationDataModelList.length; i++) {
                        cardCustomizationDataModelList[i]
                            .customizeContainerBorderColor = Colors.transparent;
                        cardCustomizationScreenChangeNotifier
                                .cardCustomizationSelectorControllerList[i] =
                            !(cardCustomizationScreenChangeNotifier
                                .cardCustomizationSelectorControllerList[i]);
                      }
                      dividerContainerHeight = 0.0;
                      cardCustomizationScreenChangeNotifier
                          .bottomSheetMainHeight = 0.0;
                      cardCustomizationScreenChangeNotifier
                          .bottomSheetSizeSliderValue = 10;
                      cardCustomizationScreenChangeNotifier
                          .bottomSheetAlignChildValue = Alignment.center;
                      cardCustomizationScreenChangeNotifier
                          .bottomSheetColorChildValue = Colors.black;
                      bottomSheetHeaderHeight = 0.0;
                      bottomSheetFontChildHeight = 0.0;
                      bottomSheetSizeChildHeight = 0.0;
                      bottomSheetColorChildHeight = 0.0;
                      bottomSheetAlignChildHeight = 0.0;
                      bottomSheetEffectChildHeight = 0.0;

                      formalInvitationHeaderText = '';
                      Navigator.pop(context);

                    },
                    child: const Icon(
                      Icons.arrow_back_sharp,
                      color: Colors.black,
                    )),
              ),
              //preview button to see animation
              Flexible(
                flex: 2,
                child: GestureDetector(
                  onTap: () {
                    isAnimationCompleted = false;

                    for(int i = 0; i < myAnimatedTextKitControllerMap.length-1; i++) {
                      myAnimatedTextKitControllerMap[i]!.stop();
                    }
                    /*myAnimatedTextKitControllerMap.forEach((key, value) {
                      if (value.isAnimating) {
                        value.stop();
                      }
                    });*/

                    containerIndex = 0;
                    dividerContainerHeight = 0.0;
                    cardCustomizationScreenChangeNotifier.bottomSheetMainHeight = 0.0;
                    bottomSheetHeaderHeight = 0.0;
                    bottomSheetFontChildHeight = 0.0;
                    bottomSheetSizeChildHeight = 0.0;
                    bottomSheetColorChildHeight = 0.0;
                    bottomSheetAlignChildHeight = 0.0;
                    bottomSheetEffectChildHeight = 0.0;

                    for (int i = 0; i < animatedTextContainerVisibilityList.length; i++) {
                      animatedTextContainerVisibilityList[i] = false;
                      cardCustomizationDataModelList[i].customizeContainerBorderColor = Colors.transparent;
                      cardCustomizationScreenChangeNotifier.cardCustomizationSelectorControllerList[i] = !(cardCustomizationScreenChangeNotifier.cardCustomizationSelectorControllerList[i]);
                    }
                    cardCustomizationScreenChangeNotifier.myNotify();

                    Future.delayed(const Duration(seconds: 1), () {
                      startAnimatedText();
                    });
                  },
                  child: Container(
                      height: 35,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                              color: const Color(0xFF22D28B),
                              style: BorderStyle.solid)),
                      child: const Center(
                        child: Text(
                          'Preview',
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 17,
                              color: Colors.black),
                        ),
                      )),
                ),
              ),
              //Customize Button to Customize the card
              Flexible(
                flex: 2,
                child: GestureDetector(
                  onTap: () {
                    if (isAnimationCompleted) {
                      isEnable = true;
                      isPreviewEnable = false;
                      //enable outer border color to customize the card and to notify their selectors
                      changeBorderColor(index: 0);
                      initBottomSheetMainHeight(index: 0);
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Please wait')));
                    }
                    // cardCustomizationScreenChangeNotifier.myNotify();
                  },
                  child: Container(
                    height: 35,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                            color: const Color(0xFF22D28B),
                            style: BorderStyle.solid)),
                    child: const Center(
                      child: Text(
                        'Customize',
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 17,
                            color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ),

              //Next Button as a Selected card
              Flexible(
                flex: 2,
                child: GestureDetector(
                  onTap: () {
                    isEnable = false;
                    isAnimationCompleted = false;
                    //re initialize with default values
                    for(int i = 0; i < myAnimatedTextKitControllerMap.length-1; i++) {
                      myAnimatedTextKitControllerMap[i]!.stop();
                      myAnimatedTextKitControllerMap[i]!.reset();
                    }
                   /* myAnimatedTextKitControllerMap.forEach((key, value) {
                      if (value.isAnimating) {
                        value.stop();
                        value.reset();
                      }
                    });*/

                    //re initialize with default values
                    for (int i = 0; i < animatedTextContainerVisibilityList.length; i++) {
                      animatedTextContainerVisibilityList[i] = false;
                      cardCustomizationDataModelList[i].customizeContainerBorderColor = Colors.transparent;
                      cardCustomizationScreenChangeNotifier.cardCustomizationSelectorControllerList[i] = !(cardCustomizationScreenChangeNotifier.cardCustomizationSelectorControllerList[i]);
                    }

                    dividerContainerHeight = 0.0;
                    cardCustomizationScreenChangeNotifier.bottomSheetMainHeight = 0.0;
                    cardCustomizationScreenChangeNotifier.bottomSheetSizeSliderValue = 10;
                    cardCustomizationScreenChangeNotifier.bottomSheetAlignChildValue = Alignment.center;
                    cardCustomizationScreenChangeNotifier.bottomSheetColorChildValue = Colors.black;
                    bottomSheetHeaderHeight = 0.0;
                    bottomSheetFontChildHeight = 0.0;
                    bottomSheetSizeChildHeight = 0.0;
                    bottomSheetColorChildHeight = 0.0;
                    bottomSheetAlignChildHeight = 0.0;
                    bottomSheetEffectChildHeight = 0.0;

                    Navigator.pushNamedAndRemoveUntil(context, AnimationToVideoScreen.ROUTE_NAME, (route) => route.isFirst);

                  },
                  child: Container(
                    height: 35,
                    width: 70,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color(0xFF22D28B)),
                    child: const Center(
                      child: Text(
                        'Next',
                        style: TextStyle(fontFamily: 'Roboto', fontSize: 17),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        body: GestureDetector(
          onTap: () {
            if (isAnimationCompleted) {
              isEnable = false;
              isPreviewEnable = false;
              //disable outer border color and  to notify their selectors
              for (int i = 0; i < cardCustomizationDataModelList.length; i++) {
                cardCustomizationDataModelList[i]
                    .customizeContainerBorderColor = Colors.transparent;
                cardCustomizationScreenChangeNotifier
                        .cardCustomizationSelectorControllerList[i] =
                    !(cardCustomizationScreenChangeNotifier
                        .cardCustomizationSelectorControllerList[i]);
              }
              containerIndex = 0;
              dividerContainerHeight = 0.0;
              cardCustomizationScreenChangeNotifier.bottomSheetMainHeight = 0.0;
              bottomSheetHeaderHeight = 0.0;
              bottomSheetFontChildHeight = 0.0;
              bottomSheetSizeChildHeight = 0.0;
              bottomSheetColorChildHeight = 0.0;
              bottomSheetAlignChildHeight = 0.0;
              bottomSheetEffectChildHeight = 0.0;
            } else {
              ScaffoldMessenger.of(context)
                  .showSnackBar(const SnackBar(content: Text('Please wait')));
            }
          },
          child: Container(
            margin: const EdgeInsets.only(top: 15),
            alignment: Alignment.topCenter,
            height: screenHeight,
            width: screenWidth,
            color: Colors.transparent,
            child: SizedBox(
                height: screenHeight,
                width: screenWidth! * 0.9,
                child: Stack(
                  children: [
                    ListView(
                      children: [
                        AspectRatio(
                          aspectRatio: 5 / 7,
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black12),
                              image: DecorationImage(
                                fit: BoxFit.contain,
                                image: AssetImage('${cardImageTitle}_customize$cardImageExtension'),
                              ),
                            ),
                            child: cardColumn,
                          ),
                        ),
                        //Animated Container With Height to adjust listView
                        Selector<CardCustomizationScreenChangeNotifier,
                            double?>(
                          shouldRebuild: (previous, next) => previous != next,
                          selector: (context,
                                  cardCustomizationScreenChangeNotifier) =>
                              cardCustomizationScreenChangeNotifier
                                  .bottomSheetMainHeight,
                          builder: (context, bottomSheetMainHeight, child) =>
                              AnimatedContainer(
                            height: cardCustomizationScreenChangeNotifier
                                .bottomSheetMainHeight,
                            width: screenWidth,
                            duration: const Duration(
                                milliseconds: CardCustomizationBehavior.cardCustomizationScreenAnimationSpeedController),
                          ),
                        )
                      ],
                    ),
                  ],
                )),
          ),
        ),
        bottomSheet: Material(
          elevation: 14,
          color: Colors.white,
          child: Selector<CardCustomizationScreenChangeNotifier, double?>(
            shouldRebuild: (previous, next) => previous != next,
            selector: (context, cardCustomizationScreenChangeNotifier) =>
                cardCustomizationScreenChangeNotifier.bottomSheetMainHeight,
            builder: (context, bottomSheetMainHeight, child) =>
                AnimatedContainer(
              height: bottomSheetMainHeight,
              width: screenWidth,
              duration: const Duration(
                  milliseconds: CardCustomizationBehavior
                      .cardCustomizationScreenAnimationSpeedController),
              child: Column(
                children: [
                  AnimatedContainer(
                    height: bottomSheetHeaderHeight,
                    width: screenWidth,
                    decoration: const BoxDecoration(color: Colors.white),
                    duration: const Duration(
                        milliseconds: CardCustomizationBehavior
                            .cardCustomizationScreenAnimationSpeedController),
                    child: SingleChildScrollView(
                      padding: const EdgeInsets.only(top: 6),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                              onTap: () {
                                indexOfFont = (fontNameList.indexOf(
                                    cardCustomizationDataModelList[
                                            containerIndex]
                                        .fontStyle));

                                cardCustomizationScreenChangeNotifier
                                        .bottomSheetMainHeight =
                                    243 + dividerContainerHeight;
                                bottomSheetHeaderHeight = 55;
                                bottomSheetFontChildHeight = 188;
                                bottomSheetSizeChildHeight = 0.0;
                                bottomSheetColorChildHeight = 0.0;
                                bottomSheetAlignChildHeight = 0.0;
                                bottomSheetEffectChildHeight = 0.0;

                                bottomSheetHeaderFontChildColor =
                                    const Color(0xFF22D28B);
                                bottomSheetHeaderSizeChildColor = Colors.black;
                                bottomSheetHeaderColorChildColor = Colors.black;
                                bottomSheetHeaderAlignChildColor = Colors.black;
                                bottomSheetHeaderEffectChildColor =
                                    Colors.black;

                                fontListScrollController
                                    .jumpTo((36 * (indexOfFont)).toDouble());
                              },
                              child: bottomSheetHeaderItem(
                                  icon: Icons.font_download_outlined,
                                  title: 'Font',
                                  color: bottomSheetHeaderFontChildColor)),
                          GestureDetector(
                            onTap: () {
                              cardCustomizationScreenChangeNotifier
                                      .bottomSheetMainHeight =
                                  106 + dividerContainerHeight;
                              bottomSheetHeaderHeight = 55;
                              bottomSheetFontChildHeight = 0.0;
                              bottomSheetSizeChildHeight = 51;
                              bottomSheetColorChildHeight = 0.0;
                              bottomSheetAlignChildHeight = 0.0;
                              bottomSheetEffectChildHeight = 0.0;

                              bottomSheetHeaderFontChildColor = Colors.black;
                              bottomSheetHeaderSizeChildColor =
                                  const Color(0xFF22D28B);
                              bottomSheetHeaderColorChildColor = Colors.black;
                              bottomSheetHeaderAlignChildColor = Colors.black;
                              bottomSheetHeaderEffectChildColor = Colors.black;
                              cardCustomizationScreenChangeNotifier
                                      .bottomSheetSizeSliderValue =
                                  cardCustomizationDataModelList[containerIndex]
                                      .fontSize;
                            },
                            child: bottomSheetHeaderItem(
                                icon: Icons.keyboard_arrow_left_outlined,
                                title: 'Size',
                                color: bottomSheetHeaderSizeChildColor),
                          ),
                          GestureDetector(
                            onTap: () {
                              cardCustomizationScreenChangeNotifier
                                      .bottomSheetMainHeight =
                                  300 + dividerContainerHeight;
                              bottomSheetHeaderHeight = 55;
                              bottomSheetFontChildHeight = 0.0;
                              bottomSheetSizeChildHeight = 0.0;
                              bottomSheetColorChildHeight = 245;
                              bottomSheetAlignChildHeight = 0.0;
                              bottomSheetEffectChildHeight = 0.0;

                              bottomSheetHeaderFontChildColor = Colors.black;
                              bottomSheetHeaderSizeChildColor = Colors.black;
                              bottomSheetHeaderColorChildColor =
                                  const Color(0xFF22D28B);
                              bottomSheetHeaderAlignChildColor = Colors.black;
                              bottomSheetHeaderEffectChildColor = Colors.black;

                              transparentColorHexCodeMap[colorHexCodeList[
                                      bottomSheetColorChildIndexToBeTransparent]] =
                                  0x00000000;
                              transparentColorHexCodeMap[
                                  cardCustomizationDataModelList[containerIndex]
                                      .textColor] = 0xFF000000;
                            },
                            child: bottomSheetHeaderItem(
                                icon: Icons.color_lens_outlined,
                                title: 'Color',
                                color: bottomSheetHeaderColorChildColor),
                          ),
                          GestureDetector(
                            onTap: () {
                              cardCustomizationScreenChangeNotifier
                                      .bottomSheetMainHeight =
                                  110 + dividerContainerHeight;
                              bottomSheetHeaderHeight = 55;
                              bottomSheetFontChildHeight = 0.0;
                              bottomSheetSizeChildHeight = 0.0;
                              bottomSheetColorChildHeight = 0.0;
                              bottomSheetAlignChildHeight = 55;
                              bottomSheetEffectChildHeight = 0.0;

                              bottomSheetHeaderFontChildColor = Colors.black;
                              bottomSheetHeaderSizeChildColor = Colors.black;
                              bottomSheetHeaderColorChildColor = Colors.black;
                              bottomSheetHeaderAlignChildColor =
                                  const Color(0xFF22D28B);
                              bottomSheetHeaderEffectChildColor = Colors.black;

                              bottomSheetHeaderLeftAlignColor =
                                  cardCustomizationDataModelList[containerIndex]
                                              .textAlignment ==
                                          TextAlign.left
                                      ? const Color(0xFF22D28B)
                                      : Colors.black;
                              bottomSheetHeaderCenterAlignColor =
                                  cardCustomizationDataModelList[containerIndex]
                                              .textAlignment ==
                                          TextAlign.center
                                      ? const Color(0xFF22D28B)
                                      : Colors.black;
                              bottomSheetHeaderRightAlignColor =
                                  cardCustomizationDataModelList[containerIndex]
                                              .textAlignment ==
                                          TextAlign.right
                                      ? const Color(0xFF22D28B)
                                      : Colors.black;
                            },
                            child: bottomSheetHeaderItem(
                                icon: Icons.format_align_center_outlined,
                                title: 'Align',
                                color: bottomSheetHeaderAlignChildColor),
                          ),
                          GestureDetector(
                            onTap: () {
                              cardCustomizationScreenChangeNotifier
                                      .bottomSheetMainHeight =
                                  135 + dividerContainerHeight;
                              bottomSheetHeaderHeight = 55;
                              bottomSheetFontChildHeight = 0.0;
                              bottomSheetSizeChildHeight = 0.0;
                              bottomSheetColorChildHeight = 0.0;
                              bottomSheetAlignChildHeight = 0.0;
                              bottomSheetEffectChildHeight = 80;

                              bottomSheetHeaderFontChildColor = Colors.black;
                              bottomSheetHeaderSizeChildColor = Colors.black;
                              bottomSheetHeaderColorChildColor = Colors.black;
                              bottomSheetHeaderAlignChildColor = Colors.black;
                              bottomSheetHeaderEffectChildColor =
                                  const Color(0xFF22D28B);
                            },
                            child: bottomSheetHeaderItem(
                                icon: Icons.animation,
                                title: 'Effect',
                                color: bottomSheetHeaderEffectChildColor),
                          ),
                        ],
                      ),
                    ),
                  ),
                  AnimatedContainer(
                    color: Colors.black12,
                    duration: const Duration(
                        milliseconds: CardCustomizationBehavior
                            .cardCustomizationScreenAnimationSpeedController),
                    height: dividerContainerHeight,
                    width: screenWidth,
                  ),
                  bottomSheetFontChild(),
                  bottomSheetSizeChild(),
                  bottomSheetColorChild(),
                  bottomSheetAlignChild(),
                  bottomSheetEffectChild()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/*
Row(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,
children: [
ElevatedButton(
onPressed: () {
dividerContainerHeight = 1.0;
cardCustomizationScreenChangeNotifier.bottomSheetMainHeight = 55 + dividerContainerHeight;
bottomSheetHeaderHeight = 55;
bottomSheetFontChildHeight = 0.0;
bottomSheetSizeChildHeight = 0.0;
bottomSheetColorChildHeight = 0.0;
bottomSheetAlignChildHeight = 0.0;
bottomSheetEffectChildHeight = 0.0;

bottomSheetHeaderFontChildColor = Colors.black;
bottomSheetHeaderSizeChildColor = Colors.black;
bottomSheetHeaderColorChildColor = Colors.black;
bottomSheetHeaderAlignChildColor = Colors.black;
bottomSheetHeaderEffectChildColor = Colors.black;
},
child: const Text('show bottom Sheet')),
ElevatedButton(
onPressed: () {
dividerContainerHeight = 0.0;
cardCustomizationScreenChangeNotifier.bottomSheetMainHeight = 0.0;
bottomSheetHeaderHeight = 0.0;
bottomSheetFontChildHeight = 0.0;
bottomSheetSizeChildHeight = 0.0;
bottomSheetColorChildHeight = 0.0;
bottomSheetAlignChildHeight = 0.0;
bottomSheetEffectChildHeight = 0.0;
},
child: const Text('hide bottom Sheet')),
],
),*/
