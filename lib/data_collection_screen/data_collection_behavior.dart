import 'package:flutter/material.dart';
import 'package:vibration/vibration.dart';

bool isBeingPopped = false;

List<String> hintTextList = <String>[];

Map<String, GlobalKey<FormState>> textFieldKeyMap =
<String, GlobalKey<FormState>>{};

Map<String, TextEditingController> textFieldControllerMap =
<String, TextEditingController>{};

Map<String, AnimationController> textFieldShakingAnimationControllerMap = <String, AnimationController>{};

Map<String, Animation<Offset>> textFieldShakingAnimationMap = <String, Animation<Offset>>{};

Map<String, String> textFieldDataMap = <String, String>{};

Map<String, bool> textFieldVisibilityMap = <String, bool>{};

DateTime? pickedDate;
TimeOfDay? pickedTime;
String? pickedAnniversary, babyGender, age, memorialYearOfBirth;

DataCollectionScreenChangeNotifier dataCollectionScreenChangeNotifier =
DataCollectionScreenChangeNotifier();

class DataCollectionBehavior {
  bool isKeyboardOpen = false, isVibrationAvailable = false;


  // duration: (animationSpeedController * 0.085).toInt(), = 170;
  //duration: (animationSpeedController * 0.120).toInt(), = 240;
  //duration: (animationSpeedController * 0.155).toInt(), = 310;
  //duration: (animationSpeedController * 0.190).toInt(), = 380;
  //duration: (animationSpeedController * 0.225).toInt(), = 450;
  //duration: (animationSpeedController * 0.260).toInt(), = 520;
  //duration: (animationSpeedController * 0.295).toInt(), = 590;
  //duration: (animationSpeedController * 0.330).toInt(), = 660;
  //duration: (animationSpeedController * 0.365).toInt(), = 730;
  //duration: (animationSpeedController * 0.400).toInt(), = 800;
  //duration: (animationSpeedController * 0.435).toInt(), = 870;
  //duration: (animationSpeedController * 0.470).toInt(), = 940;
  //duration: (animationSpeedController * 0.505).toInt(), = 1010;
  //duration: (animationSpeedController * 0.540).toInt(), = 1080;

  ScrollPhysics scrollPhysics = const NeverScrollableScrollPhysics();
  ScrollController scrollController = ScrollController();

  void initializeWeddingHintTextList({String weddingSubCategoryTitle = ''}) {
    switch (weddingSubCategoryTitle) {
      case 'Wedding Invitations':
        {
          hintTextList = <String>[
            'Groom Name',
            'Bride Name',
            'Venue',
            'Please Reply At',
            'Date',
            'Time',
          ];
          break;
        }
      case 'Bridal Shower':
        {
          hintTextList = <String>[
            'Bride Name',
            'Venue',
            'Please Reply At',
            'Date',
            'Time',
          ];
          break;
        }
      case 'Bachelor Party':
        {
          hintTextList = <String>[
            'Groom/Bride Name',
            'Venue',
            'Please Reply At',
            'Date',
            'Time',
          ];
          break;
        }
      case 'Save The Date':
        {
          hintTextList = <String>[
            'Future Groom Name',
            'Future Bride Name',
            'Venue',
            'Please Reply At',
            'Date',
            'Time',
          ];
          break;
        }
      case 'Engagement Party':
        {
          hintTextList = <String>[
            'Future Groom Name',
            'Future Bride Name',
            'Venue',
            'Please Reply At',
            'Date',
            'Time',
          ];
          break;
        }
      case 'Rehearsal Dinner':
        {
          hintTextList = <String>[
            'Groom Name',
            'Bride Name',
            'Venue',
            'Please Reply At',
            'Date',
            'Time',
          ];
          break;
        }
      case 'RSVP Cards':
        {
          hintTextList = <String>[
            'RSVP',
          ];
          break;
        }
      default :{
        hintTextList = <String>[];
        break;
      }
    }
  }

  void initializeBirthdayHintTextList({String birthdaySubCategoryTitle = ''}) {
    switch (birthdaySubCategoryTitle) {
      case '1st Birthday':
        {
          hintTextList = <String>[
            'Baby Name',
            'Venue',
            'Please Reply At',
            'Date',
            'Time',
          ];
          break;
        }
      case 'Baby Birthday':
        {
          hintTextList = <String>[
            'Baby Name',
            'Baby Age',
            'Venue',
            'Please Reply At',
            'Date',
            'Time',
          ];
          break;
        }
      case 'Kids Birthday':
        {
          hintTextList = <String>[
            'Kid Name',
            'Kid Age',
            'Venue',
            'Please Reply At',
            'Date',
            'Time',
          ];
          break;
        }
      case 'Men\'s Birthday':
        {
          hintTextList = <String>[
            'Man Name',
            'Man Age',
            'Venue',
            'Please Reply At',
            'Date',
            'Time',
          ];
          break;
        }
      case 'Women\'s Birthday':
        {
          hintTextList = <String>[
            'Woman Name',
            'Woman Age',
            'Venue',
            'Please Reply At',
            'Date',
            'Time',
          ];
          break;
        }
      default :{
        hintTextList = <String>[];
        break;
      }
    }
  }

