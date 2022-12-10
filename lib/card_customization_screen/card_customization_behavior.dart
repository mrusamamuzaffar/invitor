import 'package:flutter/material.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/announcements/birth/announcements_birth_two.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/announcements/engagement/announcements_engagement_one.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/announcements/engagement/announcements_engagement_three.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/announcements/engagement/announcements_engagement_two.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/announcements/graduation/announcements_graduation_three.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/announcements/graduation/announcements_graduation_two.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/announcements/memorial/announcements_memorial_one.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/announcements/memorial/announcements_memorial_two.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/announcements/moving/announcements_moving_one.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/announcements/moving/announcements_moving_two.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/announcements/pregnancy/announcements_pregnancy_one.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/announcements/pregnancy/announcements_pregnancy_two.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/announcements/save_the_date/announcements_save_the_date_one.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/announcements/save_the_date/announcements_save_the_date_three.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/announcements/save_the_date/announcements_save_the_date_two.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/announcements/wedding/announcements_wedding_one.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/announcements/wedding/announcements_wedding_three.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/announcements/wedding/announcements_wedding_two.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/babies_and_kids/baby_shower/babies_and_kids_baby_shower_one.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/babies_and_kids/baby_shower/babies_and_kids_baby_shower_three.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/babies_and_kids/baby_shower/babies_and_kids_baby_shower_two.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/babies_and_kids/baby_sprinkle/babies_and_kids_baby_sprinkle_three.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/babies_and_kids/baby_sprinkle/babies_and_kids_baby_sprinkle_two.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/babies_and_kids/baptism_and_christening/babies_and_kids_baptism_and_christening_two.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/babies_and_kids/first_birthday/babies_and_kids_first_birthday_one.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/babies_and_kids/first_birthday/babies_and_kids_first_birthday_two.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/babies_and_kids/first_communion/babies_and_kids_first_communion_three.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/babies_and_kids/first_communion/babies_and_kids_first_communion_two.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/babies_and_kids/gender_reveal/babies_and_kids_gender_reveal_one.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/babies_and_kids/gender_reveal/babies_and_kids_gender_reveal_three.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/babies_and_kids/gender_reveal/babies_and_kids_gender_reveal_two.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/babies_and_kids/kids_birthday/babies_and_kids_kids_birthday_one.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/babies_and_kids/sip_and_see/babies_and_kids_sip_and_see_one.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/babies_and_kids/sip_and_see/babies_and_kids_sip_and_see_three.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/babies_and_kids/sip_and_see/babies_and_kids_sip_and_see_two.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/birthday/baby_birthday/birthday_baby_birthday_one.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/birthday/baby_birthday/birthday_baby_birthday_two.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/birthday/first_birthday/birthday_first_birthday_one.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/birthday/first_birthday/birthday_first_birthday_three.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/birthday/first_birthday/birthday_first_birthday_two.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/birthday/kids_birthday/birthday_kids_birthday_one.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/birthday/kids_birthday/birthday_kids_birthday_three.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/birthday/kids_birthday/birthday_kids_birthday_two.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/birthday/mens_birthday/birthday_men_birthday_one.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/birthday/mens_birthday/birthday_men_birthday_two.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/birthday/womens_birthday/birthday_women_birthday_one.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/birthday/womens_birthday/birthday_women_birthday_three.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/birthday/womens_birthday/birthday_women_birthday_two.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/party/anniversary/party_anniversary_one.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/party/anniversary/party_anniversary_three.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/party/anniversary/party_anniversary_two.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/party/bbq_party/party_bbq_party_one.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/party/bbq_party/party_bbq_party_two.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/party/christmas_party/party_christmas_party_four.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/party/christmas_party/party_christmas_party_one.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/party/christmas_party/party_christmas_party_three.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/party/christmas_party/party_christmas_party_two.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/party/cocktail_party/party_cocktail_party_four.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/party/cocktail_party/party_cocktail_party_one.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/party/cocktail_party/party_cocktail_party_three.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/party/cocktail_party/party_cocktail_party_two.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/party/dinner_party/party_dinner_party_five.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/party/dinner_party/party_dinner_party_four.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/party/dinner_party/party_dinner_party_one.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/party/dinner_party/party_dinner_party_three.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/party/dinner_party/party_dinner_party_two.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/party/family_reunion/party_family_reunion_one.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/party/family_reunion/party_family_reunion_three.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/party/family_reunion/party_family_reunion_two.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/party/graduation_party/party_graduation_party_three.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/party/graduation_party/party_graduation_party_two.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/party/happy_new_year/party_happy_new_year_one.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/party/happy_new_year/party_happy_new_year_two.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/party/housewarming/party_house_warming_one.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/party/housewarming/party_house_warming_two.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/party/retirement_party/party_retirement_party_one.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/party/retirement_party/party_retirement_party_two.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/party/sleepover_party/party_sleepover_party_one.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/party/sleepover_party/party_sleepover_party_two.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/party/summer_and_pool/party_summer_and_pool_four.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/party/summer_and_pool/party_summer_and_pool_one.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/party/summer_and_pool/party_summer_and_pool_three.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/party/summer_and_pool/party_summer_and_pool_two.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/wedding/bachelor_party/wedding_bachelor_party_four.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/wedding/bachelor_party/wedding_bachelor_party_one.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/wedding/bachelor_party/wedding_bachelor_party_three.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/wedding/bachelor_party/wedding_bachelor_party_two.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/wedding/bridal_shower/wedding_bridal_shower_five.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/wedding/bridal_shower/wedding_bridal_shower_four.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/wedding/bridal_shower/wedding_bridal_shower_one.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/wedding/bridal_shower/wedding_bridal_shower_three.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/wedding/bridal_shower/wedding_bridal_shower_two.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/wedding/engagement_party/wedding_engagement_party_four.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/wedding/engagement_party/wedding_engagement_party_one.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/wedding/engagement_party/wedding_engagement_party_seven.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/wedding/engagement_party/wedding_engagement_party_six.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/wedding/engagement_party/wedding_engagement_party_three.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/wedding/rehearsal_dinner/wedding_rehearsal_dinner_one.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/wedding/rehearsal_dinner/wedding_rehearsal_dinner_three.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/wedding/rehearsal_dinner/wedding_rehearsal_dinner_two.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/wedding/save_the_date/wedding_save_the_date_one.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/wedding/save_the_date/wedding_save_the_date_two.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/wedding/wedding_invitations/wedding_wedding_invitations_eight.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/wedding/wedding_invitations/wedding_wedding_invitations_eleven.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/wedding/wedding_invitations/wedding_wedding_invitations_five.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/wedding/wedding_invitations/wedding_wedding_invitations_four.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/wedding/wedding_invitations/wedding_wedding_invitations_fourteen.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/wedding/wedding_invitations/wedding_wedding_invitations_nine.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/wedding/wedding_invitations/wedding_wedding_invitations_six.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/wedding/wedding_invitations/wedding_wedding_invitations_ten.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/wedding/wedding_invitations/wedding_wedding_invitations_thirteen.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/wedding/wedding_invitations/wedding_wedding_invitations_three.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/wedding/wedding_invitations/wedding_wedding_invitations_twelve.dart';
import 'package:invitor/card_customization_screen/card_selection_portion/wedding/wedding_invitations/wedding_wedding_invitations_two.dart';
import 'package:invitor/card_customization_screen/my_animated_text_kit_portion/my_animation_text.dart';
import 'package:invitor/home_screen/home_behavior.dart';
import 'package:invitor/splash_screen/splash_behavior.dart';
import 'card_selection_portion/announcements/birth/announcements_birth_one.dart';
import 'card_selection_portion/announcements/graduation/announcements_graduation_one.dart';
import 'card_selection_portion/babies_and_kids/baby_birthday/babies_and_kids_baby_birthday_one.dart';
import 'card_selection_portion/babies_and_kids/baby_sprinkle/babies_and_kids_baby_sprinkle_one.dart';
import 'card_selection_portion/babies_and_kids/baptism_and_christening/babies_and_kids_baptism_and_christening_one.dart';
import 'card_selection_portion/babies_and_kids/first_communion/babies_and_kids_first_communion_one.dart';
import 'card_selection_portion/party/graduation_party/party_graduation_party_one.dart';
import 'card_selection_portion/party/housewarming/party_house_warming_three.dart';
import 'card_selection_portion/wedding/bridal_shower/wedding_bridal_shower_six.dart';
import 'card_selection_portion/wedding/engagement_party/wedding_engagement_party_five.dart';
import 'card_selection_portion/wedding/engagement_party/wedding_engagement_party_two.dart';
import 'card_selection_portion/wedding/wedding_invitations/wedding_wedding_invitations_one.dart';
import 'card_selection_portion/wedding/wedding_invitations/wedding_wedding_invitations_seven.dart';

bool isEnable = false, isPreviewEnable = false, isAnimationCompleted = false;

String cardImageExtension = '', cardImageTitle = '', formalInvitationHeaderTextPartOne = '', formalInvitationHeaderTextPartTwo = '', formalInvitationHeaderText = '', withYourFamilyTextFormat = '';
Widget cardColumn = Container();

List<CardCustomizationDataModel> cardCustomizationDataModelList = <CardCustomizationDataModel>[];

Map<int, AnimationController> myAnimatedTextKitControllerMap = {};
Map<int, MyAnimatedText> myAnimatedTextChildObjects = {};

List<int> containerIndexAnimationNumber = [0,0,0,0,0,0];
List<bool> animatedTextContainerVisibilityList = [false, false, false, false,false,false];

double bottomSheetHeaderHeight = 0.0,
    dividerContainerHeight = 0.0,
    bottomSheetFontChildHeight = 0.0,
    bottomSheetSizeChildHeight = 0.0,
    bottomSheetColorChildHeight = 0.0,
    bottomSheetAlignChildHeight = 0.0,
    bottomSheetEffectChildHeight = 0.0,
    previousAnimationValue = 0.0;

int containerIndex = 0;

late CardCustomizationScreenChangeNotifier cardCustomizationScreenChangeNotifier;

Color bottomSheetCircularContainerBorderColor = Colors.transparent,
    bottomSheetHeaderFontChildColor = Colors.black,
    bottomSheetHeaderSizeChildColor = Colors.black,
    bottomSheetHeaderColorChildColor = Colors.black,
    bottomSheetHeaderAlignChildColor = Colors.black,
    bottomSheetHeaderEffectChildColor = Colors.black,
    bottomSheetHeaderLeftAlignColor = Colors.black,
    bottomSheetHeaderCenterAlignColor = Colors.black,
    bottomSheetHeaderRightAlignColor = Colors.black;

Map<int, int> transparentColorHexCodeMap = {
  0xFFF0DC95: 0x00000000,
  0xFFFFFFFF: 0x00000000,
  0xFFD6D6D6: 0x00000000,
  0xFFF0AD6F: 0x00000000,
  0xFF977B58: 0x00000000,
  0xFFFFB400: 0x00000000,
  0xFFF44336: 0x00000000,
  0xFF2C91DE: 0x00000000,
  0xFF000000: 0x00000000,
  0xFF970E65: 0x00000000,
  0xFF650633: 0x00000000,
  0xFFF3A2A3: 0x00000000,
  0xFFD44F70: 0x00000000,
  0xFFCA0B15: 0x00000000,
  0xFF97070E: 0x00000000,
  0xFF8C011E: 0x00000000,
  0xFFF35D19: 0x00000000,
  0xFF9E5727: 0x00000000,
  0xFFD8B571: 0x00000000,
  0xFF978454: 0x00000000,
  0xFF870D4F: 0x00000000,
  0xFF8793D6: 0x00000000,
  0xFF866AA5: 0x00000000,
  0xFF552978: 0x00000000,
  0xFF1D549F: 0x00000000,
  0xFF073464: 0x00000000,
  0xFF55B2AE: 0x00000000,
  0xFF686868: 0x00000000,
  0xFFD5D5D5: 0x00000000,
  0xFFFFFAA3: 0x00000000,
  0xFFDEC989: 0x00000000,
  0xFFC0CFAF: 0x00000000,
  0xFF479446: 0x00000000,
  0xFFDB033F: 0x00000000,
  0xFFC36241: 0x00000000,
  0xFFF433FF: 0x00000000,
  0xFFF58F06: 0x00000000,
  0xFFCB41CE: 0x00000000,
  0xFF820000: 0x00000000,
  0xFFBA0120: 0x00000000,
  0xFFC69D69: 0x00000000,
  0xFFC30102: 0x00000000,
  0xFFD09B42: 0x00000000,
  0xFF3F5433: 0x00000000,
  0xFFC72A71: 0x00000000,
  0xFFD20220: 0x00000000,
  0xFFB31116: 0x00000000,
  0xFF255701: 0x00000000,
  0xFFF79323: 0x00000000,
  0xFF005FAD: 0x00000000,
  0xFFA5531E: 0x00000000,
  0xFFAD041B: 0x00000000,
  0xFF000457: 0x00000000,
  0xFFC57C08: 0x00000000,
  0xFFFBC300: 0x00000000,
  0xFF997311: 0x00000000,
  0xFFF1B31F: 0x00000000,
  0xFFB95326: 0x00000000,
  0xFF3C8557: 0x00000000,
  0xFF03A4AC: 0x00000000,
  0xFF0759BF: 0x00000000,
  0xFFB72E8D: 0x00000000,
  0xFF262165: 0x00000000,
  0xFFEB8472: 0x00000000,
  0xFF9CBECD: 0x00000000,
  0xFFCC709B: 0x00000000,
  0xFFF54C67: 0x00000000,
};

void initBottomSheetMainHeight({required int index, }) {

  transparentColorHexCodeMap[cardCustomizationDataModelList[containerIndex].textColor] = 0x00000000;
  containerIndex = index;
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
}

//change container border color to make it enable
void changeBorderColor({required int index}) {
  for(int i = 0; i < cardCustomizationDataModelList.length; i++) {

    if(i != index) {
      cardCustomizationDataModelList[i].customizeContainerBorderColor = cardCustomizationDataModelList[i].enableBorderColor;
      cardCustomizationScreenChangeNotifier.cardCustomizationSelectorControllerList[i] = !(cardCustomizationScreenChangeNotifier.cardCustomizationSelectorControllerList[i]);
    }
    else {
      cardCustomizationDataModelList[index].customizeContainerBorderColor = cardCustomizationDataModelList[index].activeBorderColor;
      cardCustomizationScreenChangeNotifier.cardCustomizationSelectorControllerList[index] = !(cardCustomizationScreenChangeNotifier.cardCustomizationSelectorControllerList[index]);
    }
  }
}

extension MonthName on DateTime? {
  String getMonthName({required int monthNumber}) {
    switch(monthNumber) {
      case 1 : {
        return 'January';
      }
      case 2 : {
        return 'February';
      }
      case 3 : {
        return 'March';
      }
      case 4 : {
        return 'April';
      }
      case 5 : {
        return 'May';
      }
      case 6 : {
        return 'June';
      }
      case 7 : {
        return 'July';
      }
      case 8 : {
        return 'August';
      }
      case 9 : {
        return 'September';
      }
      case 10 : {
        return 'October';
      }
      case 11 : {
        return 'November';
      }
      case 12 : {
        return 'December';
      }
      default : {
        return 'month';
      }
    }
  }
}

String appendDateSuffix({required int date}) {
  int digit;
  if (date >= 0 && date <= 9) {
    digit = date;
    switch (digit) {
      case 1:
        return '${date}st';
      case 2:
        return '${date}nd';
      case 3:
        return '${date}rd';
      default:
        return '${date}th';
    }
  } else if (date >= 10 && date <= 20) {
    return '${date}th';
  } else if (date >= 21 && date <= 99) {
    digit = date % 10;
    switch (digit) {
      case 1:
        return '${date}st';
      case 2:
        return '${date}nd';
      case 3:
        return '${date}rd';
      default:
        return '${date}th';
    }
  } else if (date >= 100 && date <= 999) {
    digit = date % 100;
    return appendDateSuffix(date: digit);
  }
  return '';
}

