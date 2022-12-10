import 'package:flutter/material.dart';
import 'package:invitor/card_customization_screen/my_animated_text_kit_portion/my_animation_text.dart';
import 'package:invitor/card_customization_screen/my_animated_text_kit_portion/my_type_writer_animated_text.dart';
import 'card_customization_behavior.dart';
import 'my_animated_text_kit_portion/my_colorize_animated_text.dart';
import 'my_animated_text_kit_portion/my_fade_animated_text.dart';
import 'my_animated_text_kit_portion/my_flicker_animation_text.dart';
import 'my_animated_text_kit_portion/my_scale_animated_text.dart';

Widget invitationCardSingleTextContainer({required String text, required int animationTextNumber, required int myContainerIndex,}) {

  return FittedBox(
    fit: BoxFit.fitHeight,
        child: Container(
          margin: const EdgeInsets.only(top: 5, bottom: 5),
          decoration: BoxDecoration(
            border: Border.all(
              color: cardCustomizationDataModelList[myContainerIndex].customizeContainerBorderColor,
              width: 0.3,
            ),
          ),
          child: MyAnimatedTextKit(
            animationControllerIndex: myContainerIndex,
            isRepeatingAnimation: false,
            totalRepeatCount: 1,
            repeatForever: false,
            onTap: () {
              if (isEnable) {
                changeBorderColor(index: myContainerIndex,);
                initBottomSheetMainHeight(index: myContainerIndex,);
              }
            },
            animatedTexts: [
              if(animationTextNumber == 0)
                MyFadeAnimatedText(text,
                    textAlign: cardCustomizationDataModelList[myContainerIndex]
                        .textAlignment,
                    textStyle: TextStyle(
                        color: Color(cardCustomizationDataModelList[myContainerIndex].textColor),
                        fontFamily: cardCustomizationDataModelList[myContainerIndex]
                            .fontStyle
                            .replaceAll(' ', ''),
                        fontSize: (cardCustomizationDataModelList[myContainerIndex]
                            .fontSize)
                            .toDouble()))
              else if(animationTextNumber == 1)
                  MyTypewriterAnimatedText(
                    text,
                    speed: const Duration(milliseconds: 100),
                    textAlign: cardCustomizationDataModelList[myContainerIndex]
                        .textAlignment,
                    textStyle: TextStyle(
                        color: Color(cardCustomizationDataModelList[myContainerIndex]
                            .textColor),
                        fontFamily: cardCustomizationDataModelList[myContainerIndex]
                            .fontStyle
                            .replaceAll(' ', ''),
                        fontSize: (cardCustomizationDataModelList[myContainerIndex]
                            .fontSize)
                            .toDouble()),
                  )
              else if (animationTextNumber == 2)
                    MyScaleAnimatedText(text,
                      textAlign: cardCustomizationDataModelList[myContainerIndex]
                          .textAlignment,
                      textStyle: TextStyle(
                          color: Color(cardCustomizationDataModelList[myContainerIndex]
                              .textColor),
                          fontFamily: cardCustomizationDataModelList[myContainerIndex]
                              .fontStyle
                              .replaceAll(' ', ''),
                          fontSize: (cardCustomizationDataModelList[myContainerIndex]
                              .fontSize)
                              .toDouble()),
                    )
              else if(animationTextNumber == 3)
                    MyColorizeAnimatedText(text,
                colors: [
                  Color(cardCustomizationDataModelList[myContainerIndex].textColor),
                  Colors.purple,
                  Colors.blue,
                  Colors.yellow,
                  Colors.red,
                  Color(cardCustomizationDataModelList[myContainerIndex].textColor),
                ],
                textAlign: cardCustomizationDataModelList[myContainerIndex]
                    .textAlignment,
                textStyle: TextStyle(
                    color: Color(cardCustomizationDataModelList[myContainerIndex]
                        .textColor),
                    fontFamily: cardCustomizationDataModelList[myContainerIndex]
                        .fontStyle
                        .replaceAll(' ', ''),
                    fontSize: (cardCustomizationDataModelList[myContainerIndex]
                        .fontSize)
                        .toDouble()),)
              else if(animationTextNumber == 4)
                MyFlickerAnimatedText(text,
                  textAlign: cardCustomizationDataModelList[myContainerIndex]
                      .textAlignment,
                  textStyle: TextStyle(
                      color: Color(cardCustomizationDataModelList[myContainerIndex]
                          .textColor),
                      shadows: [
                        Shadow(
                          blurRadius: 7.0,
                         color: Color(cardCustomizationDataModelList[myContainerIndex].textColor),
                          offset: const Offset(0, 0),),],
                      fontFamily: cardCustomizationDataModelList[myContainerIndex]
                          .fontStyle
                          .replaceAll(' ', ''),
                      fontSize: (cardCustomizationDataModelList[myContainerIndex]
                          .fontSize)
                          .toDouble())),
            ],
          ),
        ),
  );
}

//TextWidget
/*Text(text,
            textAlign: cardCustomizationScreenChangeNotifier.cardCustomizationDataModelList[containerIndex].textAlignment,
            style: TextStyle(color: Color(cardCustomizationScreenChangeNotifier.cardCustomizationDataModelList[containerIndex].textColor),
                fontFamily: cardCustomizationScreenChangeNotifier.cardCustomizationDataModelList[containerIndex].fontStyle.replaceAll(' ', ''),
                fontSize: (cardCustomizationScreenChangeNotifier.cardCustomizationDataModelList[containerIndex].fontSize).toDouble()),
          ),*/