  void initializePartyHintTextList({String partySubCategoryTitle = ''}) {
    switch (partySubCategoryTitle) {
      case 'Anniversary':
        {
          hintTextList = <String>[
            'Husband Name',
            'Wife Name',
            'Anniversary',
            'Venue',
            'Please Reply At',
            'Date',
            'Time',
          ];
          break;
        }
      case 'BBQ Party':
        {
          hintTextList = <String>[
            'Host name',
            'Venue',
            'Please Reply At',
            'Date',
            'Time',
          ];
          break;
        }
      case 'Christmas Party':
        {
          hintTextList = <String>[
            'Host name',
            'Venue',
            'Please Reply At',
            'Date',
            'Time',
          ];
          break;
        }
      case 'Cocktail Party':
        {
          hintTextList = <String>[
            'Host name',
            'Venue',
            'Please Reply At',
            'Date',
            'Time',
          ];
          break;
        }
      case 'Dinner Party':
        {
          hintTextList = <String>[
            'Host name',
            'Venue',
            'Please Reply At',
            'Date',
            'Time',
          ];
          break;
        }
      case 'Family Reunion':
        {
          hintTextList = <String>[
            'Family head name',
            'Venue',
            'Please Reply At',
            'Date',
            'Time',
          ];
          break;
        }
      case 'Graduation Party':
        {
          hintTextList = <String>[
            'in honour of ?',
            'Venue',
            'Please Reply At',
            'Date',
            'Time',
          ];
          break;
        }
      case 'Housewarming':
        {
          hintTextList = <String>[
            'House owner name',
            'House address',
            'Please Reply At',
            'Date',
            'Time',
          ];
          break;
        }
      case 'Retirement Party':
        {
          hintTextList = <String>[
            'Retired person name',
            'Venue',
            'Please Reply At',
            'Date',
            'Time',
          ];
          break;
        }
      case 'RSVP Cards':
        {
          hintTextList = <String>[
            'Invitor name',
            'Meeting Place',
            'Guest Name',
            'Date',
            'Time',
          ];
          break;
        }
      case 'Sleepover Party':
        {
          hintTextList = <String>[
            'Host name',
            'Venue',
            'Please Reply At',
            'Date',
            'Time',
          ];
          break;
        }
      case 'Sports & Games':
        {
          hintTextList = <String>[
            'Game title',
            'Host name',
            'Venue',
            'Please Reply At',
            'Date',
            'Time',
          ];
          break;
        }
      case 'Summer & Pool':
        {
          hintTextList = <String>[
            'Host name',
            'Venue',
            'Please Reply At',
            'Date',
            'Time',
          ];
          break;
        }
      case 'Professional Events':
        {
          hintTextList = <String>[
            'Party title',
            'Host name',
            'Venue',
            'Please Reply At',
            'Date',
            'Time',
          ];
          break;
        }
      case 'Happy New Year':
        {
          hintTextList = <String>[
            'Host name',
            'Venue',
            'Please Reply At',
            'Date',
            'Time',
          ];
          break;
        }
      default :{
        hintTextList = <String>[];
        break;
      }
    }
  }