String appendSuffixAgainstNumber({required int number}) {
  int digit;
  if (number >= 0 && number <= 9) {
    digit = number;
    switch (digit) {
      case 1:
        return 'st';
      case 2:
        return 'nd';
      case 3:
        return 'rd';
      default:
        return 'th';
    }
  } else if (number >= 10 && number <= 20) {
    return 'th';
  } else if (number >= 21 && number <= 99) {
    digit = number % 10;
    switch (digit) {
      case 1:
        return 'st';
      case 2:
        return 'nd';
      case 3:
        return 'rd';
      default:
        return 'th';
    }
  } else if (number >= 100 && number <= 999) {
    digit = number % 100;
    return appendDateSuffix(date: digit);
  }
  return '';
}

class CardCustomizationBehavior {

  static const int cardCustomizationScreenAnimationSpeedController = 500;

  int  indexOfFont = -1, bottomSheetColorChildIndexToBeTransparent = 0;

  ScrollController fontListScrollController = ScrollController();

  String myExampleCardName = 'MyExampleCard';   //to be removed

  List<String> animatedTextGifList = [
    'assets/images/animated_text_gifs/fade.gif',
    'assets/images/animated_text_gifs/type_writer.gif',
    'assets/images/animated_text_gifs/scale.gif',
    'assets/images/animated_text_gifs/colorize.gif',
    'assets/images/animated_text_gifs/flicker.gif',
    // 'assets/images/animated_text_gifs/wavy.gif',
  ];

  List<String> fontNameList = [
    'Arimo',
    'TeXGyreTermes',
    'Great Vibes',
    'Learning Curve Pro',
    'Open Sans',
    'Open Sans Bold',
    'COM4t',
    'Mountains Of Christmas',
    'Quicksand',
    'Quicksand Bold',
    'Adelicia Script',
    'Parisienne',
    'Patrick Hand',
    'Spicy Rice',
    'Jenna Sue',
    'Josefin Slab',
    'Luckiest Guy',
    'Lato',
    'Cinzel',
    'Amatic SC',
    'Lobster',
    'Merri Weather',
    'Chopin Script',
    'Courgette',
    'Rozha One',
    'Alex Brush',
    'Billabong',
    'Aspire',
    'Angelina',
    'Meddon',
    'Yesteryear',
    'Ardeco',
    'Sail',
    'Vast Shadow',
    'Ribeye Marrow',
    'Let Trace',
    'Intuitive',
    'Kreon',
    'Kreon Bold',
    'Libre',
    'Libre italic',
    'Be Bright',
    'Brayden Script',
    'Blingtastic Script',
    'Bentham',
    'Stint Ultra',
    'Cheque',
    'Engry',
    'Amelia Giovani',
    'Bellasia',
    'Cathiy Betiey',
    'Sleeplesson',
    'Monsieur La Doulaise',
    'Alliana Script',
    'Oswald',
    'Playfair',
    'Shellia',
    'Mottona',
    'Handkerchief',
    'Aerotis',
    'BlackChancery',
    'Cambria',
    'Constantia',
    'FranklinGothicMedium',
    'LittleLordFontleroy',
    'Nature',
    'Parisienne',
    'Majalla',
    'Anydore',
    'Bungasai',
    'Georgia',
    'MfWeddingBells',
    'Acumin',
    'ClubParty',
    'Comic',
    'ArialNarrowRegular',
    'MagnoliaMonogram',
    'FuturaBold',
    'Blacksword',
    'Bahnschrift',
    'AdineKirnberg',
    'AngelTears',
    'Candara',
    'Darleston',
    'LucidaConsole',
    'MVBoli',
    'Sacramento',
    'FuturaLtBT',
  ];

  List<int> colorHexCodeList = [
    0xFFF0DC95,
    0xFFFFFFFF,
    0xFFD6D6D6,
    0xFFF0AD6F,
    0xFF977B58,
    0xFFFFB400,
    0xFFF44336,
    0xFF2C91DE,
    0xFF000000,
    0xFF970E65,
    0xFF650633,
    0xFFF3A2A3,
    0xFFD44F70,
    0xFFCA0B15,
    0xFF97070E,
    0xFF8C011E,
    0xFFF35D19,
    0xFF9E5727,
    0xFFD8B571,
    0xFF978454,
    0xFF870D4F,
    0xFF8793D6,
    0xFF866AA5,
    0xFF552978,
    0xFF1D549F,
    0xFF073464,
    0xFF55B2AE,
    0xFF686868,
    0xFFD5D5D5,
    0xFFFFFAA3,
    0xFFDEC989,
    0xFFC0CFAF,
    0xFF479446,
    0xFFDB033F,
    0xFFC36241,
    0xFFF433FF,
    0xFFF58F06,
    0xFFCB41CE,
    0xFF820000,
    0xFFBA0120,
    0xFFC69D69,
    0xFFC30102,
    0xFFD09B42,
    0xFF3F5433,
    0xFFC72A71,
    0xFFD20220,
    0xFFB31116,
    0xFF255701,
    0xFFF79323,
    0xFF005FAD,
    0xFFA5531E,
    0xFFAD041B,
    0xFF000457,
    0xFFC57C08,
    0xFFFBC300,
    0xFF997311,
    0xFFF1B31F,
    0xFFB95326,
    0xFF3C8557,
    0xFF03A4AC,
    0xFF0759BF,
    0xFFB72E8D,
    0xFF262165,
    0xFFEB8472,
    0xFF9CBECD,
    0xFFCC709B,
    0xFFF54C67,
  ];

  void initCardCustomizationDataModelList({required String cardName}) {
    cardCustomizationDataModelList.clear();
    switch(mainCategoryTitle) {
      case 'Wedding': {
        weddingSubCategoryDataModelList(cardName: cardName);
        break;
      }
      case 'Birthday': {
        birthdaySubCategoryDataModelList(cardName: cardName);
        break;
      }
      case 'Party': {
        partySubCategoryDataModelList(cardName: cardName);
        break;
      }
      case 'Announcements': {
        announcementsSubCategoryDataModelList(cardName: cardName);
        break;
      }
      case 'Babies & Kids': {
        babiesAndKidsSubCategoryDataModelList(cardName: cardName);
        break;
      }
    }
  }

  void weddingSubCategoryDataModelList({required String cardName}) {
    switch(subCategoryTitle) {
      case 'Wedding Invitations': {
        prepareWeddingInvitationsDataModelList(cardName: cardName);
        break;
      }
      case 'Bridal Shower': {
        prepareBridalShowerDataModelList(cardName: cardName);
        break;
      }
      case 'Engagement Party': {
        prepareEngagementPartyDataModelList(cardName: cardName);
        break;
      }
      case 'Bachelor Party': {
        prepareBachelorPartyDataModelList(cardName: cardName);
        break;
      }
      case 'Rehearsal Dinner': {
        prepareRehearsalDinnerDataModelList(cardName: cardName);
        break;
      }
      case 'Save The Date': {
        prepareSaveTheDateDataModelList(cardName: cardName);
        break;
      }
    }
  }

  void birthdaySubCategoryDataModelList({required String cardName}) {
    switch(subCategoryTitle) {
      case '1st Birthday': {
        prepareFirstBirthdayDataModelList(cardName: cardName);
        break;
      }
      case 'Baby Birthday': {
        prepareBabyBirthdayDataModelList(cardName: cardName);
        break;
      }
      case 'Kids Birthday': {
        prepareKidsBirthdayDataModelList(cardName: cardName);
        break;
      }
      case 'Men\'s Birthday': {
        prepareMensBirthdayDataModelList(cardName: cardName);
        break;
      }
      case 'Women\'s Birthday': {
        prepareWomensBirthdayDataModelList(cardName: cardName);
        break;
      }
    }
  }

  void partySubCategoryDataModelList({required String cardName}) {
    switch(subCategoryTitle) {
      case 'Anniversary': {
        prepareAnniversaryDataModelList(cardName: cardName);
        break;
      }
      case 'BBQ Party': {
        prepareBBQPartyDataModelList(cardName: cardName);
        break;
      }
      case 'Christmas Party': {
        prepareChristmasPartyDataModelList(cardName: cardName);
        break;
      }
      case 'Cocktail Party': {
        prepareCocktailPartyDataModelList(cardName: cardName);
        break;
      }
      case 'Dinner Party': {
        prepareDinnerPartyDataModelList(cardName: cardName);
        break;
      }
      case 'Family Reunion': {
        prepareFamilyReunionDataModelList(cardName: cardName);
        break;
      }
      case 'Graduation Party': {
        prepareGraduationPartyDataModelList(cardName: cardName);
        break;
      }
      case 'Happy New Year': {
        prepareHappyNewYearDataModelList(cardName: cardName);
        break;
      }
      case 'Housewarming': {
        prepareHousewarmingDataModelList(cardName: cardName);
        break;
      }
      case 'Retirement Party': {
        prepareRetirementPartyDataModelList(cardName: cardName);
        break;
      }
      case 'Sleepover Party': {
        prepareSleepoverPartyDataModelList(cardName: cardName);
        break;
      }
      case 'Summer & Pool': {
        prepareSummerAndPoolDataModelList(cardName: cardName);
        break;
      }
    }
  }

  void announcementsSubCategoryDataModelList({required String cardName}) {
    switch(subCategoryTitle) {
      case 'Birth': {
        prepareBirthDataModelList(cardName: cardName);
        break;
      }
      case 'Engagement': {
        prepareEngagementDataModelList(cardName: cardName);
        break;
      }
      case 'Graduation': {
        prepareGraduationDataModelList(cardName: cardName);
        break;
      }
      case 'Memorial': {
        prepareMemorialDataModelList(cardName: cardName);
        break;
      }
      case 'Moving': {
        prepareMovingDataModelList(cardName: cardName);
        break;
      }
      case 'Pregnancy': {
        preparePregnancyDataModelList(cardName: cardName);
        break;
      }
      case 'Save the date': {
        prepareSaveTheDateAnnouncementDataModelList(cardName: cardName);
        break;
      }
      case 'Wedding': {
        prepareWeddingAnnouncementDataModelList(cardName: cardName);
        break;
      }
    }
  }

  void babiesAndKidsSubCategoryDataModelList({required String cardName}) {
    switch(subCategoryTitle) {
      case '1st Birthday': {
        prepareBabiesAndKidsFirstBirthdayDataModelList(cardName: cardName);
        break;
      }
      case 'Baby Birthday': {
        prepareBabiesAndKidsBabyBirthdayDataModelList(cardName: cardName);
        break;
      }
      case 'Baby Shower': {
        prepareBabyShowerDataModelList(cardName: cardName);
        break;
      }
      case 'Baby Sprinkle': {
        prepareBabySprinkleDataModelList(cardName: cardName);
        break;
      }
      case 'Baptism & Christening': {
        prepareBaptismAndChristeningDataModelList(cardName: cardName);
        break;
      }
      case 'First Communion': {
        prepareFirstCommunionDataModelList(cardName: cardName);
        break;
      }
      case 'Gender Reveal': {
        prepareGenderRevealDataModelList(cardName: cardName);
        break;
      }
      case 'Kids Birthday': {
        prepareBabiesAndKidsKidsBirthdayDataModelList(cardName: cardName);
        break;
      }
      case 'Sip & See': {
        prepareSipAndSeeDataModelList(cardName: cardName);
        break;
      }
    }
  }

