import 'dart:ui';

import 'package:flutter/animation.dart';
import 'package:flutter/foundation.dart';

List<String> subCategorySelectionButtonTextList = <String>[];
SubCategorySelectionChangeNotifier subCategorySelectionChangeNotifier = SubCategorySelectionChangeNotifier();

bool eventCategoriesVisibility = true, isSubCategorySelectionBeingPopped = false;

Map<String, bool>? subCategorySelectionButtonVisibilityMap = <String, bool>{};

class SubCategorySelectionBehavior {

  AnimationController? subCategorySelectionImageAnimationController;
  Animation<Offset>? subCategorySelectionImageAnimation;

  void initializeSubCategorySelectionButtonTextList({String listTitle = ''}) {
    switch (listTitle) {
      case 'Wedding':
        {
          subCategorySelectionButtonTextList = <String>[
            'Wedding Invitations',
            'Bridal Shower',
            'Bachelor Party',
            'Save The Date',
            'Engagement Party',
            'Rehearsal Dinner',
            'RSVP Cards',
          ];
          break;
        }
      case 'Birthday':
        {
          subCategorySelectionButtonTextList = <String>[
            '1st Birthday',
            'Baby Birthday',
            'Kids Birthday',
            'Men\'s Birthday',
            'Women\'s Birthday',
          ];
          break;
        }
      case 'Party':
        {
          subCategorySelectionButtonTextList = <String>[
            'Anniversary',
            'BBQ Party',
            'Christmas Party',
            'Cocktail Party',
            'Dinner Party',
            'Family Reunion',
            'Graduation Party',
            'Housewarming',
            'Retirement Party',
            'Happy New Year',
            'Sleepover Party',
            'Sports & Games',
            'Summer & Pool',
            'Professional Events',
          ];
          break;
        }
      case 'Babies & Kids':
        {
          subCategorySelectionButtonTextList = <String>[
            '1st Birthday',
            'Birth Announcements',
            'Baby Birthday',
            'Baby Shower',
            'Baby Sprinkle',
            'Baptism & Christening',
            'First Communion',
            'Gender Reveal',
            'Kids Birthday',
            'Sip & See',
          ];
          break;
        }
      case 'Announcements':
        {
          subCategorySelectionButtonTextList = <String>[
            'Birth',
            'Engagement',
            'Graduation',
            'Memorial',
            'Moving',
            'Pregnancy',
            'Save the date',
            'Wedding',
          ];
          break;
        }
      default :{
        subCategorySelectionButtonTextList = <String>[];
        break;
      }
    }
  }

  void initializeSubCategorySelectionButtonVisibilityMap() {
    for (String text in subCategorySelectionButtonTextList) {
      subCategorySelectionButtonVisibilityMap![text] = false;
    }
  }
}

class SubCategorySelectionChangeNotifier extends ChangeNotifier  {
  double _imageChangeNotifier = 0.0;
  bool _eventCategoriesVisibilityChangeNotifier = true;

  bool _verticalTextVisibility = false;

  Map<String, double> subCategorySelectionButtonChangeNotifierMap = <String, double>{};

  void initializeSubCategorySelectionButtonChangeNotifierMap() {
    for (String text in subCategorySelectionButtonTextList) {
      subCategorySelectionButtonChangeNotifierMap[text] = 0.0;
    }
  }

  void notify() {
    notifyListeners();
  }

  set imageChangeNotifier(double value) {
    _imageChangeNotifier = value;
    notifyListeners();
  }

  double get imageChangeNotifier => _imageChangeNotifier;

  set verticalTextVisibility(bool value) {
    _verticalTextVisibility = value;
    notifyListeners();
  }

  bool get verticalTextVisibility => _verticalTextVisibility;

  set eventCategoriesVisibilityChangeNotifier(bool value) {
    _eventCategoriesVisibilityChangeNotifier = value;
    notifyListeners();
  }

  bool get eventCategoriesVisibilityChangeNotifier => _eventCategoriesVisibilityChangeNotifier;

  @override
  void dispose() {
    super.dispose();
  }
}