  void initializeBabiesAndKidsHintTextList({String babiesAndKidsSubCategoryTitle = ''}) {
    switch (babiesAndKidsSubCategoryTitle) {
      case '1st Birthday':
        {
          hintTextList = <String>[
            'Baby Name',
            'Venue',
            'Please Reply At',
            'Date',
            'Time',
          ];
          break;
        }
      case 'Birth Announcements':
        {
          hintTextList = <String>[
            'Baby name',
            'Boy or girl ?',
            'Mother name',
            'Father name',
            'Date of birth',
            'Time of birth',
          ];
          break;
        }
      case 'Baby Birthday':
        {
          hintTextList = <String>[
            'Baby Name',
            'Baby Age',
            'Venue',
            'Please Reply At',
            'Date',
            'Time',
          ];
          break;
        }
      case 'Baby Shower':
        {
          hintTextList = <String>[
            'Baby name',
            'Boy or girl ?',
            'Mother name',
            'Venue',
            'Please Reply At',
            'Date',
            'Time',
          ];
          break;
        }
      case 'Baby Sprinkle':
        {
          hintTextList = <String>[
            'Baby name',
            'Venue',
            'Please Reply At',
            'Date',
            'Time',
          ];
          break;
        }
      case 'Baptism & Christening':
        {
          hintTextList = <String>[
            'Baby name',
            'Venue',
            'Please Reply At',
            'Date',
            'Time',
          ];
          break;
        }
      case 'First Communion':
        {
          hintTextList = <String>[
            'Baby Name',
            'Boy or girl ?',
            'Venue',
            'Please Reply At',
            'Date',
            'Time',
          ];
          break;
        }
      case 'Gender Reveal':
        {
          hintTextList = <String>[
            'Baby father name',
            'Baby mother name',
            'Venue',
            'Please Reply At',
            'Date',
            'Time',
          ];
          break;
        }
      case 'Kids Birthday':
        {
          hintTextList = <String>[
            'Kid Name',
            'Kid Age',
            'Venue',
            'Please Reply At',
            'Date',
            'Time',
          ];
          break;
        }
      case 'Sip & See':
        {
          hintTextList = <String>[
            'Baby name',
            'Venue',
            'Please Reply At',
            'Date',
            'Time',
          ];
          break;
        }
      default :{
        hintTextList = <String>[];
        break;
      }
    }
  }

  void initializeAnnouncementsHintTextList({String announcementsSubCategoryTitle = ''}) {
    switch (announcementsSubCategoryTitle) {
      case 'Birth':
        {
          hintTextList = <String>[
            'Baby name',
            'Boy or girl ?',
            'Date of birth',
            'Time of birth',
          ];
          break;
        }
      case 'Engagement':
        {
          hintTextList = <String>[
            'Engaged girl name',
            'Engaged boy name',
            'Engagement date (past)',
            'Engagement time',
          ];
          break;
        }
      case 'Graduation':
        {
          hintTextList = <String>[
            'Graduated person name',
            'Institute name',
            'Graduated degree title',
            'Graduation date',
          ];
          break;
        }
      case 'Memorial':
        {
          hintTextList = <String>[
            'Memorial name',
            'Year of birth',
            'Venue',
            'Date',
            'Time',
          ];
          break;
        }
      case 'Moving':
        {
          hintTextList = <String>[
            'New house address',
          ];
          break;
        }
      case 'Pregnancy':
        {
          hintTextList = <String>[
            'Husband name',
            'Wife name',
            'Expected birth date',
          ];
          break;
        }
      case 'Save the date':
        {
          hintTextList = <String>[
            'Boy name',
            'Girl name',
            'Coming marriage date',
          ];
          break;
        }
      case 'Wedding':
        {
          hintTextList = <String>[
            'Groom name',
            'Bride name',
            'Marriage date (past)',
          ];
          break;
        }
      default :{
        hintTextList = <String>[];
        break;
      }
    }
  }

  void initializeTextFieldKeyMap() {
    for (String hintText in hintTextList) {
      textFieldKeyMap[hintText] = GlobalKey<FormState>();
    }
  }

  void initializeTextFieldControllerMap() {
    for (String hintText in hintTextList) {
      textFieldControllerMap[hintText] = TextEditingController();
    }
  }

  void initializeTextFieldVisibilityMap() {
    for (String hintText in hintTextList) {
      textFieldVisibilityMap[hintText] = false;
    }
  }

  void initializeTextFieldShakingAnimationMap() {
    for (String hintText in hintTextList) {
      textFieldShakingAnimationMap[hintText] = Tween<Offset>(begin: const Offset(-5,0), end: const Offset(5, 0)).animate(textFieldShakingAnimationControllerMap[hintText]!)..addListener(() {
        dataCollectionScreenChangeNotifier.textFieldChangeNotifierMap[hintText] = textFieldShakingAnimationMap[hintText]!.value.dx;
        dataCollectionScreenChangeNotifier.notify();
      })..addStatusListener((status) {
        if(status == AnimationStatus.completed) {
          textFieldShakingAnimationControllerMap[hintText]!.repeat();
        }
      });
    }
  }

  Future<void> checkVibrationAvailability() async {
    isVibrationAvailable = (await Vibration.hasVibrator())!;
  }
}

class DataCollectionScreenChangeNotifier extends ChangeNotifier  {
  double _imageChangeNotifier = 0.0;

  bool _verticalTextVisibility = false;

  Map<String, double> textFieldChangeNotifierMap = <String, double>{};

  void initializeTextFieldChangeNotifierMap() {
    for (String hintText in hintTextList) {
      textFieldChangeNotifierMap[hintText] = 0.0;
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

}