  void prepareWeddingInvitationsDataModelList({required String cardName}) {
    switch(cardName) {
      case 'assets/images/wedding/wedding_invitations/wedding_wedding_invitations_one.jpg': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Majalla', fontSize: 19,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Parisienne', fontSize: 22,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Parisienne', fontSize: 22));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Majalla', fontSize: 16));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Majalla', fontSize: 15,));
        break;
      }

      case 'assets/images/wedding/wedding_invitations/wedding_wedding_invitations_two.jpg': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Cambria', fontSize: 12, textColor: 0xFFDEC989, activeBorderColor: const Color(0xFFDEC989), enableBorderColor: const Color(0xFF857952)));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'LittleLordFontleroy', fontSize: 28, textColor: 0xFFDEC989, activeBorderColor: const Color(0xFFDEC989), enableBorderColor: const Color(0xFF857952)));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'LittleLordFontleroy', fontSize: 25, textColor: 0xFFDEC989, activeBorderColor: const Color(0xFFDEC989), enableBorderColor: const Color(0xFF857952)));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'LittleLordFontleroy', fontSize: 28, textColor: 0xFFDEC989, activeBorderColor: const Color(0xFFDEC989), enableBorderColor: const Color(0xFF857952)));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Cambria', fontSize: 11, textColor: 0xFFDEC989, activeBorderColor: const Color(0xFFDEC989), enableBorderColor: const Color(0xFF857952)));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'LittleLordFontleroy', fontSize: 15, textColor: 0xFFDEC989, activeBorderColor: const Color(0xFFDEC989), enableBorderColor: const Color(0xFF857952)));
        break;
      }

      case 'assets/images/wedding/wedding_invitations/wedding_wedding_invitations_three.jpg': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Majalla', fontSize: 15,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'GreatVibes', fontSize: 25,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'GreatVibes', fontSize: 15,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'GreatVibes', fontSize: 25,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Majalla', fontSize: 11,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'GreatVibes', fontSize: 12));
        break;
      }

      case 'assets/images/wedding/wedding_invitations/wedding_wedding_invitations_four.jpg': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Majalla', fontSize: 15, textColor: 0xFFFFFFFF, activeBorderColor: const Color(0xFFFFFFFF), enableBorderColor: const Color(0xFF857952)));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'LittleLordFontleroy', fontSize: 35, textColor: 0xFFFFFFFF, activeBorderColor: const Color(0xFFFFFFFF), enableBorderColor: const Color(0xFF857952)));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Majalla', fontSize: 35, textColor: 0xFFFFFFFF, activeBorderColor: const Color(0xFFFFFFFF), enableBorderColor: const Color(0xFF857952)));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'LittleLordFontleroy', fontSize: 35, textColor: 0xFFFFFFFF, activeBorderColor: const Color(0xFFFFFFFF), enableBorderColor: const Color(0xFF857952)));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Majalla', fontSize: 15, textColor: 0xFFFFFFFF, activeBorderColor: const Color(0xFFFFFFFF), enableBorderColor: const Color(0xFF857952)));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Majalla', fontSize: 13, textColor: 0xFFFFFFFF, activeBorderColor: const Color(0xFFFFFFFF), enableBorderColor: const Color(0xFF857952)));
        break;
      }

      case 'assets/images/wedding/wedding_invitations/wedding_wedding_invitations_five.jpg': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FranklinGothicMedium', fontSize: 12,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Parisienne', fontSize: 27,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Parisienne', fontSize: 25,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Parisienne', fontSize: 27,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FranklinGothicMedium', fontSize: 11,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Parisienne', fontSize: 13,));
        break;
      }

      case 'assets/images/wedding/wedding_invitations/wedding_wedding_invitations_six.jpg': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Cambria', fontSize: 15,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'GreatVibes', fontSize: 32,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'GreatVibes', fontSize: 25,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'GreatVibes', fontSize: 32,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Cambria', fontSize: 13,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'GreatVibes', fontSize: 17,));
        break;
      }

      case 'assets/images/wedding/wedding_invitations/wedding_wedding_invitations_seven.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Cambria', fontSize: 13,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'BlackChancery', fontSize: 25,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'BlackChancery', fontSize: 15,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'BlackChancery', fontSize: 25,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Cambria', fontSize: 13,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Cambria', fontSize: 12,));
        break;
      }

      case 'assets/images/wedding/wedding_invitations/wedding_wedding_invitations_eight.jpg': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Cambria', fontSize: 13,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'BlackChancery', fontSize: 25,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'BlackChancery', fontSize: 15,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'BlackChancery', fontSize: 25,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Cambria', fontSize: 13,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Cambria', fontSize: 12,));
        break;
      }

      case 'assets/images/wedding/wedding_invitations/wedding_wedding_invitations_nine.jpg': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Cambria', fontSize: 14, textColor: 0xFF977B58, activeBorderColor: const Color(0xFF977B58), enableBorderColor: const Color(0xFFcbbdac)));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'GreatVibes', fontSize: 28, textColor: 0xFF977B58, activeBorderColor: const Color(0xFF977B58), enableBorderColor: const Color(0xFFcbbdac)));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'GreatVibes', fontSize: 25, textColor: 0xFF977B58, activeBorderColor: const Color(0xFF977B58), enableBorderColor: const Color(0xFFcbbdac)));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'GreatVibes', fontSize: 28, textColor: 0xFF977B58, activeBorderColor: const Color(0xFF977B58), enableBorderColor: const Color(0xFFcbbdac)));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Cambria', fontSize: 13, textColor: 0xFF977B58, activeBorderColor: const Color(0xFF977B58), enableBorderColor: const Color(0xFFcbbdac)));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Cambria', fontSize: 12, textColor: 0xFF977B58, activeBorderColor: const Color(0xFF977B58), enableBorderColor: const Color(0xFFcbbdac)));
        break;
      }

      case 'assets/images/wedding/wedding_invitations/wedding_wedding_invitations_ten.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Cambria', fontSize: 12,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Cambria', fontSize: 25,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Cambria', fontSize: 20,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Cambria', fontSize: 25,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Cambria', fontSize: 11,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Cambria', fontSize: 12,));
        break;
      }

      case 'assets/images/wedding/wedding_invitations/wedding_wedding_invitations_eleven.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Cambria', fontSize: 12,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'GreatVibes', fontSize: 25, textColor: 0xFFF44336));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'GreatVibes', fontSize: 25, textColor: 0xFFF44336));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'GreatVibes', fontSize: 25, textColor: 0xFFF44336));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Cambria', fontSize: 12,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Cambria', fontSize: 11,));
        break;
      }

      case 'assets/images/wedding/wedding_invitations/wedding_wedding_invitations_twelve.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Cambria', fontSize: 13,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'BlackChancery', fontSize: 25,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'BlackChancery', fontSize: 15,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'BlackChancery', fontSize: 25,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Cambria', fontSize: 13,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Cambria', fontSize: 12,));
        break;
      }

      case 'assets/images/wedding/wedding_invitations/wedding_wedding_invitations_thirteen.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Cambria', fontSize: 13,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'BlackChancery', fontSize: 25,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'BlackChancery', fontSize: 15,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'BlackChancery', fontSize: 25,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Cambria', fontSize: 13,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Cambria', fontSize: 12,));
        break;
      }

      case 'assets/images/wedding/wedding_invitations/wedding_wedding_invitations_fourteen.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Cambria', fontSize: 13,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'BlackChancery', fontSize: 25,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'BlackChancery', fontSize: 15,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'BlackChancery', fontSize: 25,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Cambria', fontSize: 13,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Cambria', fontSize: 12,));
        break;
      }
    }
  }

  void prepareBridalShowerDataModelList({required String cardName}) {
    switch(cardName) {
      case 'assets/images/wedding/bridal_shower/wedding_bridal_shower_one.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 13,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'GreatVibes', fontSize: 40, textColor: 0xFFF44336));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 15,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 25,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 13,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 12,));
        break;
      }

      case 'assets/images/wedding/bridal_shower/wedding_bridal_shower_two.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 10,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 30,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 15,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Bungasai', fontSize: 35, textColor: 0xFF8C011E));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 13,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 12,));
        break;
      }

      case 'assets/images/wedding/bridal_shower/wedding_bridal_shower_three.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 11,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'GreatVibes', fontSize: 25, textColor: 0xFF870D4F));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 12,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 25,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 10,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 10,));
        break;
      }

      case 'assets/images/wedding/bridal_shower/wedding_bridal_shower_four.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 11,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'GreatVibes', fontSize: 30, textColor: 0xFF479446));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 12,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 23,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 11,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 10,));
        break;
      }

      case 'assets/images/wedding/bridal_shower/wedding_bridal_shower_five.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Cambria', fontSize: 11,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Bungasai', fontSize: 25,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Cambria', fontSize: 12,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Cambria', fontSize: 35,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Cambria', fontSize: 10,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Cambria', fontSize: 10,));
        break;
      }

      case 'assets/images/wedding/bridal_shower/wedding_bridal_shower_six.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 11,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 25,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 12,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Anydore', fontSize: 25,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 12,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 12,));
        break;
      }
    }
  }

  void prepareEngagementPartyDataModelList({required String cardName}) {
    switch(cardName) {
      case 'assets/images/wedding/engagement_party/wedding_engagement_party_one.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FranklinGothicMedium', fontSize: 13,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'GreatVibes', fontSize: 25, textColor: 0xFFDB033F));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'GreatVibes', fontSize: 15, textColor: 0xFFDB033F));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'GreatVibes', fontSize: 25, textColor: 0xFFDB033F));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FranklinGothicMedium', fontSize: 11,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FranklinGothicMedium', fontSize: 10,));
        break;
      }

      case 'assets/images/wedding/engagement_party/wedding_engagement_party_two.jpg': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 13,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'GreatVibes', fontSize: 25, textColor: 0xFFF58F06));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'GreatVibes', fontSize: 15,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'GreatVibes', fontSize: 25, textColor: 0xFFF58F06));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 13,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 10,));
        break;
      }

      case 'assets/images/wedding/engagement_party/wedding_engagement_party_three.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FranklinGothicMedium', fontSize: 13,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'GreatVibes', fontSize: 25, textColor: 0xFFCB41CE));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'GreatVibes', fontSize: 15, textColor: 0xFFCB41CE));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'GreatVibes', fontSize: 25, textColor: 0xFFCB41CE));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FranklinGothicMedium', fontSize: 11,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FranklinGothicMedium', fontSize: 10,));
        break;
      }

      case 'assets/images/wedding/engagement_party/wedding_engagement_party_four.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 13,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 25,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 15,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 25,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 11,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 10,));
        break;
      }

      case 'assets/images/wedding/engagement_party/wedding_engagement_party_five.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 13, textColor: 0xFFFFFFFF, activeBorderColor: Colors.white, enableBorderColor: Colors.white38));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'MfWeddingBells', fontSize: 25, textColor: 0xFFFFFFFF, activeBorderColor: Colors.white, enableBorderColor: Colors.white38));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'MfWeddingBells', fontSize: 15, textColor: 0xFFFFFFFF, activeBorderColor: Colors.white, enableBorderColor: Colors.white38));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'MfWeddingBells', fontSize: 25, textColor: 0xFFFFFFFF, activeBorderColor: Colors.white, enableBorderColor: Colors.white38));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 13, textColor: 0xFFFFFFFF, activeBorderColor: Colors.white, enableBorderColor: Colors.white38));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 12, textColor: 0xFFFFFFFF, activeBorderColor: Colors.white, enableBorderColor: Colors.white38));
        break;
      }

      case 'assets/images/wedding/engagement_party/wedding_engagement_party_six.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FranklinGothicMedium', fontSize: 13,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Bungasai', fontSize: 20, textColor: 0xFF820000));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Bungasai', fontSize: 15, textColor: 0xFF820000));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Bungasai', fontSize: 20, textColor: 0xFF820000));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FranklinGothicMedium', fontSize: 11,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FranklinGothicMedium', fontSize: 10,));
        break;
      }

      case 'assets/images/wedding/engagement_party/wedding_engagement_party_seven.jpg': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Cambria', fontSize: 13,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'GreatVibes', fontSize: 25,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'GreatVibes', fontSize: 15,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'GreatVibes', fontSize: 25,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Cambria', fontSize: 13,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Cambria', fontSize: 12,));
        break;
      }
    }
  }

  void prepareBachelorPartyDataModelList({required String cardName}) {
    switch(cardName) {
      case 'assets/images/wedding/bachelor_party/wedding_bachelor_party_one.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'BlackChancery', fontSize: 35, textColor: 0xFFBA0120));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Cambria', fontSize: 13,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Cambria', fontSize: 25,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Cambria', fontSize: 13,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Cambria', fontSize: 12,));
        break;
      }

      case 'assets/images/wedding/bachelor_party/wedding_bachelor_party_two.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 13, textColor: 0xFFFFFFFF, activeBorderColor: Colors.white, enableBorderColor: Colors.white38));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'ClubParty', fontSize: 30, textColor: 0xFFFFFFFF, activeBorderColor: Colors.white, enableBorderColor: Colors.white38));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 15, textColor: 0xFFFFFFFF, activeBorderColor: Colors.white, enableBorderColor: Colors.white38));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 25, textColor: 0xFFFFFFFF, activeBorderColor: Colors.white, enableBorderColor: Colors.white38));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 12, textColor: 0xFFFFFFFF, activeBorderColor: Colors.white, enableBorderColor: Colors.white38));
        break;
      }

      case 'assets/images/wedding/bachelor_party/wedding_bachelor_party_three.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Comic', fontSize: 13,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Acumin', fontSize: 28,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Comic', fontSize: 20,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Comic', fontSize: 13,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Comic', fontSize: 12,));
        break;
      }

      case 'assets/images/wedding/bachelor_party/wedding_bachelor_party_four.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'BlackChancery', fontSize: 35,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Cambria', fontSize: 13,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Cambria', fontSize: 25,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Cambria', fontSize: 13,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Cambria', fontSize: 12,));
        break;
      }
    }
  }

  void prepareRehearsalDinnerDataModelList({required String cardName}) {
    switch(cardName) {
      case 'assets/images/wedding/rehearsal_dinner/wedding_rehearsal_dinner_one.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Comic', fontSize: 13,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Parisienne', fontSize: 25,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Parisienne', fontSize: 15,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Parisienne', fontSize: 25,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Comic', fontSize: 13,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Comic', fontSize: 12,));
        break;
      }

      case 'assets/images/wedding/rehearsal_dinner/wedding_rehearsal_dinner_two.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 13,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 20,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 15,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 20,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 13,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 12,));
        break;
      }

      case 'assets/images/wedding/rehearsal_dinner/wedding_rehearsal_dinner_three.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Comic', fontSize: 10,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Bungasai', fontSize: 20, textColor: 0xFFC69D69));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Bungasai', fontSize: 13,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Bungasai', fontSize: 20, textColor: 0xFFC69D69));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Comic', fontSize: 9,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Comic', fontSize: 8,));
        break;
      }
    }
  }

  void prepareSaveTheDateDataModelList({required String cardName}) {
    switch(cardName) {
      case 'assets/images/wedding/save_the_date/wedding_save_the_date_one.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Bungasai', fontSize: 25,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'ArialNarrowRegular', fontSize: 13,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Bungasai', fontSize: 17,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Bungasai', fontSize: 17,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'ArialNarrowRegular', fontSize: 10,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'ArialNarrowRegular', fontSize: 9,));
        break;
      }

      case 'assets/images/wedding/save_the_date/wedding_save_the_date_two.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'LittleLordFontleroy', fontSize: 35,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 11,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'LittleLordFontleroy', fontSize: 25,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'LittleLordFontleroy', fontSize: 25,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 10,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 9,));
        break;
      }
    }
  }

  void prepareFirstBirthdayDataModelList({required String cardName}) {
    switch(cardName) {
      case 'assets/images/birthday/first_birthday/birthday_first_birthday_one.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Arimo', fontSize: 15,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Arimo', fontSize: 15,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'GreatVibes', fontSize: 35, textColor: 0xFFC30102));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Arimo', fontSize: 20,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Arimo', fontSize: 10,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Arimo', fontSize: 9,));
        break;
      }

      case 'assets/images/birthday/first_birthday/birthday_first_birthday_two.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 15,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 10,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'ClubParty', fontSize: 12,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'MagnoliaMonogram', fontSize: 25,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 10,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 9,));
        break;
      }

      case 'assets/images/birthday/first_birthday/birthday_first_birthday_three.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 13,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 10,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'LittleLordFontleroy', fontSize: 25,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 15,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 10,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 9,));
        break;
      }
    }
  }

  void prepareBabyBirthdayDataModelList({required String cardName}) {
    switch(cardName) {
      case 'assets/images/birthday/baby_birthday/birthday_baby_birthday_one.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'GreatVibes', fontSize: 40, textColor: 0xFFFFFFFF, activeBorderColor: Colors.white, enableBorderColor: Colors.white38));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 15, textColor: 0xFFFFFFFF, activeBorderColor: Colors.white, enableBorderColor: Colors.white38));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'GreatVibes', fontSize: 35, textColor: 0xFFFFFFFF, activeBorderColor: Colors.white, enableBorderColor: Colors.white38));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'GreatVibes', fontSize: 25, textColor: 0xFFFFFFFF, activeBorderColor: Colors.white, enableBorderColor: Colors.white38));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 10, textColor: 0xFFFFFFFF, activeBorderColor: Colors.white, enableBorderColor: Colors.white38));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 9, textColor: 0xFFFFFFFF, activeBorderColor: Colors.white, enableBorderColor: Colors.white38));
        break;
      }

      case 'assets/images/birthday/baby_birthday/birthday_baby_birthday_two.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 15, textColor: 0xFFFFFFFF, activeBorderColor: Colors.white, enableBorderColor: Colors.white38));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 35, textColor: 0xFFFFFFFF, activeBorderColor: Colors.white, enableBorderColor: Colors.white38));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 25, textColor: 0xFFFFFFFF, activeBorderColor: Colors.white, enableBorderColor: Colors.white38));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 10, textColor: 0xFFFFFFFF, activeBorderColor: Colors.white, enableBorderColor: Colors.white38));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 9, textColor: 0xFFFFFFFF, activeBorderColor: Colors.white, enableBorderColor: Colors.white38));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 9, textColor: 0xFFFFFFFF, activeBorderColor: Colors.white, enableBorderColor: Colors.white38));
        break;
      }
    }
  }

  void prepareKidsBirthdayDataModelList({required String cardName}) {
    switch(cardName) {
      case 'assets/images/birthday/kids_birthday/birthday_kids_birthday_one.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FuturaBold', fontSize: 15,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FuturaBold', fontSize: 25,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FuturaBold', fontSize: 25,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FuturaBold', fontSize: 10,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FuturaBold', fontSize: 9,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FuturaBold', fontSize: 9,));
        break;
      }

      case 'assets/images/birthday/kids_birthday/birthday_kids_birthday_two.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'BlackChancery', fontSize: 13,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Blacksword', fontSize: 25,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Blacksword', fontSize: 25,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'BlackChancery', fontSize: 13,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'BlackChancery', fontSize: 9,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'BlackChancery', fontSize: 9,));
        break;
      }

      case 'assets/images/birthday/kids_birthday/birthday_kids_birthday_three.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 13,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 25,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Parisienne', fontSize: 30, textColor: 0xFFC30102));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 13,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 9,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 9,));
        break;
      }
    }
  }

  void prepareMensBirthdayDataModelList({required String cardName}) {
    switch(cardName) {
      case 'assets/images/birthday/mens_birthday/birthday_men_birthday_one.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Bahnschrift', fontSize: 15, textColor: 0xFFFFFFFF, activeBorderColor: Colors.white, enableBorderColor: Colors.white38));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Bahnschrift', fontSize: 60, textColor: 0xFFD09B42, activeBorderColor: Colors.white, enableBorderColor: Colors.white38));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Bahnschrift', fontSize: 25, textColor: 0xFFFFFFFF, activeBorderColor: Colors.white, enableBorderColor: Colors.white38));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FuturaBold', fontSize: 23, textColor: 0xFFFFFFFF, activeBorderColor: Colors.white, enableBorderColor: Colors.white38));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Bahnschrift', fontSize: 10, textColor: 0xFFFFFFFF, activeBorderColor: Colors.white, enableBorderColor: Colors.white38));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Bahnschrift', fontSize: 9, textColor: 0xFFFFFFFF, activeBorderColor: Colors.white, enableBorderColor: Colors.white38));
        break;
      }

      case 'assets/images/birthday/mens_birthday/birthday_men_birthday_two.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Bahnschrift', fontSize: 15,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FuturaBold', fontSize: 20, textColor: 0xFF3F5433));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FuturaBold', fontSize: 20,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Bahnschrift', fontSize: 13,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Bahnschrift', fontSize: 10,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Bahnschrift', fontSize: 9,));
        break;
      }
    }
  }

  void prepareWomensBirthdayDataModelList({required String cardName}) {
    switch(cardName) {
      case 'assets/images/birthday/womens_birthday/birthday_women_birthday_one.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 12,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Blacksword', fontSize: 25,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 25, textColor: 0xFFC72A71));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 12,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 10,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 9,));
        break;
      }

      case 'assets/images/birthday/womens_birthday/birthday_women_birthday_two.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 12,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Parisienne', fontSize: 20, textColor: 0xFFC72A71));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 25,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 23,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 10,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 9,));
        break;
      }

      case 'assets/images/birthday/womens_birthday/birthday_women_birthday_three.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Bahnschrift', fontSize: 13,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Blacksword', fontSize: 20, textColor: 0xFFF44336));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Bahnschrift', fontSize: 25,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Blacksword', fontSize: 25, textColor: 0xFFF44336));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Bahnschrift', fontSize: 12,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Bahnschrift', fontSize: 10,));
        break;
      }
    }
  }

  void prepareAnniversaryDataModelList({required String cardName}) {
    switch(cardName) {
      case 'assets/images/party/anniversary/party_anniversary_one.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 11,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 20,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'AdineKirnberg', fontSize: 30,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'AdineKirnberg', fontSize: 30,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 10,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 9,));
        break;
      }

      case 'assets/images/party/anniversary/party_anniversary_two.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Candara', fontSize: 11,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'AlexBrush', fontSize: 27, textColor: 0xFFD20220));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'AlexBrush', fontSize: 20,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'AlexBrush', fontSize: 27, textColor: 0xFFD20220));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Candara', fontSize: 10,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Candara', fontSize: 9,));
        break;
      }

      case 'assets/images/party/anniversary/party_anniversary_three.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'GreatVibes', fontSize: 20,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FuturaBold', fontSize: 20, textColor: 0xFFD20220));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FuturaBold', fontSize: 20, textColor: 0xFFD20220));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 20,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 10,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 9,));
        break;
      }
    }
  }

  void prepareBBQPartyDataModelList({required String cardName}) {
    switch(cardName) {
      case 'assets/images/party/bbq_party/party_bbq_party_one.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FuturaBold', fontSize: 11,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FuturaBold', fontSize: 13,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FuturaBold', fontSize: 20,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FuturaBold', fontSize: 30,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FuturaBold', fontSize: 10,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FuturaBold', fontSize: 9,));
        break;
      }

      case 'assets/images/party/bbq_party/party_bbq_party_two.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FuturaBold', fontSize: 11,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FuturaBold', fontSize: 13,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FuturaBold', fontSize: 35, textColor: 0xFFF44336));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FuturaBold', fontSize: 15,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FuturaBold', fontSize: 10,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FuturaBold', fontSize: 9,));
        break;
      }
    }
  }

  void prepareChristmasPartyDataModelList({required String cardName}) {
    switch(cardName) {
      case 'assets/images/party/christmas_party/party_christmas_party_one.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 20,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 13,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 30, textColor: 0xFFF44336));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 20,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 12,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 10,));
        break;
      }

      case 'assets/images/party/christmas_party/party_christmas_party_two.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FuturaBold', fontSize: 20, textColor: 0xFF255701));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FuturaBold', fontSize: 13, textColor: 0xFF255701));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Bungasai', fontSize: 30, textColor: 0xFFB31116));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FuturaBold', fontSize: 12, textColor: 0xFF255701));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FuturaBold', fontSize: 12, textColor: 0xFF255701));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FuturaBold', fontSize: 10, textColor: 0xFF255701));
        break;
      }

      case 'assets/images/party/christmas_party/party_christmas_party_three.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Candara', fontSize: 15,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Candara', fontSize: 13,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'GreatVibes', fontSize: 30, textColor: 0xFFD20220));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Candara', fontSize: 11,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Candara', fontSize: 10,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Candara', fontSize: 9,));
        break;
      }

      case 'assets/images/party/christmas_party/party_christmas_party_four.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FuturaBold', fontSize: 20, textColor: 0xFFFFFFFF, activeBorderColor: Colors.white, enableBorderColor: Colors.white38));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FuturaBold', fontSize: 13, textColor: 0xFFFFFFFF, activeBorderColor: Colors.white, enableBorderColor: Colors.white38));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Arimo', fontSize: 30, textColor: 0xFFFFFFFF, activeBorderColor: Colors.white, enableBorderColor: Colors.white38));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FuturaBold', fontSize: 12, textColor: 0xFFFFFFFF, activeBorderColor: Colors.white, enableBorderColor: Colors.white38));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FuturaBold', fontSize: 12, textColor: 0xFFFFFFFF, activeBorderColor: Colors.white, enableBorderColor: Colors.white38));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FuturaBold', fontSize: 10, textColor: 0xFFFFFFFF, activeBorderColor: Colors.white, enableBorderColor: Colors.white38));
        break;
      }
    }
  }

  void prepareCocktailPartyDataModelList({required String cardName}) {
    switch(cardName) {
      case 'assets/images/party/cocktail_party/party_cocktail_party_one.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 20, textColor: 0xFFFFFFFF, activeBorderColor: Colors.white, enableBorderColor: Colors.white38));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 13, textColor: 0xFFFFFFFF, activeBorderColor: Colors.white, enableBorderColor: Colors.white38));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 30, textColor: 0xFFF79323, activeBorderColor: Colors.white, enableBorderColor: Colors.white38));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 17, textColor: 0xFFFFFFFF, activeBorderColor: Colors.white, enableBorderColor: Colors.white38));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 12, textColor: 0xFFFFFFFF, activeBorderColor: Colors.white, enableBorderColor: Colors.white38));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 10, textColor: 0xFFFFFFFF, activeBorderColor: Colors.white, enableBorderColor: Colors.white38));
        break;
      }

      case 'assets/images/party/cocktail_party/party_cocktail_party_two.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'LucidaConsole', fontSize: 20,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'LucidaConsole', fontSize: 13,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 30,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'LucidaConsole', fontSize: 17,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'LucidaConsole', fontSize: 12,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'LucidaConsole', fontSize: 10,));
        break;
      }

      case 'assets/images/party/cocktail_party/party_cocktail_party_three.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 15,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 13,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 30,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Parisienne', fontSize: 17,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 12, textAlignment: TextAlign.right));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 10, textAlignment: TextAlign.right));
        break;
      }

      case 'assets/images/party/cocktail_party/party_cocktail_party_four.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 15,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 13,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Bungasai', fontSize: 30, textColor: 0xFF005FAD));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 17,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 12,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 10,));
        break;
      }
    }
  }

  void prepareDinnerPartyDataModelList({required String cardName}) {
    switch(cardName) {
      case 'assets/images/party/dinner_party/party_dinner_party_one.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FranklinGothicMedium', fontSize: 15, textColor: 0xFFFFFFFF, activeBorderColor: Colors.white, enableBorderColor: Colors.white38));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FranklinGothicMedium', fontSize: 12, textColor: 0xFFFFFFFF, activeBorderColor: Colors.white, enableBorderColor: Colors.white38));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'LittleLordFontleroy', fontSize: 30, textColor: 0xFFFFFFFF, activeBorderColor: Colors.white, enableBorderColor: Colors.white38));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FranklinGothicMedium', fontSize: 17, textColor: 0xFFFFFFFF, activeBorderColor: Colors.white, enableBorderColor: Colors.white38));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FranklinGothicMedium', fontSize: 12, textColor: 0xFFFFFFFF, activeBorderColor: Colors.white, enableBorderColor: Colors.white38));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FranklinGothicMedium', fontSize: 10, textColor: 0xFFFFFFFF, activeBorderColor: Colors.white, enableBorderColor: Colors.white38));
        break;
      }

      case 'assets/images/party/dinner_party/party_dinner_party_two.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 15,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 12,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 30, textColor: 0xFFF44336));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 17,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 12,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 10,));
        break;
      }

      case 'assets/images/party/dinner_party/party_dinner_party_three.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 15, textColor: 0xFFA5531E));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 12, textColor: 0xFFA5531E));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Parisienne', fontSize: 30, textColor: 0xFFA5531E));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 17, textColor: 0xFFA5531E));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 12, textColor: 0xFFA5531E));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 10, textColor: 0xFFA5531E));
        break;
      }

      case 'assets/images/party/dinner_party/party_dinner_party_four.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 15, textColor: 0xFFAD041B));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 12, textColor: 0xFFAD041B));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'AngelTears', fontSize: 70, textColor: 0xFFAD041B));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 17, textColor: 0xFFAD041B));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 12, textColor: 0xFFAD041B));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 10, textColor: 0xFFAD041B));
        break;
      }

      case 'assets/images/party/dinner_party/party_dinner_party_five.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 15,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 12,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Parisienne', fontSize: 30, textColor: 0xFFD44F70));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 17,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 12,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 10,));
        break;
      }
    }
  }

  void prepareFamilyReunionDataModelList({required String cardName}) {
    switch(cardName) {
      case 'assets/images/party/family_reunion/party_family_reunion_one.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 13,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 11,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 25,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 17,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 11,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 10,));
        break;
      }

      case 'assets/images/party/family_reunion/party_family_reunion_two.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Comic', fontSize: 13,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Comic', fontSize: 11,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Comic', fontSize: 20,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Comic', fontSize: 17,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Comic', fontSize: 11,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Comic', fontSize: 9,));
        break;
      }

      case 'assets/images/party/family_reunion/party_family_reunion_three.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FuturaBold', fontSize: 13,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FuturaBold', fontSize: 11,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Darleston', fontSize: 35, textColor: 0xFFD20220));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FuturaBold', fontSize: 25, textColor: 0xFFFFFFFF));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FuturaBold', fontSize: 11,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FuturaBold', fontSize: 9,));
        break;
      }
    }
  }

  void prepareGraduationPartyDataModelList({required String cardName}) {
    switch(cardName) {
      case 'assets/images/party/graduation_party/party_graduation_party_one.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 13,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'LittleLordFontleroy', fontSize: 40,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 15,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'LittleLordFontleroy', fontSize: 40,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 10,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 10,));
        break;
      }

      case 'assets/images/party/graduation_party/party_graduation_party_two.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FuturaBold', fontSize: 13,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FuturaBold', fontSize: 15, textColor: 0xFF000457));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FuturaBold', fontSize: 15,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FuturaBold', fontSize: 20, textColor: 0xFF000457));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FuturaBold', fontSize: 10,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FuturaBold', fontSize: 10,));
        break;
      }

      case 'assets/images/party/graduation_party/party_graduation_party_three.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FuturaBold', fontSize: 13,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 25, textColor: 0xFFC57C08));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FuturaBold', fontSize: 15,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'GreatVibes', fontSize: 30,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FuturaBold', fontSize: 10,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FuturaBold', fontSize: 10,));
        break;
      }
    }
  }

  void prepareHappyNewYearDataModelList({required String cardName}) {
    switch(cardName) {
      case 'assets/images/party/happy_new_year/party_happy_new_year_one.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 15, textColor: 0xFFFFFFFF, activeBorderColor: Colors.white, enableBorderColor: Colors.white38));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 12, textColor: 0xFFFFFFFF, activeBorderColor: Colors.white, enableBorderColor: Colors.white38));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 20, textColor: 0xFFFFFFFF, activeBorderColor: Colors.white, enableBorderColor: Colors.white38));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 17, textColor: 0xFFFFFFFF, activeBorderColor: Colors.white, enableBorderColor: Colors.white38));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 12, textColor: 0xFFFFFFFF, activeBorderColor: Colors.white, enableBorderColor: Colors.white38));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 10, textColor: 0xFFFFFFFF, activeBorderColor: Colors.white, enableBorderColor: Colors.white38));
        break;
      }

      case 'assets/images/party/happy_new_year/party_happy_new_year_two.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 13,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 20,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 15,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 15,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 12,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 10,));
        break;
      }
    }
  }

  void prepareHousewarmingDataModelList({required String cardName}) {
    switch(cardName) {
      case 'assets/images/party/house_warming/party_house_warming_one.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Cambria', fontSize: 15,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Cambria', fontSize: 12,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'GreatVibes', fontSize: 35, textColor: 0xFFF44336));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Cambria', fontSize: 17,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Cambria', fontSize: 12,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Cambria', fontSize: 10,));
        break;
      }

      case 'assets/images/party/house_warming/party_house_warming_two.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 15,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 12,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'GreatVibes', fontSize: 35,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 17,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 12,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 10,));
        break;
      }

      case 'assets/images/party/house_warming/party_house_warming_three.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FuturaBold', fontSize: 10,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FuturaBold', fontSize: 9,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FuturaBold', fontSize: 15, textColor: 0xFFFBC300));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FuturaBold', fontSize: 12,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FuturaBold', fontSize: 10,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FuturaBold', fontSize: 9,));
        break;
      }
    }
  }

  void prepareRetirementPartyDataModelList({required String cardName}) {
    switch(cardName) {
      case 'assets/images/party/retirement_party/party_retirement_party_one.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FranklinGothicMedium', fontSize: 15,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FranklinGothicMedium', fontSize: 12,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FranklinGothicMedium', fontSize: 23,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FranklinGothicMedium', fontSize: 25,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FranklinGothicMedium', fontSize: 12,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FranklinGothicMedium', fontSize: 10,));
        break;
      }

      case 'assets/images/party/retirement_party/party_retirement_party_two.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FuturaBold', fontSize: 15, textColor: 0xFF997311));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FuturaBold', fontSize: 12, textColor: 0xFF997311));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Anydore', fontSize: 27, textColor: 0xFF997311));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Anydore', fontSize: 35, textColor: 0xFF997311));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FuturaBold', fontSize: 12, textColor: 0xFF997311));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FuturaBold', fontSize: 10, textColor: 0xFF997311));
        break;
      }
    }
  }

  void prepareSleepoverPartyDataModelList({required String cardName}) {
    switch(cardName) {
      case 'assets/images/party/sleepover_party/party_sleepover_party_one.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Acumin', fontSize: 12, textColor: 0xFFFFFFFF, activeBorderColor: Colors.white, enableBorderColor: Colors.white38));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Acumin', fontSize: 10, textColor: 0xFFFFFFFF, activeBorderColor: Colors.white, enableBorderColor: Colors.white38));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Sacramento', fontSize: 35, textColor: 0xFFF1B31F, activeBorderColor: Colors.white, enableBorderColor: Colors.white38));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Acumin', fontSize: 11, textColor: 0xFFFFFFFF, activeBorderColor: Colors.white, enableBorderColor: Colors.white38));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Acumin', fontSize: 10, textColor: 0xFFFFFFFF, activeBorderColor: Colors.white, enableBorderColor: Colors.white38));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Acumin', fontSize: 9, textColor: 0xFFFFFFFF, activeBorderColor: Colors.white, enableBorderColor: Colors.white38));
        break;
      }

      case 'assets/images/party/sleepover_party/party_sleepover_party_two.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'MVBoli', fontSize: 11, textColor: 0xFFB95326));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FuturaBold', fontSize: 30, textColor: 0xFFB95326));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'MVBoli', fontSize: 11, textColor: 0xFFB95326));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'MVBoli', fontSize: 10, textColor: 0xFFB95326));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'MVBoli', fontSize: 9, textColor: 0xFFB95326));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'MVBoli', fontSize: 9, textColor: 0xFFB95326));
        break;
      }
    }
  }

  void prepareSummerAndPoolDataModelList({required String cardName}) {
    switch(cardName) {
      case 'assets/images/party/summer_and_pool/party_summer_and_pool_one.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Candara', fontSize: 12, textColor: 0xFF3C8557));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Candara', fontSize: 10, textColor: 0xFF3C8557));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'GreatVibes', fontSize: 35, textColor: 0xFF03A4AC));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Candara', fontSize: 11, textColor: 0xFF3C8557));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Candara', fontSize: 10, textColor: 0xFF3C8557));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Candara', fontSize: 9, textColor: 0xFF3C8557));
        break;
      }

      case 'assets/images/party/summer_and_pool/party_summer_and_pool_two.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'MVBoli', fontSize: 11,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FuturaBold', fontSize: 35, textColor: 0xFFFFFFFF));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'MVBoli', fontSize: 11,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'MVBoli', fontSize: 9,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'MVBoli', fontSize: 9,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'MVBoli', fontSize: 9,));
        break;
      }

      case 'assets/images/party/summer_and_pool/party_summer_and_pool_three.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Cambria', fontSize: 15,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Cambria', fontSize: 10,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'AdineKirnberg', fontSize: 50, textColor: 0xFF03A4AC));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Cambria', fontSize: 11,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Cambria', fontSize: 10,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Cambria', fontSize: 9,));
        break;
      }

      case 'assets/images/party/summer_and_pool/party_summer_and_pool_four.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'ClubParty', fontSize: 11,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'ClubParty', fontSize: 35, textColor: 0xFF0759BF));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'ClubParty', fontSize: 11,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'ClubParty', fontSize: 9,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'ClubParty', fontSize: 9,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'ClubParty', fontSize: 9,));
        break;
      }
    }
  }

  void prepareBirthDataModelList({required String cardName}) {
    switch(cardName) {
      case 'assets/images/announcements/birth/announcements_birth_one.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 25, textColor: 0xFFFFFFFF));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Blacksword', fontSize: 50, textColor: 0xFFFFFFFF));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 27, textColor: 0xFFFFFFFF));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 17, textColor: 0xFFFFFFFF));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 17, textColor: 0xFFFFFFFF));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 9, textColor: 0xFFFFFFFF));
        break;
      }

      case 'assets/images/announcements/birth/announcements_birth_two.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 20,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 30,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 15,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 13,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 13,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 9,));
        break;
      }
    }
  }

  void prepareEngagementDataModelList({required String cardName}) {
    switch(cardName) {
      case 'assets/images/announcements/engagement/announcements_engagement_one.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 15,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FuturaBold', fontSize: 23,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FuturaBold', fontSize: 23,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FuturaBold', fontSize: 23,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 13,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 13,));
        break;
      }

      case 'assets/images/announcements/engagement/announcements_engagement_two.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 15,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'AlexBrush', fontSize: 30,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'AlexBrush', fontSize: 23,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'AlexBrush', fontSize: 30,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 13,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 13,));
        break;
      }

      case 'assets/images/announcements/engagement/announcements_engagement_three.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'GreatVibes', fontSize: 30,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 20,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 23,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 20,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 13,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 13,));
        break;
      }
    }
  }

  void prepareGraduationDataModelList({required String cardName}) {
    switch(cardName) {
      case 'assets/images/announcements/graduation/announcements_graduation_one.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Comic', fontSize: 15,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'AlexBrush', fontSize: 30,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Comic', fontSize: 23,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Comic', fontSize: 15,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Comic', fontSize: 23,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Comic', fontSize: 13,));
        break;
      }

      case 'assets/images/announcements/graduation/announcements_graduation_two.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 15,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Darleston', fontSize: 50,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 23,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 23,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 15,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 13,));
        break;
      }

      case 'assets/images/announcements/graduation/announcements_graduation_three.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 15,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FuturaBold', fontSize: 30,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 20,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 15,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 23,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 13,));
        break;
      }
    }
  }

  void prepareMemorialDataModelList({required String cardName}) {
    switch(cardName) {
      case 'assets/images/announcements/memorial/announcements_memorial_one.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 15,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'GreatVibes', fontSize: 35,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 15,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 15,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 15,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 15,));
        break;
      }

      case 'assets/images/announcements/memorial/announcements_memorial_two.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 25,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 25,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 15,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 15,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 15,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 15,));
        break;
      }
    }
  }

  void prepareMovingDataModelList({required String cardName}) {
    switch(cardName) {
      case 'assets/images/announcements/moving/announcements_moving_one.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Blacksword', fontSize: 30,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 9,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 25,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 9,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 25,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 9,));
        break;
      }

      case 'assets/images/announcements/moving/announcements_moving_two.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Comic', fontSize: 30,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Comic', fontSize: 9,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Comic', fontSize: 17,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Comic', fontSize: 9,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Comic', fontSize: 15,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Comic', fontSize: 9,));
        break;
      }
    }
  }

  void preparePregnancyDataModelList({required String cardName}) {
    switch(cardName) {
      case 'assets/images/announcements/pregnancy/announcements_pregnancy_one.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 37,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 17,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 20,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 20,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 15,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 20,));
        break;
      }

      case 'assets/images/announcements/pregnancy/announcements_pregnancy_two.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Bahnschrift', fontSize: 37,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Bahnschrift', fontSize: 17,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Bahnschrift', fontSize: 20,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Bahnschrift', fontSize: 20,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Bahnschrift', fontSize: 17,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Bahnschrift', fontSize: 17,));
        break;
      }
    }
  }

  void prepareSaveTheDateAnnouncementDataModelList({required String cardName}) {
    switch(cardName) {
      case 'assets/images/announcements/save_the_date/announcements_save_the_date_one.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 37,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 15,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 17,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 17,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 17,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 13,));
        break;
      }

      case 'assets/images/announcements/save_the_date/announcements_save_the_date_two.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 15,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Blacksword', fontSize: 25,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 17,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Blacksword', fontSize: 25,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 17,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 13,));
        break;
      }

      case 'assets/images/announcements/save_the_date/announcements_save_the_date_three.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Arimo', fontSize: 15,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'GreatVibes', fontSize: 25,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'GreatVibes', fontSize: 17,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'GreatVibes', fontSize: 25,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Arimo', fontSize: 17,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Arimo', fontSize: 13,));
        break;
      }
    }
  }

  void prepareWeddingAnnouncementDataModelList({required String cardName}) {
    switch(cardName) {
      case 'assets/images/announcements/wedding/announcements_wedding_one.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 20,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'AdineKirnberg', fontSize: 45,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 17,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'AdineKirnberg', fontSize: 45,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 17,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 13,));
        break;
      }

      case 'assets/images/announcements/wedding/announcements_wedding_two.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Blacksword', fontSize: 40,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Arimo', fontSize: 23,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Arimo', fontSize: 17,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Arimo', fontSize: 23,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Arimo', fontSize: 17,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Arimo', fontSize: 13,));
        break;
      }

      case 'assets/images/announcements/wedding/announcements_wedding_three.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 20,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'AlexBrush', fontSize: 25,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 17,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'AlexBrush', fontSize: 25,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 15,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 13,));
        break;
      }
    }
  }

  void prepareBabiesAndKidsFirstBirthdayDataModelList({required String cardName}) {
    switch(cardName) {
      case 'assets/images/babies_and_kids/first_birthday/babies_and_kids_first_birthday_one.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FuturaLtBT', fontSize: 15,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FuturaLtBT', fontSize: 15,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Parisienne', fontSize: 35,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FuturaLtBT', fontSize: 17,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FuturaLtBT', fontSize: 17, textAlignment: TextAlign.end));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FuturaLtBT', fontSize: 13,));
        break;
      }

      case 'assets/images/babies_and_kids/first_birthday/babies_and_kids_first_birthday_two.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Comic', fontSize: 15,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Comic', fontSize: 15,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Comic', fontSize: 30,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Comic', fontSize: 27,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Comic', fontSize: 11, textAlignment: TextAlign.end));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Comic', fontSize: 10,));
        break;
      }
    }
  }

  void prepareBabiesAndKidsBabyBirthdayDataModelList({required String cardName}) {
    switch(cardName) {
      case 'assets/images/babies_and_kids/baby_birthday/babies_and_kids_baby_birthday_one.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FuturaLtBT', fontSize: 15,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FuturaLtBT', fontSize: 15,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FuturaLtBT', fontSize: 23,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Parisienne', fontSize: 40,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FuturaLtBT', fontSize: 17,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FuturaLtBT', fontSize: 13,));
        break;
      }
    }
  }

  void prepareBabyShowerDataModelList({required String cardName}) {
    switch(cardName) {
      case 'assets/images/babies_and_kids/baby_shower/babies_and_kids_baby_shower_one.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 15,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'AlexBrush', fontSize: 50,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 23,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'AlexBrush', fontSize: 40,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 15,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 13,));
        break;
      }

      case 'assets/images/babies_and_kids/baby_shower/babies_and_kids_baby_shower_two.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Comic', fontSize: 11,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'AngelTears', fontSize: 65, textColor: 0xFFB72E8D));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Comic', fontSize: 13,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Comic', fontSize: 14,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Comic', fontSize: 10,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Comic', fontSize: 9,));
        break;
      }

      case 'assets/images/babies_and_kids/baby_shower/babies_and_kids_baby_shower_three.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 13,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'ClubParty', fontSize: 30,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 17,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 10,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 9,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 9,));
        break;
      }
    }
  }

  void prepareBabySprinkleDataModelList({required String cardName}) {
    switch(cardName) {
      case 'assets/images/babies_and_kids/baby_sprinkle/babies_and_kids_baby_sprinkle_one.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 13,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'AdineKirnberg', fontSize: 55, textColor: 0xFF262165));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 15,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 15,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 11,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 10,));
        break;
      }

      case 'assets/images/babies_and_kids/baby_sprinkle/babies_and_kids_baby_sprinkle_two.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Comic', fontSize: 13,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'AdineKirnberg', fontSize: 40,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Comic', fontSize: 15,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Comic', fontSize: 15,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Comic', fontSize: 11,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Comic', fontSize: 9,));
        break;
      }

      case 'assets/images/babies_and_kids/baby_sprinkle/babies_and_kids_baby_sprinkle_three.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 13,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'AdineKirnberg', fontSize: 20,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 20,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'AdineKirnberg', fontSize: 20,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 20,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 9,));
        break;
      }
    }
  }

  void prepareBaptismAndChristeningDataModelList({required String cardName}) {
    switch(cardName) {
      case 'assets/images/babies_and_kids/baptism_and_christening/babies_and_kids_baptism_and_christening_one.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Comic', fontSize: 13,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Comic', fontSize: 15,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Comic', fontSize: 25,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'ChopinScript', fontSize: 45, textColor: 0xFFEB8472));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Comic', fontSize: 11,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Comic', fontSize: 10,));
        break;
      }

      case 'assets/images/babies_and_kids/baptism_and_christening/babies_and_kids_baptism_and_christening_two.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Arimo', fontSize: 13,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Arimo', fontSize: 15,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Arimo', fontSize: 25,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Sacramento', fontSize: 40,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Arimo', fontSize: 11,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Arimo', fontSize: 10,));
        break;
      }
    }
  }

  void prepareFirstCommunionDataModelList({required String cardName}) {
    switch(cardName) {
      case 'assets/images/babies_and_kids/first_communion/babies_and_kids_first_communion_one.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Arimo', fontSize: 11,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Arimo', fontSize: 15,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Arimo', fontSize: 15,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Blacksword', fontSize: 25,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Arimo', fontSize: 9,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Arimo', fontSize: 9,));
        break;
      }

      case 'assets/images/babies_and_kids/first_communion/babies_and_kids_first_communion_two.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Arimo', fontSize: 15,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'GreatVibes', fontSize: 45,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Arimo', fontSize: 20,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Arimo', fontSize: 30,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Arimo', fontSize: 11,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Arimo', fontSize: 9,));
        break;
      }

      case 'assets/images/babies_and_kids/first_communion/babies_and_kids_first_communion_three.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Bungasai', fontSize: 10,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FuturaBold', fontSize: 17,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Bungasai', fontSize: 13,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Bungasai', fontSize: 13,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FuturaBold', fontSize: 9,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FuturaBold', fontSize: 7,));
        break;
      }
    }
  }

  void prepareGenderRevealDataModelList({required String cardName}) {
    switch(cardName) {
      case 'assets/images/babies_and_kids/gender_reveal/babies_and_kids_gender_reveal_one.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Comic', fontSize: 33, textColor: 0xFF9CBECD));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Comic', fontSize: 25,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Comic', fontSize: 33, textColor: 0xFFCC709B));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 15,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Comic', fontSize: 11,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 9,));
        break;
      }

      case 'assets/images/babies_and_kids/gender_reveal/babies_and_kids_gender_reveal_two.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Comic', fontSize: 35,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 15,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 15,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 15,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 11,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 9,));
        break;
      }

      case 'assets/images/babies_and_kids/gender_reveal/babies_and_kids_gender_reveal_three.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FuturaBold', fontSize: 10,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'GreatVibes', fontSize: 50,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FuturaBold', fontSize: 20,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FuturaBold', fontSize: 13,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FuturaBold', fontSize: 10,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FuturaBold', fontSize: 9,));
        break;
      }
    }
  }

  void prepareBabiesAndKidsKidsBirthdayDataModelList({required String cardName}) {
    switch(cardName) {
      case 'assets/images/babies_and_kids/kids_birthday/babies_and_kids_kids_birthday_one.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Comic', fontSize: 15,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Comic', fontSize: 25,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'FuturaBold', fontSize: 25, textColor: 0xFFF54C67));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Comic', fontSize: 15,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Comic', fontSize: 11,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Comic', fontSize: 9,));
        break;
      }
    }
  }

  void prepareSipAndSeeDataModelList({required String cardName}) {
    switch(cardName) {
      case 'assets/images/babies_and_kids/sip_and_see/babies_and_kids_sip_and_see_one.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 40,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 15, textColor: 0xFFFFFFFF));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'GreatVibes', fontSize: 40, textColor: 0xFFFFFFFF));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 25, textColor: 0xFFFFFFFF));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 11, textColor: 0xFFFFFFFF));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Georgia', fontSize: 9, textColor: 0xFFFFFFFF));
        break;
      }

      case 'assets/images/babies_and_kids/sip_and_see/babies_and_kids_sip_and_see_two.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'LittleLordFontleroy', fontSize: 50,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Comic', fontSize: 15,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Comic', fontSize: 15,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Comic', fontSize: 15,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Comic', fontSize: 11,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Comic', fontSize: 10,));
        break;
      }

      case 'assets/images/babies_and_kids/sip_and_see/babies_and_kids_sip_and_see_three.png': {
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Comic', fontSize: 23,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Comic', fontSize: 13,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Comic', fontSize: 13,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Comic', fontSize: 13,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Comic', fontSize: 10,));
        cardCustomizationDataModelList.add(CardCustomizationDataModel(fontStyle: 'Comic', fontSize: 9,));
        break;
      }
    }
  }

  /*List<Text> bottomSheetFontList = [
    Text(
      'Roboto',
      style: TextStyle(fontFamily: 'Roboto'),
    ),
    Text(
      'PlayfairDisplay',
      style: TextStyle(fontFamily: 'PlayfairDisplay'),
    ),
    Text(
      'Billabong',
      style: TextStyle(fontFamily: 'Billabong'),
    )
  ];*/

  Widget cardMainCategorySelection({required String cardName,}) {
    switch(mainCategoryTitle) {
      case 'Wedding': {
        return weddingCardCubCategorySelection(cardName: cardName);
      }
      case 'Birthday': {
        return birthdayCardCubCategorySelection(cardName: cardName);
      }
      case 'Party': {
        return partyCardCubCategorySelection(cardName: cardName);
      }
      case 'Announcements': {
        return announcementsCardCubCategorySelection(cardName: cardName);
      }
      case 'Babies & Kids': {
        return babiesAndKidsCardCubCategorySelection(cardName: cardName);
      }
      default: {
        return Container(
          margin: EdgeInsets.only(bottom: screenHeight! * 0.008),
          color: Colors.yellow,
          width: screenWidth! * 0.75,
          child: const Center(
              child: Text(
                'Coming soon...!',
                style: TextStyle(color: Colors.white, fontSize: 20),
              )),
        );
      }
    }
  }
  // wedding cards sub category Selection

  Widget weddingCardCubCategorySelection({required String cardName,}) {
    switch(subCategoryTitle) {
      case 'Wedding Invitations': {
        return weddingInvitationCard(cardName: cardName);
      }
      case 'Bridal Shower': {
        return bridalShowerCard(cardName: cardName);
      }
      case 'Engagement Party': {
        return engagementPartyCard(cardName: cardName);
      }
      case 'Bachelor Party': {
        return bachelorPartyCard(cardName: cardName);
      }
      case 'Rehearsal Dinner': {
        return rehearsalDinnerCard(cardName: cardName);
      }
      case 'Save The Date': {
        return saveTheDateCard(cardName: cardName);
      }
      default: {
        return Container(
          margin: EdgeInsets.only(bottom: screenHeight! * 0.008),
          color: Colors.green,
          width: screenWidth! * 0.75,
          child: const Center(
              child: Text(
                'Coming soon...!',
                style: TextStyle(color: Colors.white, fontSize: 20),
              )),
        );
      }
    }
  }

  Widget birthdayCardCubCategorySelection({required String cardName,}) {
    switch(subCategoryTitle) {
      case '1st Birthday': {
        return firstBirthdayCard(cardName: cardName);
      }
      case 'Baby Birthday': {
        return babyBirthdayCard(cardName: cardName);
      }
      case 'Kids Birthday': {
        return kidsBirthdayCard(cardName: cardName);
      }
      case 'Men\'s Birthday': {
        return mensBirthdayCard(cardName: cardName);
      }
      case 'Women\'s Birthday': {
        return womensBirthdayCard(cardName: cardName);
      }
      default: {
        return Container(
          margin: EdgeInsets.only(bottom: screenHeight! * 0.008),
          color: Colors.green,
          width: screenWidth! * 0.75,
          child: const Center(
              child: Text(
                'Coming soon...!',
                style: TextStyle(color: Colors.white, fontSize: 20),
              )),
        );
      }
    }
  }

  Widget partyCardCubCategorySelection({required String cardName,}) {
    switch(subCategoryTitle) {
      case 'Anniversary': {
        return anniversaryCard(cardName: cardName);
      }
      case 'BBQ Party': {
        return bbqPartyCard(cardName: cardName);
      }
      case 'Christmas Party': {
        return christmasPartyCard(cardName: cardName);
      }
      case 'Cocktail Party': {
        return cocktailPartyCard(cardName: cardName);
      }
      case 'Dinner Party': {
        return dinnerPartyCard(cardName: cardName);
      }
      case 'Family Reunion': {
        return familyReunionCard(cardName: cardName);
      }
      case 'Graduation Party': {
        return graduationPartyCard(cardName: cardName);
      }
      case 'Happy New Year': {
        return happyNewYearCard(cardName: cardName);
      }
      case 'Housewarming': {
        return housewarmingCard(cardName: cardName);
      }
      case 'Retirement Party': {
        return retirementPartyCard(cardName: cardName);
      }
      case 'Sleepover Party': {
        return sleepoverPartyCard(cardName: cardName);
      }
      case 'Summer & Pool': {
        return summerAndPoolCard(cardName: cardName);
      }
      default: {
        return Container(
          margin: EdgeInsets.only(bottom: screenHeight! * 0.008),
          color: Colors.green,
          width: screenWidth! * 0.75,
          child: const Center(
              child: Text(
                'Coming soon...!',
                style: TextStyle(color: Colors.white, fontSize: 20),
              )),
        );
      }
    }
  }

  Widget announcementsCardCubCategorySelection({required String cardName,}) {
    switch(subCategoryTitle) {
      case 'Birth': {
        return birthCard(cardName: cardName);
      }
      case 'Engagement': {
        return engagementCard(cardName: cardName);
      }
      case 'Graduation': {
        return graduationCard(cardName: cardName);
      }
      case 'Memorial': {
        return memorialCard(cardName: cardName);
      }
      case 'Moving': {
        return movingCard(cardName: cardName);
      }
      case 'Pregnancy': {
        return pregnancyCard(cardName: cardName);
      }
      case 'Save the date': {
        return saveTheDateAnnouncementCard(cardName: cardName);
      }
      case 'Wedding': {
        return weddingAnnouncementCard(cardName: cardName);
      }
      default: {
        return Container(
          margin: EdgeInsets.only(bottom: screenHeight! * 0.008),
          color: Colors.green,
          width: screenWidth! * 0.75,
          child: const Center(
              child: Text(
                'Coming soon...!',
                style: TextStyle(color: Colors.white, fontSize: 20),
              )),
        );
      }
    }
  }

  Widget babiesAndKidsCardCubCategorySelection({required String cardName,}) {
    switch(subCategoryTitle) {
      case '1st Birthday': {
        return babiesAndKidsFirstBirthdayCard(cardName: cardName);
      }
      case 'Baby Birthday': {
        return babiesAndKidsBabyBirthdayCard(cardName: cardName);
      }
      case 'Baby Shower': {
        return babyShowerCard(cardName: cardName);
      }
      case 'Baby Sprinkle': {
        return babySprinkleCard(cardName: cardName);
      }
      case 'Baptism & Christening': {
        return baptismAndChristeningCard(cardName: cardName);
      }
      case 'First Communion': {
        return firstCommunionCard(cardName: cardName);
      }
      case 'Gender Reveal': {
        return genderRevealCard(cardName: cardName);
      }
      case 'Kids Birthday': {
        return babiesAndKidsKidsBirthdayCard(cardName: cardName);
      }
      case 'Sip & See': {
        return sipAndSeeCard(cardName: cardName);
      }
      default: {
        return Container(
          margin: EdgeInsets.only(bottom: screenHeight! * 0.008),
          color: Colors.green,
          width: screenWidth! * 0.75,
          child: const Center(
              child: Text(
                'Coming soon...!',
                style: TextStyle(color: Colors.white, fontSize: 20),
              )),
        );
      }
    }
  }

  Widget weddingInvitationCard({required String cardName,}) {
    switch(cardName) {
      case 'assets/images/wedding/wedding_invitations/wedding_wedding_invitations_one.jpg': {
        return const WeddingWeddingInvitationsOne();
      }
      case 'assets/images/wedding/wedding_invitations/wedding_wedding_invitations_two.jpg': {
        return const WeddingWeddingInvitationsTwo();
      }
      case 'assets/images/wedding/wedding_invitations/wedding_wedding_invitations_three.jpg': {
        return const WeddingWeddingInvitationsThree();
      }
      case 'assets/images/wedding/wedding_invitations/wedding_wedding_invitations_four.jpg': {
        return const WeddingWeddingInvitationsFour();
      }
      case 'assets/images/wedding/wedding_invitations/wedding_wedding_invitations_five.jpg': {
        return const WeddingWeddingInvitationsFive();
      }
      case 'assets/images/wedding/wedding_invitations/wedding_wedding_invitations_six.jpg': {
        return const WeddingWeddingInvitationsSix();
      }
      case 'assets/images/wedding/wedding_invitations/wedding_wedding_invitations_seven.png': {
        return const WeddingWeddingInvitationsSeven();
      }
      case 'assets/images/wedding/wedding_invitations/wedding_wedding_invitations_eight.jpg': {
        return const WeddingWeddingInvitationsEight();
      }
      case 'assets/images/wedding/wedding_invitations/wedding_wedding_invitations_nine.jpg': {
        return const WeddingWeddingInvitationsNine();
      }
      case 'assets/images/wedding/wedding_invitations/wedding_wedding_invitations_ten.png': {
        return const WeddingWeddingInvitationsTen();
      }
      case 'assets/images/wedding/wedding_invitations/wedding_wedding_invitations_eleven.png': {
        return const WeddingWeddingInvitationsEleven();
      }
      case 'assets/images/wedding/wedding_invitations/wedding_wedding_invitations_twelve.png': {
        return const WeddingWeddingInvitationsTwelve();
      }
      case 'assets/images/wedding/wedding_invitations/wedding_wedding_invitations_thirteen.png': {
        return const WeddingWeddingInvitationsThirteen();
      }
      case 'assets/images/wedding/wedding_invitations/wedding_wedding_invitations_fourteen.png': {
        return const WeddingWeddingInvitationsFourteen();
      }
      default: {
         return Container(
          margin: EdgeInsets.only(bottom: screenHeight! * 0.008),
          color: Colors.blue,
          width: screenWidth! * 0.75,
          child: const Center(
              child: Text(
                'Coming soon...!',
                style: TextStyle(color: Colors.white, fontSize: 20),
              )),
        );
      }
    }
  }

  Widget bridalShowerCard({required String cardName,}) {
    switch(cardName) {
      case 'assets/images/wedding/bridal_shower/wedding_bridal_shower_one.png': {
        return const WeddingBridalShowerOne();
      }
      case 'assets/images/wedding/bridal_shower/wedding_bridal_shower_two.png': {
        return const WeddingBridalShowerTwo();
      }
      case 'assets/images/wedding/bridal_shower/wedding_bridal_shower_three.png': {
        return const WeddingBridalShowerThree();
      }
      case 'assets/images/wedding/bridal_shower/wedding_bridal_shower_four.png': {
        return const WeddingBridalShowerFour();
      }
      case 'assets/images/wedding/bridal_shower/wedding_bridal_shower_five.png': {
        return const WeddingBridalShowerFive();
      }
      case 'assets/images/wedding/bridal_shower/wedding_bridal_shower_six.png': {
        return const WeddingBridalShowerSix();
      }
      default: {
        return Container(
          margin: EdgeInsets.only(bottom: screenHeight! * 0.008),
          color: Colors.blue,
          width: screenWidth! * 0.75,
          child: const Center(
              child: Text(
                'Coming soon...!',
                style: TextStyle(color: Colors.white, fontSize: 20),
              )),
        );
      }
    }
  }

  Widget engagementPartyCard({required String cardName,}) {
    switch(cardName) {
      case 'assets/images/wedding/engagement_party/wedding_engagement_party_one.png': {
        return const WeddingEngagementPartyOne();
      }
      case 'assets/images/wedding/engagement_party/wedding_engagement_party_two.jpg': {
        return const WeddingEngagementPartyTwo();
      }
      case 'assets/images/wedding/engagement_party/wedding_engagement_party_three.png': {
        return const WeddingEngagementPartyThree();
      }
      case 'assets/images/wedding/engagement_party/wedding_engagement_party_four.png': {
        return const WeddingEngagementPartyFour();
      }
      case 'assets/images/wedding/engagement_party/wedding_engagement_party_five.png': {
        return const WeddingEngagementPartyFive();
      }
      case 'assets/images/wedding/engagement_party/wedding_engagement_party_six.png': {
        return const WeddingEngagementPartySix();
      }
      case 'assets/images/wedding/engagement_party/wedding_engagement_party_seven.jpg': {
        return const WeddingEngagementPartySeven();
      }
      default: {
        return Container(
          margin: EdgeInsets.only(bottom: screenHeight! * 0.008),
          color: Colors.blue,
          width: screenWidth! * 0.75,
          child: const Center(
              child: Text(
                'Coming soon...!',
                style: TextStyle(color: Colors.white, fontSize: 20),
              )),
        );
      }
    }
  }

  Widget bachelorPartyCard({required String cardName,}) {
    switch(cardName) {
      case 'assets/images/wedding/bachelor_party/wedding_bachelor_party_one.png': {
        return const WeddingBachelorPartyOne();
      }
      case 'assets/images/wedding/bachelor_party/wedding_bachelor_party_two.png': {
        return const WeddingBachelorPartyTwo();
      }
      case 'assets/images/wedding/bachelor_party/wedding_bachelor_party_three.png': {
        return const WeddingBachelorPartyThree();
      }
      case 'assets/images/wedding/bachelor_party/wedding_bachelor_party_four.png': {
        return const WeddingBachelorPartyFour();
      }
      default: {
        return Container(
          margin: EdgeInsets.only(bottom: screenHeight! * 0.008),
          color: Colors.blue,
          width: screenWidth! * 0.75,
          child: const Center(
              child: Text(
                'Coming soon...!',
                style: TextStyle(color: Colors.white, fontSize: 20),
              )),
        );
      }
    }
  }

  Widget rehearsalDinnerCard({required String cardName,}) {
    switch(cardName) {
      case 'assets/images/wedding/rehearsal_dinner/wedding_rehearsal_dinner_one.png': {
        return const WeddingRehearsalDinnerOne();
      }
      case 'assets/images/wedding/rehearsal_dinner/wedding_rehearsal_dinner_two.png': {
        return const WeddingRehearsalDinnerTwo();
      }
      case 'assets/images/wedding/rehearsal_dinner/wedding_rehearsal_dinner_three.png': {
        return const WeddingRehearsalDinnerThree();
      }
      default: {
        return Container(
          margin: EdgeInsets.only(bottom: screenHeight! * 0.008),
          color: Colors.blue,
          width: screenWidth! * 0.75,
          child: const Center(
              child: Text(
                'Coming soon...!',
                style: TextStyle(color: Colors.white, fontSize: 20),
              )),
        );
      }
    }
  }

  Widget saveTheDateCard({required String cardName,}) {
    switch(cardName) {
      case 'assets/images/wedding/save_the_date/wedding_save_the_date_one.png': {
        return const WeddingSaveTheDateOne();
      }
      case 'assets/images/wedding/save_the_date/wedding_save_the_date_two.png': {
        return const WeddingSaveTheDateTwo();
      }
      default: {
        return Container(
          margin: EdgeInsets.only(bottom: screenHeight! * 0.008),
          color: Colors.blue,
          width: screenWidth! * 0.75,
          child: const Center(
              child: Text(
                'Coming soon...!',
                style: TextStyle(color: Colors.white, fontSize: 20),
              )),
        );
      }
    }
  }

  Widget firstBirthdayCard({required String cardName,}) {
    switch(cardName) {
      case 'assets/images/birthday/first_birthday/birthday_first_birthday_one.png': {
        return const BirthdayFirstBirthdayOne();
      }
      case 'assets/images/birthday/first_birthday/birthday_first_birthday_two.png': {
        return const BirthdayFirstBirthdayTwo();
      }
      case 'assets/images/birthday/first_birthday/birthday_first_birthday_three.png': {
        return const BirthdayFirstBirthdayThree();
      }
      default: {
        return Container(
          margin: EdgeInsets.only(bottom: screenHeight! * 0.008),
          color: Colors.blue,
          width: screenWidth! * 0.75,
          child: const Center(
              child: Text(
                'Coming soon...!',
                style: TextStyle(color: Colors.white, fontSize: 20),
              )),
        );
      }
    }
  }

  Widget babyBirthdayCard({required String cardName,}) {
    switch(cardName) {
      case 'assets/images/birthday/baby_birthday/birthday_baby_birthday_one.png': {
        return const BirthdayBabyBirthdayOne();
      }
      case 'assets/images/birthday/baby_birthday/birthday_baby_birthday_two.png': {
        return const BirthdayBabyBirthdayTwo();
      }
      default: {
        return Container(
          margin: EdgeInsets.only(bottom: screenHeight! * 0.008),
          color: Colors.blue,
          width: screenWidth! * 0.75,
          child: const Center(
              child: Text(
                'Coming soon...!',
                style: TextStyle(color: Colors.white, fontSize: 20),
              )),
        );
      }
    }
  }

  Widget kidsBirthdayCard({required String cardName,}) {
    switch(cardName) {
      case 'assets/images/birthday/kids_birthday/birthday_kids_birthday_one.png': {
        return const BirthdayKidsBirthdayOne();
      }
      case 'assets/images/birthday/kids_birthday/birthday_kids_birthday_two.png': {
        return const BirthdayKidsBirthdayTwo();
      }
      case 'assets/images/birthday/kids_birthday/birthday_kids_birthday_three.png': {
        return const BirthdayKidsBirthdayThree();
      }
      default: {
        return Container(
          margin: EdgeInsets.only(bottom: screenHeight! * 0.008),
          color: Colors.blue,
          width: screenWidth! * 0.75,
          child: const Center(
              child: Text(
                'Coming soon...!',
                style: TextStyle(color: Colors.white, fontSize: 20),
              )),
        );
      }
    }
  }

  Widget mensBirthdayCard({required String cardName,}) {
    switch(cardName) {
      case 'assets/images/birthday/mens_birthday/birthday_men_birthday_one.png': {
        return const BirthdayMensBirthdayOne();
      }
      case 'assets/images/birthday/mens_birthday/birthday_men_birthday_two.png': {
        return const BirthdayMensBirthdayTwo();
      }
      default: {
        return Container(
          margin: EdgeInsets.only(bottom: screenHeight! * 0.008),
          color: Colors.blue,
          width: screenWidth! * 0.75,
          child: const Center(
              child: Text(
                'Coming soon...!',
                style: TextStyle(color: Colors.white, fontSize: 20),
              )),
        );
      }
    }
  }

  Widget womensBirthdayCard({required String cardName,}) {
    switch(cardName) {
      case 'assets/images/birthday/womens_birthday/birthday_women_birthday_one.png': {
        return const BirthdayWomensBirthdayOne();
      }
      case 'assets/images/birthday/womens_birthday/birthday_women_birthday_two.png': {
        return const BirthdayWomensBirthdayTwo();
      }
      case 'assets/images/birthday/womens_birthday/birthday_women_birthday_three.png': {
        return const BirthdayWomensBirthdayThree();
      }
      default: {
        return Container(
          margin: EdgeInsets.only(bottom: screenHeight! * 0.008),
          color: Colors.blue,
          width: screenWidth! * 0.75,
          child: const Center(
              child: Text(
                'Coming soon...!',
                style: TextStyle(color: Colors.white, fontSize: 20),
              )),
        );
      }
    }
  }

  Widget anniversaryCard({required String cardName,}) {
    switch(cardName) {
      case 'assets/images/party/anniversary/party_anniversary_one.png': {
        return const PartyAnniversaryOne();
      }
      case 'assets/images/party/anniversary/party_anniversary_two.png': {
        return const PartyAnniversaryTwo();
      }
      case 'assets/images/party/anniversary/party_anniversary_three.png': {
        return const PartyAnniversaryThree();
      }
      default: {
        return Container(
          margin: EdgeInsets.only(bottom: screenHeight! * 0.008),
          color: Colors.blue,
          width: screenWidth! * 0.75,
          child: const Center(
              child: Text(
                'Coming soon...!',
                style: TextStyle(color: Colors.white, fontSize: 20),
              )),
        );
      }
    }
  }

  Widget bbqPartyCard({required String cardName,}) {
    switch(cardName) {
      case 'assets/images/party/bbq_party/party_bbq_party_one.png': {
        return const PartyBBQPartyOne();
      }
      case 'assets/images/party/bbq_party/party_bbq_party_two.png': {
        return const PartyBBQPartyTwo();
      }
      default: {
        return Container(
          margin: EdgeInsets.only(bottom: screenHeight! * 0.008),
          color: Colors.blue,
          width: screenWidth! * 0.75,
          child: const Center(
              child: Text(
                'Coming soon...!',
                style: TextStyle(color: Colors.white, fontSize: 20),
              )),
        );
      }
    }
  }

  Widget christmasPartyCard({required String cardName,}) {
    switch(cardName) {
      case 'assets/images/party/christmas_party/party_christmas_party_one.png': {
        return const PartyChristmasPartyOne();
      }
      case 'assets/images/party/christmas_party/party_christmas_party_two.png': {
        return const PartyChristmasPartyTwo();
      }
      case 'assets/images/party/christmas_party/party_christmas_party_three.png': {
        return const PartyChristmasPartyThree();
      }
      case 'assets/images/party/christmas_party/party_christmas_party_four.png': {
        return const PartyChristmasPartyFour();
      }
      default: {
        return Container(
          margin: EdgeInsets.only(bottom: screenHeight! * 0.008),
          color: Colors.blue,
          width: screenWidth! * 0.75,
          child: const Center(
              child: Text(
                'Coming soon...!',
                style: TextStyle(color: Colors.white, fontSize: 20),
              )),
        );
      }
    }
  }

  Widget cocktailPartyCard({required String cardName,}) {
    switch(cardName) {
      case 'assets/images/party/cocktail_party/party_cocktail_party_one.png': {
        return const PartyCocktailPartyOne();
      }
      case 'assets/images/party/cocktail_party/party_cocktail_party_two.png': {
        return const PartyCocktailPartyTwo();
      }
      case 'assets/images/party/cocktail_party/party_cocktail_party_three.png': {
        return const PartyCocktailPartyThree();
      }
      case 'assets/images/party/cocktail_party/party_cocktail_party_four.png': {
        return const PartyCocktailPartyFour();
      }
      default: {
        return Container(
          margin: EdgeInsets.only(bottom: screenHeight! * 0.008),
          color: Colors.blue,
          width: screenWidth! * 0.75,
          child: const Center(
              child: Text(
                'Coming soon...!',
                style: TextStyle(color: Colors.white, fontSize: 20),
              )),
        );
      }
    }
  }

  Widget dinnerPartyCard({required String cardName,}) {
    switch(cardName) {
      case 'assets/images/party/dinner_party/party_dinner_party_one.png': {
        return const PartyDinnerPartyOne();
      }
      case 'assets/images/party/dinner_party/party_dinner_party_two.png': {
        return const PartyDinnerPartyTwo();
      }
      case 'assets/images/party/dinner_party/party_dinner_party_three.png': {
        return const PartyDinnerPartyThree();
      }
      case 'assets/images/party/dinner_party/party_dinner_party_four.png': {
        return const PartyDinnerPartyFour();
      }
      case 'assets/images/party/dinner_party/party_dinner_party_five.png': {
        return const PartyDinnerPartyFive();
      }
      default: {
        return Container(
          margin: EdgeInsets.only(bottom: screenHeight! * 0.008),
          color: Colors.blue,
          width: screenWidth! * 0.75,
          child: const Center(
              child: Text(
                'Coming soon...!',
                style: TextStyle(color: Colors.white, fontSize: 20),
              )),
        );
      }
    }
  }

  Widget familyReunionCard({required String cardName,}) {
    switch(cardName) {
      case 'assets/images/party/family_reunion/party_family_reunion_one.png': {
        return const PartyFamilyReunionOne();
      }
      case 'assets/images/party/family_reunion/party_family_reunion_two.png': {
        return const PartyFamilyReunionTwo();
      }
      case 'assets/images/party/family_reunion/party_family_reunion_three.png': {
        return const PartyFamilyReunionThree();
      }
      default: {
        return Container(
          margin: EdgeInsets.only(bottom: screenHeight! * 0.008),
          color: Colors.blue,
          width: screenWidth! * 0.75,
          child: const Center(
              child: Text(
                'Coming soon...!',
                style: TextStyle(color: Colors.white, fontSize: 20),
              )),
        );
      }
    }
  }

  Widget graduationPartyCard({required String cardName,}) {
    switch(cardName) {
      case 'assets/images/party/graduation_party/party_graduation_party_one.png': {
        return const PartyGraduationPartyOne();
      }
      case 'assets/images/party/graduation_party/party_graduation_party_two.png': {
        return const PartyGraduationPartyTwo();
      }
      case 'assets/images/party/graduation_party/party_graduation_party_three.png': {
        return const PartyGraduationPartyThree();
      }
      default: {
        return Container(
          margin: EdgeInsets.only(bottom: screenHeight! * 0.008),
          color: Colors.blue,
          width: screenWidth! * 0.75,
          child: const Center(
              child: Text(
                'Coming soon...!',
                style: TextStyle(color: Colors.white, fontSize: 20),
              )),
        );
      }
    }
  }

  Widget happyNewYearCard({required String cardName,}) {
    switch(cardName) {
      case 'assets/images/party/happy_new_year/party_happy_new_year_one.png': {
        return const PartyHappyNewYearOne();
      }
      case 'assets/images/party/happy_new_year/party_happy_new_year_two.png': {
        return const PartyHappyNewYearTwo();
      }
      default: {
        return Container(
          margin: EdgeInsets.only(bottom: screenHeight! * 0.008),
          color: Colors.blue,
          width: screenWidth! * 0.75,
          child: const Center(
              child: Text(
                'Coming soon...!',
                style: TextStyle(color: Colors.white, fontSize: 20),
              )),
        );
      }
    }
  }

  Widget housewarmingCard({required String cardName,}) {
    switch(cardName) {
      case 'assets/images/party/house_warming/party_house_warming_one.png': {
        return const PartyHousewarmingOne();
      }
      case 'assets/images/party/house_warming/party_house_warming_two.png': {
        return const PartyHousewarmingTwo();
      }
      case 'assets/images/party/house_warming/party_house_warming_three.png': {
        return const PartyHousewarmingThree();
      }
      default: {
        return Container(
          margin: EdgeInsets.only(bottom: screenHeight! * 0.008),
          color: Colors.blue,
          width: screenWidth! * 0.75,
          child: const Center(
              child: Text(
                'Coming soon...!',
                style: TextStyle(color: Colors.white, fontSize: 20),
              )),
        );
      }
    }
  }

  Widget retirementPartyCard({required String cardName,}) {
    switch(cardName) {
      case 'assets/images/party/retirement_party/party_retirement_party_one.png': {
        return const PartyRetirementPartyOne();
      }
      case 'assets/images/party/retirement_party/party_retirement_party_two.png': {
        return const PartyRetirementPartyTwo();
      }
      default: {
        return Container(
          margin: EdgeInsets.only(bottom: screenHeight! * 0.008),
          color: Colors.blue,
          width: screenWidth! * 0.75,
          child: const Center(
              child: Text(
                'Coming soon...!',
                style: TextStyle(color: Colors.white, fontSize: 20),
              )),
        );
      }
    }
  }

  Widget sleepoverPartyCard({required String cardName,}) {
    switch(cardName) {
      case 'assets/images/party/sleepover_party/party_sleepover_party_one.png': {
        return const PartySleepoverPartyOne();
      }
      case 'assets/images/party/sleepover_party/party_sleepover_party_two.png': {
        return const PartySleepoverPartyTwo();
      }
      default: {
        return Container(
          margin: EdgeInsets.only(bottom: screenHeight! * 0.008),
          color: Colors.blue,
          width: screenWidth! * 0.75,
          child: const Center(
              child: Text(
                'Coming soon...!',
                style: TextStyle(color: Colors.white, fontSize: 20),
              )),
        );
      }
    }
  }

  Widget summerAndPoolCard({required String cardName,}) {
    switch(cardName) {
      case 'assets/images/party/summer_and_pool/party_summer_and_pool_one.png': {
        return const PartySummerAndPoolOne();
      }
      case 'assets/images/party/summer_and_pool/party_summer_and_pool_two.png': {
        return const PartySummerAndPoolTwo();
      }
      case 'assets/images/party/summer_and_pool/party_summer_and_pool_three.png': {
        return const PartySummerAndPoolThree();
      }
      case 'assets/images/party/summer_and_pool/party_summer_and_pool_four.png': {
        return const PartySummerAndPoolFour();
      }
      default: {
        return Container(
          margin: EdgeInsets.only(bottom: screenHeight! * 0.008),
          color: Colors.blue,
          width: screenWidth! * 0.75,
          child: const Center(
              child: Text(
                'Coming soon...!',
                style: TextStyle(color: Colors.white, fontSize: 20),
              )),
        );
      }
    }
  }

  Widget birthCard({required String cardName,}) {
    switch(cardName) {
      case 'assets/images/announcements/birth/announcements_birth_one.png': {
        return const AnnouncementsBirthOne();
      }
      case 'assets/images/announcements/birth/announcements_birth_two.png': {
        return const AnnouncementsBirthTwo();
      }
      default: {
        return Container(
          margin: EdgeInsets.only(bottom: screenHeight! * 0.008),
          color: Colors.blue,
          width: screenWidth! * 0.75,
          child: const Center(
              child: Text(
                'Coming soon...!',
                style: TextStyle(color: Colors.white, fontSize: 20),
              )),
        );
      }
    }
  }

  Widget engagementCard({required String cardName,}) {
    switch(cardName) {
      case 'assets/images/announcements/engagement/announcements_engagement_one.png': {
        return const AnnouncementsEngagementOne();
      }
      case 'assets/images/announcements/engagement/announcements_engagement_two.png': {
        return const AnnouncementsEngagementTwo();
      }
      case 'assets/images/announcements/engagement/announcements_engagement_three.png': {
        return const AnnouncementsEngagementThree();
      }
      default: {
        return Container(
          margin: EdgeInsets.only(bottom: screenHeight! * 0.008),
          color: Colors.blue,
          width: screenWidth! * 0.75,
          child: const Center(
              child: Text(
                'Coming soon...!',
                style: TextStyle(color: Colors.white, fontSize: 20),
              )),
        );
      }
    }
  }

  Widget graduationCard({required String cardName,}) {
    switch(cardName) {
      case 'assets/images/announcements/graduation/announcements_graduation_one.png': {
        return const AnnouncementsGraduationOne();
      }
      case 'assets/images/announcements/graduation/announcements_graduation_two.png': {
        return const AnnouncementsGraduationTwo();
      }
      case 'assets/images/announcements/graduation/announcements_graduation_three.png': {
        return const AnnouncementsGraduationThree();
      }
      default: {
        return Container(
          margin: EdgeInsets.only(bottom: screenHeight! * 0.008),
          color: Colors.blue,
          width: screenWidth! * 0.75,
          child: const Center(
              child: Text(
                'Coming soon...!',
                style: TextStyle(color: Colors.white, fontSize: 20),
              )),
        );
      }
    }
  }

  Widget memorialCard({required String cardName,}) {
    switch(cardName) {
      case 'assets/images/announcements/memorial/announcements_memorial_one.png': {
        return const AnnouncementsMemorialOne();
      }
      case 'assets/images/announcements/memorial/announcements_memorial_two.png': {
        return const AnnouncementsMemorialTwo();
      }
      default: {
        return Container(
          margin: EdgeInsets.only(bottom: screenHeight! * 0.008),
          color: Colors.blue,
          width: screenWidth! * 0.75,
          child: const Center(
              child: Text(
                'Coming soon...!',
                style: TextStyle(color: Colors.white, fontSize: 20),
              )),
        );
      }
    }
  }

  Widget movingCard({required String cardName,}) {
    switch(cardName) {
      case 'assets/images/announcements/moving/announcements_moving_one.png': {
        return const AnnouncementsMovingOne();
      }
      case 'assets/images/announcements/moving/announcements_moving_two.png': {
        return const AnnouncementsMovingTwo();
      }
      default: {
        return Container(
          margin: EdgeInsets.only(bottom: screenHeight! * 0.008),
          color: Colors.blue,
          width: screenWidth! * 0.75,
          child: const Center(
              child: Text(
                'Coming soon...!',
                style: TextStyle(color: Colors.white, fontSize: 20),
              )),
        );
      }
    }
  }

  Widget pregnancyCard({required String cardName,}) {
    switch(cardName) {
      case 'assets/images/announcements/pregnancy/announcements_pregnancy_one.png': {
        return const AnnouncementsPregnancyOne();
      }
      case 'assets/images/announcements/pregnancy/announcements_pregnancy_two.png': {
        return const AnnouncementsPregnancyTwo();
      }
      default: {
        return Container(
          margin: EdgeInsets.only(bottom: screenHeight! * 0.008),
          color: Colors.blue,
          width: screenWidth! * 0.75,
          child: const Center(
              child: Text(
                'Coming soon...!',
                style: TextStyle(color: Colors.white, fontSize: 20),
              )),
        );
      }
    }
  }

  Widget saveTheDateAnnouncementCard({required String cardName,}) {
    switch(cardName) {
      case 'assets/images/announcements/save_the_date/announcements_save_the_date_one.png': {
        return const AnnouncementsSaveTheDateOne();
      }
      case 'assets/images/announcements/save_the_date/announcements_save_the_date_two.png': {
        return const AnnouncementsSaveTheDateTwo();
      }
      case 'assets/images/announcements/save_the_date/announcements_save_the_date_three.png': {
        return const AnnouncementsSaveTheDateThree();
      }
      default: {
        return Container(
          margin: EdgeInsets.only(bottom: screenHeight! * 0.008),
          color: Colors.blue,
          width: screenWidth! * 0.75,
          child: const Center(
              child: Text(
                'Coming soon...!',
                style: TextStyle(color: Colors.white, fontSize: 20),
              )),
        );
      }
    }
  }

  Widget weddingAnnouncementCard({required String cardName,}) {
    switch(cardName) {
      case 'assets/images/announcements/wedding/announcements_wedding_one.png': {
        return const AnnouncementsWeddingOne();
      }
      case 'assets/images/announcements/wedding/announcements_wedding_two.png': {
        return const AnnouncementsWeddingTwo();
      }
      case 'assets/images/announcements/wedding/announcements_wedding_three.png': {
        return const AnnouncementsWeddingThree();
      }
      default: {
        return Container(
          margin: EdgeInsets.only(bottom: screenHeight! * 0.008),
          color: Colors.blue,
          width: screenWidth! * 0.75,
          child: const Center(
              child: Text(
                'Coming soon...!',
                style: TextStyle(color: Colors.white, fontSize: 20),
              )),
        );
      }
    }
  }

  Widget babiesAndKidsFirstBirthdayCard({required String cardName,}) {
    switch(cardName) {
      case 'assets/images/babies_and_kids/first_birthday/babies_and_kids_first_birthday_one.png': {
        return const BabiesAndKidsFirstBirthdayOne();
      }
      case 'assets/images/babies_and_kids/first_birthday/babies_and_kids_first_birthday_two.png': {
        return const BabiesAndKidsFirstBirthdayTwo();
      }
      default: {
        return Container(
          margin: EdgeInsets.only(bottom: screenHeight! * 0.008),
          color: Colors.blue,
          width: screenWidth! * 0.75,
          child: const Center(
              child: Text(
                'Coming soon...!',
                style: TextStyle(color: Colors.white, fontSize: 20),
              )),
        );
      }
    }
  }

  Widget babiesAndKidsBabyBirthdayCard({required String cardName,}) {
    switch(cardName) {
      case 'assets/images/babies_and_kids/baby_birthday/babies_and_kids_baby_birthday_one.png': {
        return const BabiesAndKidsBabyBirthdayOne();
      }
      default: {
        return Container(
          margin: EdgeInsets.only(bottom: screenHeight! * 0.008),
          color: Colors.blue,
          width: screenWidth! * 0.75,
          child: const Center(
              child: Text(
                'Coming soon...!',
                style: TextStyle(color: Colors.white, fontSize: 20),
              )),
        );
      }
    }
  }

  Widget babyShowerCard({required String cardName,}) {
    switch(cardName) {
      case 'assets/images/babies_and_kids/baby_shower/babies_and_kids_baby_shower_one.png': {
        return const BabiesAndKidsBabyShowerOne();
      }
      case 'assets/images/babies_and_kids/baby_shower/babies_and_kids_baby_shower_two.png': {
        return const BabiesAndKidsBabyShowerTwo();
      }
      case 'assets/images/babies_and_kids/baby_shower/babies_and_kids_baby_shower_three.png': {
        return const BabiesAndKidsBabyShowerThree();
      }
      default: {
        return Container(
          margin: EdgeInsets.only(bottom: screenHeight! * 0.008),
          color: Colors.blue,
          width: screenWidth! * 0.75,
          child: const Center(
              child: Text(
                'Coming soon...!',
                style: TextStyle(color: Colors.white, fontSize: 20),
              )),
        );
      }
    }
  }

  Widget babySprinkleCard({required String cardName,}) {
    switch(cardName) {
      case 'assets/images/babies_and_kids/baby_sprinkle/babies_and_kids_baby_sprinkle_one.png': {
        return const BabiesAndKidsBabySprinkleOne();
      }
      case 'assets/images/babies_and_kids/baby_sprinkle/babies_and_kids_baby_sprinkle_two.png': {
        return const BabiesAndKidsBabySprinkleTwo();
      }
      case 'assets/images/babies_and_kids/baby_sprinkle/babies_and_kids_baby_sprinkle_three.png': {
        return const BabiesAndKidsBabySprinkleThree();
      }
      default: {
        return Container(
          margin: EdgeInsets.only(bottom: screenHeight! * 0.008),
          color: Colors.blue,
          width: screenWidth! * 0.75,
          child: const Center(
              child: Text(
                'Coming soon...!',
                style: TextStyle(color: Colors.white, fontSize: 20),
              )),
        );
      }
    }
  }

  Widget baptismAndChristeningCard({required String cardName,}) {
    switch(cardName) {
      case 'assets/images/babies_and_kids/baptism_and_christening/babies_and_kids_baptism_and_christening_one.png': {
        return const BabiesAndKidsBaptismAndChristeningOne();
      }
      case 'assets/images/babies_and_kids/baptism_and_christening/babies_and_kids_baptism_and_christening_two.png': {
        return const BabiesAndKidsBaptismAndChristeningTwo();
      }
      default: {
        return Container(
          margin: EdgeInsets.only(bottom: screenHeight! * 0.008),
          color: Colors.blue,
          width: screenWidth! * 0.75,
          child: const Center(
              child: Text(
                'Coming soon...!',
                style: TextStyle(color: Colors.white, fontSize: 20),
              )),
        );
      }
    }
  }

  Widget firstCommunionCard({required String cardName,}) {
    switch(cardName) {
      case 'assets/images/babies_and_kids/first_communion/babies_and_kids_first_communion_one.png': {
        return const BabiesAndKidsFirstCommunionOne();
      }
      case 'assets/images/babies_and_kids/first_communion/babies_and_kids_first_communion_two.png': {
        return const BabiesAndKidsFirstCommunionTwo();
      }
      case 'assets/images/babies_and_kids/first_communion/babies_and_kids_first_communion_three.png': {
        return const BabiesAndKidsFirstCommunionThree();
      }
      default: {
        return Container(
          margin: EdgeInsets.only(bottom: screenHeight! * 0.008),
          color: Colors.blue,
          width: screenWidth! * 0.75,
          child: const Center(
              child: Text(
                'Coming soon...!',
                style: TextStyle(color: Colors.white, fontSize: 20),
              )),
        );
      }
    }
  }

  Widget genderRevealCard({required String cardName,}) {
    switch(cardName) {
      case 'assets/images/babies_and_kids/gender_reveal/babies_and_kids_gender_reveal_one.png': {
        return const BabiesAndKidsGenderRevealOne();
      }
      case 'assets/images/babies_and_kids/gender_reveal/babies_and_kids_gender_reveal_two.png': {
        return const BabiesAndKidsGenderRevealTwo();
      }
      case 'assets/images/babies_and_kids/gender_reveal/babies_and_kids_gender_reveal_three.png': {
        return const BabiesAndKidsGenderRevealThree();
      }
      default: {
        return Container(
          margin: EdgeInsets.only(bottom: screenHeight! * 0.008),
          color: Colors.blue,
          width: screenWidth! * 0.75,
          child: const Center(
              child: Text(
                'Coming soon...!',
                style: TextStyle(color: Colors.white, fontSize: 20),
              )),
        );
      }
    }
  }

  Widget babiesAndKidsKidsBirthdayCard({required String cardName,}) {
    switch(cardName) {
      case 'assets/images/babies_and_kids/kids_birthday/babies_and_kids_kids_birthday_one.png': {
        return const BabiesAndKidsKidsBirthdayOne();
      }
      default: {
        return Container(
          margin: EdgeInsets.only(bottom: screenHeight! * 0.008),
          color: Colors.blue,
          width: screenWidth! * 0.75,
          child: const Center(
              child: Text(
                'Coming soon...!',
                style: TextStyle(color: Colors.white, fontSize: 20),
              )),
        );
      }
    }
  }

  Widget sipAndSeeCard({required String cardName,}) {
    switch(cardName) {
      case 'assets/images/babies_and_kids/sip_and_see/babies_and_kids_sip_and_see_one.png': {
        return const BabiesAndKidsSipAndSeeOne();
      }
      case 'assets/images/babies_and_kids/sip_and_see/babies_and_kids_sip_and_see_two.png': {
        return const BabiesAndKidsSipAndSeeTwo();
      }
      case 'assets/images/babies_and_kids/sip_and_see/babies_and_kids_sip_and_see_three.png': {
        return const BabiesAndKidsSipAndSeeThree();
      }
      default: {
        return Container(
          margin: EdgeInsets.only(bottom: screenHeight! * 0.008),
          color: Colors.blue,
          width: screenWidth! * 0.75,
          child: const Center(
              child: Text(
                'Coming soon...!',
                style: TextStyle(color: Colors.white, fontSize: 20),
              )),
        );
      }
    }
  }


  // Birthday cards sub category Selection
  /*Widget birthdayCardCubCategorySelection({required String subCategoryName, required String cardName}) {
    switch(subCategoryName) {
      case '1st Birthday': {
        break;
      }
      case 'Baby Birthday': {
        break;
      }
      default: {
        return Container(
          margin: EdgeInsets.only(bottom: screenHeight! * 0.008),
          color: Colors.red,
          width: screenWidth! * 0.75,
          child: const Center(
              child: Text(
                'Coming soon...!',
                style: TextStyle(color: Colors.white, fontSize: 20),
              )),
        );
      }
    }
  }

  // Party cards sub category Selection
  Widget partyCardCubCategorySelection({required String subCategoryName, required String cardName}) {
    switch(subCategoryName) {
      case 'Anniversary': {
        break;
      }
      case 'BBQ Party': {
        break;
      }
      default: {
        return Container(
          margin: EdgeInsets.only(bottom: screenHeight! * 0.008),
          color: Colors.red,
          width: screenWidth! * 0.75,
          child: const Center(
              child: Text(
                'Coming soon...!',
                style: TextStyle(color: Colors.white, fontSize: 20),
              )),
        );
      }
    }
  }

  // Babies & Kids cards sub category Selection
  Widget babiesAndKidsCardCubCategorySelection({required String subCategoryName, required String cardName}) {
    switch(subCategoryName) {
      case '1st Birthday': {
        break;
      }
      case 'Birth Announcements': {
        break;
      }
      default: {
        return Container(
          margin: EdgeInsets.only(bottom: screenHeight! * 0.008),
          color: Colors.red,
          width: screenWidth! * 0.75,
          child: const Center(
              child: Text(
                'Coming soon...!',
                style: TextStyle(color: Colors.white, fontSize: 20),
              )),
        );
      }
    }
  }

  // Announcements cards sub category Selection
  Widget announcementsCardCubCategorySelection({required String subCategoryName, required String cardName}) {
    switch(subCategoryName) {
      case 'Birth': {
        break;
      }
      case 'Engagement': {
        break;
      }
      default: {
        return Container(
          margin: EdgeInsets.only(bottom: screenHeight! * 0.008),
          color: Colors.red,
          width: screenWidth! * 0.75,
          child: const Center(
              child: Text(
                'Coming soon...!',
                style: TextStyle(color: Colors.white, fontSize: 20),
              )),
        );
      }
    }
  }*/
}

