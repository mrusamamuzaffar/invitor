import 'package:flutter/material.dart';
import 'package:invitor/home_screen/home_behavior.dart';
import 'package:invitor/splash_screen/splash_behavior.dart';
import 'package:invitor/sub_category_selection_screen/sub_category_selection_portion/announcements_sub_category_buttons.dart';
import 'package:invitor/sub_category_selection_screen/sub_category_selection_portion/babies_and_kids_sub_category_buttons.dart';
import 'package:invitor/sub_category_selection_screen/sub_category_selection_portion/birthday_sub_category_buttons.dart';
import 'package:invitor/sub_category_selection_screen/sub_category_selection_portion/party_sub_category_buttons.dart';
import 'package:invitor/sub_category_selection_screen/sub_category_selection_portion/wedding_sub_category_buttons.dart';

Widget fetchSubCategorySelectionPortion () {
  switch(mainCategoryTitle) {
    case 'Wedding': {
      return const WeddingSubCategorySelectionPortion();
    }
    case 'Birthday': {
      return const BirthdaySubCategorySelectionPortion();
    }
    case 'Party': {
      return const PartySubCategorySelectionPortion();
    }
    case 'Babies & Kids': {
      return const BabiesAndKidsSubCategorySelectionPortion();
    }
    case 'Announcements': {
      return const AnnouncementsSubCategorySelectionPortion();
    }
    default : {
      return Container(color: Colors.red, width: screenWidth! * 0.75, child: const Center(child: Text('Coming soon...!', style: TextStyle(color: Colors.white, fontSize: 20),)),);
    }
  }
}