class CardCustomizationScreenChangeNotifier extends ChangeNotifier {
  double _bottomSheetMainHeight = 0.0;
  int _bottomSheetSizeSliderValue = 10;
  Color _bottomSheetColorChildValue  = Colors.white;
  Alignment _bottomSheetAlignChildValue = Alignment.center;
  String _text = '', _fontStyle = '';

  List<bool> cardCustomizationSelectorControllerList = <bool>[];


  void initSelectorControllerList() {
    cardCustomizationSelectorControllerList.clear();
    for(int i = 0; i < 8; i++) { // may be we need to change the number of loop iterations
      cardCustomizationSelectorControllerList.add(false);
    }
  }

  void myNotify() {
    notifyListeners();
  }


  String get fontStyle => _fontStyle;

  set fontStyle(value) {
    _fontStyle = value;
    notifyListeners();
  }

  String get text => _text;

  set text(String value) {
    _text = value;
    notifyListeners();
  }

  double get bottomSheetMainHeight => _bottomSheetMainHeight;

  set bottomSheetMainHeight(double value) {
    _bottomSheetMainHeight = value;
    notifyListeners();
  }

  int get bottomSheetSizeSliderValue => _bottomSheetSizeSliderValue;

  set bottomSheetSizeSliderValue(int value) {
    _bottomSheetSizeSliderValue = value;
    notifyListeners();
  }

  Color get bottomSheetColorChildValue => _bottomSheetColorChildValue;

  set bottomSheetColorChildValue(Color value) {
    _bottomSheetColorChildValue = value;
    notifyListeners();
  }

  Alignment get bottomSheetAlignChildValue => _bottomSheetAlignChildValue;

  set bottomSheetAlignChildValue(Alignment value) {
    _bottomSheetAlignChildValue = value;
    notifyListeners();
  }
}

class CardCustomizationDataModel {
  Color enableBorderColor = Colors.black26, activeBorderColor = Colors.black, customizeContainerBorderColor = Colors.transparent;
  String fontStyle = '';
  int fontSize = 8;
  int textColor = 0xFFFFFFFF;
  TextAlign textAlignment = TextAlign.center;

  CardCustomizationDataModel(
      {this.enableBorderColor = Colors.black26,
        this.customizeContainerBorderColor = Colors.transparent,
        this.fontStyle = '',
        this.activeBorderColor = Colors.black,
        this.fontSize = 15,
        this.textColor = 0xFF000000,
        this.textAlignment = TextAlign.center});
}

class CardCategoryProvider {
  String cardName = '';

  CardCategoryProvider({required this.cardName});
}