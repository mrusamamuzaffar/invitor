import 'package:flutter/material.dart';
import 'package:invitor/card_collection_screen/card_collection_ui.dart';
import 'package:invitor/contacts_screen/contacts_behavior.dart';
import 'package:invitor/contacts_screen/contacts_ui.dart';
import 'package:invitor/data_collection_screen/data_collection_behavior.dart';
import 'package:invitor/home_screen/home_behavior.dart';
import 'package:invitor/home_screen/home_ui.dart';
import 'package:invitor/local_database/domain/model/contacts.dart';
import 'package:invitor/splash_screen/splash_behavior.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vibration/vibration.dart';
import 'data_collection_portion_provider.dart';

class DataCollection extends StatefulWidget {
  static const String ROUTE_NAME = 'DataCollection';
  const DataCollection({Key? key}) : super(key: key);

  @override
  _DataCollectionState createState() => _DataCollectionState();
}

class _DataCollectionState extends State<DataCollection>
    with HomeScreenBehavior, DataCollectionBehavior, TickerProviderStateMixin {

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
                  subCategoryTitle,
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
                      subCategoryTitle,
                      maxLines: 1,
                    ),
                  ),
                ),
                Selector<DataCollectionScreenChangeNotifier, bool>(
                  shouldRebuild: (previous, next) => previous != next,
                  selector: (context, dataCollectionScreenChangeNotifier) =>
                      dataCollectionScreenChangeNotifier.verticalTextVisibility,
                  builder: (context, verticalTextVisibility, child) =>
                      Visibility(
                    visible: verticalTextVisibility,
                    maintainState: true,
                    maintainAnimation: true,
                    maintainSize: true,
                    child: Text(
                      numberOfSubCategoryCards,
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

  void initializeHintTextList({String categoryTitle = ''}) {
    switch (categoryTitle) {
      case 'Wedding':
        {
          initializeWeddingHintTextList(
              weddingSubCategoryTitle: subCategoryTitle);
          break;
        }
      case 'Birthday':
        {
          initializeBirthdayHintTextList(
              birthdaySubCategoryTitle: subCategoryTitle);
          break;
        }
      case 'Party':
        {
          initializePartyHintTextList(
              partySubCategoryTitle: subCategoryTitle);
          break;
        }
      case 'Babies & Kids':
        {
          initializeBabiesAndKidsHintTextList(
              babiesAndKidsSubCategoryTitle:subCategoryTitle);
          break;
        }
      case 'Announcements':
        {
          initializeAnnouncementsHintTextList(
              announcementsSubCategoryTitle: subCategoryTitle);
          break;
        }
      default:
        {
          break;
        }
    }
  }

  @override
  void initState() {
    initializeHintTextList(categoryTitle: mainCategoryTitle);
    initializeTextFieldKeyMap();
    initializeTextFieldControllerMap();
    initializeTextFieldVisibilityMap();
    initializeTextFieldShakingAnimationControllerMap();
    initializeTextFieldShakingAnimationMap();
    checkVibrationAvailability();
    pickedDate = null;
    pickedTime = null;
    super.initState();
  }

  @override
  void dispose() {
    /*for (String hintText in hintTextList) {
      textFieldShakingAnimationControllerMap[hintText]!.dispose();
    }*/
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    isBeingPopped = false;

    dataCollectionScreenChangeNotifier = Provider.of<DataCollectionScreenChangeNotifier>(context, listen: false);

    Future.delayed(
        Duration(milliseconds: (animationSpeedController * 0.10).toInt()), () {
      dataCollectionScreenChangeNotifier.verticalTextVisibility = true;
    });

    var mediaQuery = MediaQuery.of(context);
    if (mediaQuery.viewInsets.bottom != 0) {
      scrollPhysics = const ClampingScrollPhysics();
      isKeyboardOpen = true;
    } else if (isKeyboardOpen) {
      setState(() {
        scrollController.animateTo(
          scrollController.initialScrollOffset,
          duration: const Duration(microseconds: 100),
          curve: Curves.decelerate,
        );
        scrollPhysics = const NeverScrollableScrollPhysics();
        isKeyboardOpen = false;
      });
    }

    initValues();

    dataCollectionScreenChangeNotifier.initializeTextFieldChangeNotifierMap();

    return WillPopScope(
      onWillPop: () {
        categoryTitleForVisibilityController = '';
        isBeingPopped = true;

        for (int i = hintTextList.length - 1; i >= 0; i--) {
          textFieldVisibilityMap[hintTextList[i]] = false;
          dataCollectionScreenChangeNotifier
              .textFieldChangeNotifierMap[hintTextList[i]] = i.toDouble();
        }
        dataCollectionScreenChangeNotifier.notify();
        dataCollectionScreenChangeNotifier.verticalTextVisibility = false;
        Navigator.pop(context);
        animationController!.reverse();
        pickedDate = null;
        pickedTime = null;
        pickedAnniversary = null;
        babyGender = null;
        age = null;
        textFieldDataMap.clear();
        memorialYearOfBirth = null;
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
          actions: <Widget>[
            // appBarAction(Icons.favorite_border_sharp, () {}),
            // appBarAction(Icons.shopping_cart_outlined, () {}),
            IconButton(
              icon: const Icon(Icons.paste_outlined, color: Colors.black,),
              onPressed: () async {
                int _i = 0;
                List<String> _invitationDataList = <String>[];
                SharedPreferences _sharedPreferences = await SharedPreferences.getInstance();
                if(_sharedPreferences.containsKey('$mainCategoryTitle$subCategoryTitle')) {
                  _invitationDataList = (_sharedPreferences.getStringList('$mainCategoryTitle$subCategoryTitle'))!;
                  if(_invitationDataList.isNotEmpty) {
                    for (String hintText in hintTextList) {
                      if(hintText.toLowerCase().contains('date')) {
                        List<String> list = _invitationDataList[_i].split('/');
                        pickedDate = DateTime(int.parse(list[2]), int.parse(list[1]), int.parse(list[0]));
                      }
                      if(hintText.toLowerCase().contains('time')) {
                        List<String> list1 = _invitationDataList[_i].split(':');
                        List<String> list2 = list1[1].split(' ');
                        String hours = (list2[1] == 'pm') ? (int.parse(list1[0]) + 12).toString() : list1[0], minutes =  list2[0];
                        pickedTime = TimeOfDay(hour: int.parse(hours), minute: int.parse(minutes));
                      }
                      textFieldControllerMap[hintText]!.text = _invitationDataList[_i];
                      _i++;
                      // if (textFieldKeyMap[hintText]!.currentState!.validate()) {
                      //   textFieldDataMap[hintText] = textFieldControllerMap[hintText]!.text;
                      //   textFieldShakingAnimationControllerMap[hintText]!.stop();
                      // }
                      // else {
                      //   textFieldDataMap.clear();
                      //   textFieldShakingAnimationControllerMap[hintText]!.forward();
                      //   Future.delayed(const Duration(milliseconds: 500), () {
                      //     textFieldShakingAnimationControllerMap[hintText]!.stop();
                      //     textFieldShakingAnimationControllerMap[hintText]!.reset();
                      //   });
                      //
                      //   if (isVibrationAvailable) {
                      //     Vibration.vibrate();
                      //   }
                      // }
                    }
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('error obtaining recent invitation data', style: TextStyle(fontFamily: 'Roboto',),),));
                  }
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('no recent invitation data available', style: TextStyle(fontFamily: 'Roboto',),),));
                }
                print('/././././././././././././././././.....mainCategoryTitle: $mainCategoryTitle    /    subCategoryTitle: $subCategoryTitle');
              },
            ),
            IconButton(
              icon: const Icon(Icons.done, color: Colors.black,),
              onPressed: () async {
                textFieldDataMap.clear();
                for (String hintText in hintTextList) {
                  if (textFieldKeyMap[hintText]!.currentState!.validate()) {
                    textFieldDataMap[hintText] = textFieldControllerMap[hintText]!.text;
                    textFieldShakingAnimationControllerMap[hintText]!.stop();
                  }
                  else {
                    textFieldDataMap.clear();
                    textFieldShakingAnimationControllerMap[hintText]!.forward();
                    Future.delayed(const Duration(milliseconds: 500), () {
                      textFieldShakingAnimationControllerMap[hintText]!.stop();
                      textFieldShakingAnimationControllerMap[hintText]!.reset();
                    });

                    if (isVibrationAvailable) {
                      Vibration.vibrate();
                    }
                  }
                }

                if (textFieldDataMap.length == hintTextList.length) {
                  List<String> _invitationDataList = <String>[];
                  textFieldDataMap.forEach((String key, String value) {
                    _invitationDataList.add(value);
                  });
                  print('............................picked date: $pickedDate');
                  print('............................picked time: $pickedTime');
                  SharedPreferences _sharedPreferences = await SharedPreferences.getInstance();
                  await _sharedPreferences.clear();
                  await _sharedPreferences.setStringList('$mainCategoryTitle$subCategoryTitle', _invitationDataList);
                  print(textFieldDataMap);
                  print(_invitationDataList);
                  if(mainCategoryTitle == 'Announcements') {
                    selectedContactList.clear();
                    selectedContactList.add(Contact(name: '$subCategoryTitle$mainCategoryTitle'.trim().replaceAll(' ', '')));
                    Navigator.pushNamed(context, CardCollectionGridViewScreen.ROUTE_NAME);
                  }else {
                    Navigator.pushNamed(context, CardCollectionGridViewScreen.ROUTE_NAME,);
                  // Navigator.pushNamed(context, ContactsScreen.ROUTE_NAME);
                  }
                }
              },
            ),
          ],
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
                                  child: Selector<DataCollectionScreenChangeNotifier, bool>(shouldRebuild: (previous, next) => previous != next,
                                    selector: (context, dataCollectionScreenChangeNotifier) => dataCollectionScreenChangeNotifier.verticalTextVisibility,
                                    builder: (context, verticalTextVisibility, child) => Visibility(
                                      visible: verticalTextVisibility,
                                      child: Text('Provide event data',
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
                                  height: screenHeight! * 0.17,
                                  width: screenWidth! * 0.80,
                                  child: eventTitlePortion(),
                                ),
                                SizedBox(
                                  height: screenHeight! * 0.77,
                                  width: screenWidth! * 0.80,
                                  child: fetchDataCollectionPortion(
                                      mainCategoryTitle: mainCategoryTitle,
                                      subCategoryTitle: subCategoryTitle),
                                ),
                                SizedBox(
                                  height: screenHeight! * 0.06,
                                ),
                              ]),
                        ],
                      ),
                      /*GestureDetector(
                        onTap: () async {
                          textFieldDataMap.clear();
                          for (String hintText in hintTextList) {
                            if (textFieldKeyMap[hintText]!.currentState!.validate()) {
                              textFieldDataMap[hintText] = textFieldControllerMap[hintText]!.text;
                              textFieldShakingAnimationControllerMap[hintText]!.stop();
                            }
                            else {
                              textFieldDataMap.clear();
                              textFieldShakingAnimationControllerMap[hintText]!.forward();
                              Future.delayed(const Duration(milliseconds: 500), () {
                                textFieldShakingAnimationControllerMap[hintText]!.stop();
                                textFieldShakingAnimationControllerMap[hintText]!.reset();
                              });

                              if (isVibrationAvailable) {
                                Vibration.vibrate();
                              }
                            }
                          }

                          if (textFieldDataMap.length == hintTextList.length) {
                            List<String> _invitationDataList = <String>[];
                            textFieldDataMap.forEach((String key, String value) {
                              _invitationDataList.add(value);
                            });
                            print('............................picked date: $pickedDate');
                            print('............................picked time: $pickedTime');
                            SharedPreferences _sharedPreferences = await SharedPreferences.getInstance();
                            await _sharedPreferences.clear();
                            await _sharedPreferences.setStringList('$mainCategoryTitle$subCategoryTitle', _invitationDataList);
                            print(textFieldDataMap);
                            print(_invitationDataList);
                            Navigator.pushNamed(context, ContactsScreen.ROUTE_NAME);
                          }
                        },
                        child:
                            Selector<DataCollectionScreenChangeNotifier, bool>(
                          shouldRebuild: (previous, next) => previous != next,
                          selector: (context,
                                  dataCollectionScreenChangeNotifier) =>
                              dataCollectionScreenChangeNotifier
                                  .verticalTextVisibility,
                          builder: (context, verticalTextVisibility, child) =>
                              Visibility(
                            // visible: verticalTextVisibility,
                                visible: false,
                            child: Container(
                              alignment: Alignment.bottomCenter,
                              width: screenWidth! * 0.70,
                              height: screenHeight! * 0.07,
                              decoration: BoxDecoration(
                                color: const Color(0xFF22D28B),
                                borderRadius:
                                    BorderRadius.circular(screenWidth! * 0.25),
                              ),
                              child: Center(
                                  child: Text(
                                'Prepare Invitation',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: screenWidth! * 0.0456),
                              )),
                            ),
                          ),
                        ),
                      ),*/
                    ],
                  ),
                ),
                Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.identity()
                    ..setEntry(3, 2, 0.001)
                    ..translate(
                      (-(screenWidth! * 0.45) / 2),
                    ),
                  child: Image(
                    width: screenWidth! * 0.50,
                    height: screenWidth! * 0.45,
                    fit: BoxFit.fill,
                    image: const AssetImage('assets/images/ring.png'),
                    alignment: Alignment.centerLeft,
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

/*Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        if (widget.categoryTitleHeroText
                                            .toString()
                                            .contains('Birthday')) ...[
                                          Container(
                                            margin: EdgeInsets.only(
                                                top: screenHeight! * 0.03),
                                            child: Selector<
                                                DataCollectionScreenChangeNotifier,
                                                double?>(
                                              shouldRebuild: (previous, next) =>
                                                  previous != next,
                                              selector: (context,
                                                      dataCollectionScreenChangeNotifier) =>
                                                  dataCollectionScreenChangeNotifier
                                                          .textFieldChangeNotifierMap[
                                                      hintTextList[0]],
                                              builder:
                                                  (context, value, child) =>
                                                      eventDataTextField(
                                                hintText: hintTextList[0],
                                                width: screenWidth! * 0.75,
                                                textFieldKey: textFieldKeyMap[
                                                    hintTextList[0]],
                                                textEditingController:
                                                    textFieldControllerMap[
                                                        hintTextList[0]],
                                                animation:
                                                    textFieldShakingAnimationMap[
                                                        hintTextList[0]],
                                                duration:
                                                    (animationSpeedController *
                                                            0.085)
                                                        .toInt(),
                                                visibility:
                                                    textFieldVisibilityMap[
                                                        hintTextList[0]]!,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                              top: screenHeight! * 0.04,
                                            ),
                                            child: Selector<
                                                DataCollectionScreenChangeNotifier,
                                                double?>(
                                              shouldRebuild: (previous, next) =>
                                                  previous != next,
                                              selector: (context,
                                                      dataCollectionScreenChangeNotifier) =>
                                                  dataCollectionScreenChangeNotifier
                                                          .textFieldChangeNotifierMap[
                                                      hintTextList[1]],
                                              builder:
                                                  (context, value, child) =>
                                                      eventDataTextField(
                                                hintText: hintTextList[1],
                                                width: screenWidth! * 0.75,
                                                textFieldKey: textFieldKeyMap[
                                                    hintTextList[1]],
                                                textEditingController:
                                                    textFieldControllerMap[
                                                        hintTextList[1]],
                                                animation:
                                                    textFieldShakingAnimationMap[
                                                        hintTextList[1]],
                                                duration:
                                                    (animationSpeedController *
                                                            0.120)
                                                        .toInt(),
                                                visibility:
                                                    textFieldVisibilityMap[
                                                        hintTextList[1]]!,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                                top: screenHeight! * 0.04),
                                            child: Selector<
                                                DataCollectionScreenChangeNotifier,
                                                double?>(
                                              shouldRebuild: (previous, next) =>
                                                  previous != next,
                                              selector: (context,
                                                      dataCollectionScreenChangeNotifier) =>
                                                  dataCollectionScreenChangeNotifier
                                                          .textFieldChangeNotifierMap[
                                                      hintTextList[2]],
                                              builder:
                                                  (context, value, child) =>
                                                      eventDataTextField(
                                                hintText: hintTextList[2],
                                                width: screenWidth! * 0.75,
                                                textFieldKey: textFieldKeyMap[
                                                    hintTextList[2]],
                                                textEditingController:
                                                    textFieldControllerMap[
                                                        hintTextList[2]],
                                                animation:
                                                    textFieldShakingAnimationMap[
                                                        hintTextList[2]],
                                                duration:
                                                    (animationSpeedController *
                                                            0.155)
                                                        .toInt(),
                                                visibility:
                                                    textFieldVisibilityMap[
                                                        hintTextList[2]]!,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                                top: screenHeight! * 0.04,
                                                bottom: screenHeight! * 0.03),
                                            width: screenWidth! * 0.75,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Selector<
                                                    DataCollectionScreenChangeNotifier,
                                                    double?>(
                                                  shouldRebuild:
                                                      (previous, next) =>
                                                          previous != next,
                                                  selector: (context,
                                                          dataCollectionScreenChangeNotifier) =>
                                                      dataCollectionScreenChangeNotifier
                                                              .textFieldChangeNotifierMap[
                                                          hintTextList[3]],
                                                  builder:
                                                      (context, value, child) =>
                                                          GestureDetector(
                                                    onTap: () {
                                                      selectDate();
                                                    },
                                                    child: eventDataTextField(
                                                      enable: false,
                                                      hintText: hintTextList[3],
                                                      animation:
                                                          textFieldShakingAnimationMap[
                                                              hintTextList[3]],
                                                      width:
                                                          screenWidth! * 0.35,
                                                      textFieldKey:
                                                          textFieldKeyMap[
                                                              hintTextList[3]],
                                                      duration:
                                                          (animationSpeedController *
                                                                  0.190)
                                                              .toInt(),
                                                      visibility:
                                                          textFieldVisibilityMap[
                                                              hintTextList[3]]!,
                                                      textEditingController:
                                                          textFieldControllerMap[
                                                              hintTextList[3]]!
                                                            ..text = pickedDate !=
                                                                    null
                                                                ? '${pickedDate!.day}/${pickedDate!.month}/${pickedDate!.year}'
                                                                : '',
                                                      textAlign:
                                                          TextAlign.center,
                                                      errorBorder:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                screenHeight! *
                                                                    0.0588),
                                                        borderSide: BorderSide(
                                                          color: Colors.red,
                                                          width: 1.0,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Selector<
                                                    DataCollectionScreenChangeNotifier,
                                                    double?>(
                                                  shouldRebuild:
                                                      (previous, next) =>
                                                          previous != next,
                                                  selector: (context,
                                                          dataCollectionScreenChangeNotifier) =>
                                                      dataCollectionScreenChangeNotifier
                                                              .textFieldChangeNotifierMap[
                                                          hintTextList[4]],
                                                  builder:
                                                      (context, value, child) =>
                                                          GestureDetector(
                                                    onTap: () {
                                                      selectTime();
                                                    },
                                                    child: eventDataTextField(
                                                      enable: false,
                                                      hintText: hintTextList[4],
                                                      animation:
                                                          textFieldShakingAnimationMap[
                                                              hintTextList[4]],
                                                      width:
                                                          screenWidth! * 0.35,
                                                      textFieldKey:
                                                          textFieldKeyMap[
                                                              hintTextList[4]],
                                                      visibility:
                                                          textFieldVisibilityMap[
                                                              hintTextList[4]]!,
                                                      duration:
                                                          (animationSpeedController *
                                                                  0.190)
                                                              .toInt(),
                                                      textEditingController:
                                                          textFieldControllerMap[
                                                              hintTextList[4]]!
                                                            ..text = pickedTime !=
                                                                    null
                                                                ? '${pickedTime!.format(context).toLowerCase()}'
                                                                : '',
                                                      textAlign:
                                                          TextAlign.center,
                                                      errorBorder:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                screenHeight! *
                                                                    0.0588),
                                                        borderSide: BorderSide(
                                                          color: Colors.red,
                                                          width: 1.0,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                        if (widget.categoryTitleHeroText
                                            .toString()
                                            .contains('Party')) ...[
                                          Container(
                                            margin: EdgeInsets.only(
                                                top: screenHeight! * 0.03),
                                            child: Selector<
                                                DataCollectionScreenChangeNotifier,
                                                double?>(
                                              shouldRebuild: (previous, next) =>
                                                  previous != next,
                                              selector: (context,
                                                      dataCollectionScreenChangeNotifier) =>
                                                  dataCollectionScreenChangeNotifier
                                                          .textFieldChangeNotifierMap[
                                                      hintTextList[0]],
                                              builder:
                                                  (context, value, child) =>
                                                      eventDataTextField(
                                                hintText: hintTextList[0],
                                                width: screenWidth! * 0.75,
                                                textFieldKey: textFieldKeyMap[
                                                    hintTextList[0]],
                                                textEditingController:
                                                    textFieldControllerMap[
                                                        hintTextList[0]],
                                                animation:
                                                    textFieldShakingAnimationMap[
                                                        hintTextList[0]],
                                                duration:
                                                    (animationSpeedController *
                                                            0.085)
                                                        .toInt(),
                                                visibility:
                                                    textFieldVisibilityMap[
                                                        hintTextList[0]]!,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                              top: screenHeight! * 0.04,
                                            ),
                                            child: Selector<
                                                DataCollectionScreenChangeNotifier,
                                                double?>(
                                              shouldRebuild: (previous, next) =>
                                                  previous != next,
                                              selector: (context,
                                                      dataCollectionScreenChangeNotifier) =>
                                                  dataCollectionScreenChangeNotifier
                                                          .textFieldChangeNotifierMap[
                                                      hintTextList[1]],
                                              builder:
                                                  (context, value, child) =>
                                                      eventDataTextField(
                                                hintText: hintTextList[1],
                                                width: screenWidth! * 0.75,
                                                textFieldKey: textFieldKeyMap[
                                                    hintTextList[1]],
                                                textEditingController:
                                                    textFieldControllerMap[
                                                        hintTextList[1]],
                                                animation:
                                                    textFieldShakingAnimationMap[
                                                        hintTextList[1]],
                                                duration:
                                                    (animationSpeedController *
                                                            0.120)
                                                        .toInt(),
                                                visibility:
                                                    textFieldVisibilityMap[
                                                        hintTextList[1]]!,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                                top: screenHeight! * 0.04),
                                            child: Selector<
                                                DataCollectionScreenChangeNotifier,
                                                double?>(
                                              shouldRebuild: (previous, next) =>
                                                  previous != next,
                                              selector: (context,
                                                      dataCollectionScreenChangeNotifier) =>
                                                  dataCollectionScreenChangeNotifier
                                                          .textFieldChangeNotifierMap[
                                                      hintTextList[2]],
                                              builder:
                                                  (context, value, child) =>
                                                      eventDataTextField(
                                                hintText: hintTextList[2],
                                                width: screenWidth! * 0.75,
                                                textFieldKey: textFieldKeyMap[
                                                    hintTextList[2]],
                                                textEditingController:
                                                    textFieldControllerMap[
                                                        hintTextList[2]],
                                                animation:
                                                    textFieldShakingAnimationMap[
                                                        hintTextList[2]],
                                                duration:
                                                    (animationSpeedController *
                                                            0.155)
                                                        .toInt(),
                                                visibility:
                                                    textFieldVisibilityMap[
                                                        hintTextList[2]]!,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                                top: screenHeight! * 0.04,
                                                bottom: screenHeight! * 0.03),
                                            width: screenWidth! * 0.75,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Selector<
                                                    DataCollectionScreenChangeNotifier,
                                                    double?>(
                                                  shouldRebuild:
                                                      (previous, next) =>
                                                          previous != next,
                                                  selector: (context,
                                                          dataCollectionScreenChangeNotifier) =>
                                                      dataCollectionScreenChangeNotifier
                                                              .textFieldChangeNotifierMap[
                                                          hintTextList[3]],
                                                  builder:
                                                      (context, value, child) =>
                                                          GestureDetector(
                                                    onTap: () {
                                                      selectDate();
                                                    },
                                                    child: eventDataTextField(
                                                      enable: false,
                                                      hintText: hintTextList[3],
                                                      animation:
                                                          textFieldShakingAnimationMap[
                                                              hintTextList[3]],
                                                      width:
                                                          screenWidth! * 0.35,
                                                      textFieldKey:
                                                          textFieldKeyMap[
                                                              hintTextList[3]],
                                                      duration:
                                                          (animationSpeedController *
                                                                  0.190)
                                                              .toInt(),
                                                      visibility:
                                                          textFieldVisibilityMap[
                                                              hintTextList[3]]!,
                                                      textEditingController:
                                                          textFieldControllerMap[
                                                              hintTextList[3]]!
                                                            ..text = pickedDate !=
                                                                    null
                                                                ? '${pickedDate!.day}/${pickedDate!.month}/${pickedDate!.year}'
                                                                : '',
                                                      textAlign:
                                                          TextAlign.center,
                                                      errorBorder:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                screenHeight! *
                                                                    0.0588),
                                                        borderSide: BorderSide(
                                                          color: Colors.red,
                                                          width: 1.0,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Selector<
                                                    DataCollectionScreenChangeNotifier,
                                                    double?>(
                                                  shouldRebuild:
                                                      (previous, next) =>
                                                          previous != next,
                                                  selector: (context,
                                                          dataCollectionScreenChangeNotifier) =>
                                                      dataCollectionScreenChangeNotifier
                                                              .textFieldChangeNotifierMap[
                                                          hintTextList[4]],
                                                  builder:
                                                      (context, value, child) =>
                                                          GestureDetector(
                                                    onTap: () {
                                                      selectTime();
                                                    },
                                                    child: eventDataTextField(
                                                      enable: false,
                                                      hintText: hintTextList[4],
                                                      animation:
                                                          textFieldShakingAnimationMap[
                                                              hintTextList[4]],
                                                      width:
                                                          screenWidth! * 0.35,
                                                      textFieldKey:
                                                          textFieldKeyMap[
                                                              hintTextList[4]],
                                                      visibility:
                                                          textFieldVisibilityMap[
                                                              hintTextList[4]]!,
                                                      duration:
                                                          (animationSpeedController *
                                                                  0.190)
                                                              .toInt(),
                                                      textEditingController:
                                                          textFieldControllerMap[
                                                              hintTextList[4]]!
                                                            ..text = pickedTime !=
                                                                    null
                                                                ? '${pickedTime!.format(context).toLowerCase()}'
                                                                : '',
                                                      textAlign:
                                                          TextAlign.center,
                                                      errorBorder:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                screenHeight! *
                                                                    0.0588),
                                                        borderSide: BorderSide(
                                                          color: Colors.red,
                                                          width: 1.0,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                        if (widget.categoryTitleHeroText
                                            .toString()
                                            .contains('Meeting')) ...[
                                          Container(
                                            margin: EdgeInsets.only(
                                                top: screenHeight! * 0.03),
                                            child: Selector<
                                                DataCollectionScreenChangeNotifier,
                                                double?>(
                                              shouldRebuild: (previous, next) =>
                                                  previous != next,
                                              selector: (context,
                                                      dataCollectionScreenChangeNotifier) =>
                                                  dataCollectionScreenChangeNotifier
                                                          .textFieldChangeNotifierMap[
                                                      hintTextList[0]],
                                              builder:
                                                  (context, value, child) =>
                                                      eventDataTextField(
                                                hintText: hintTextList[0],
                                                width: screenWidth! * 0.75,
                                                textFieldKey: textFieldKeyMap[
                                                    hintTextList[0]],
                                                textEditingController:
                                                    textFieldControllerMap[
                                                        hintTextList[0]],
                                                animation:
                                                    textFieldShakingAnimationMap[
                                                        hintTextList[0]],
                                                duration:
                                                    (animationSpeedController *
                                                            0.085)
                                                        .toInt(),
                                                visibility:
                                                    textFieldVisibilityMap[
                                                        hintTextList[0]]!,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                              top: screenHeight! * 0.04,
                                            ),
                                            child: Selector<
                                                DataCollectionScreenChangeNotifier,
                                                double?>(
                                              shouldRebuild: (previous, next) =>
                                                  previous != next,
                                              selector: (context,
                                                      dataCollectionScreenChangeNotifier) =>
                                                  dataCollectionScreenChangeNotifier
                                                          .textFieldChangeNotifierMap[
                                                      hintTextList[1]],
                                              builder:
                                                  (context, value, child) =>
                                                      eventDataTextField(
                                                hintText: hintTextList[1],
                                                width: screenWidth! * 0.75,
                                                textFieldKey: textFieldKeyMap[
                                                    hintTextList[1]],
                                                textEditingController:
                                                    textFieldControllerMap[
                                                        hintTextList[1]],
                                                animation:
                                                    textFieldShakingAnimationMap[
                                                        hintTextList[1]],
                                                duration:
                                                    (animationSpeedController *
                                                            0.120)
                                                        .toInt(),
                                                visibility:
                                                    textFieldVisibilityMap[
                                                        hintTextList[1]]!,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                                top: screenHeight! * 0.04),
                                            child: Selector<
                                                DataCollectionScreenChangeNotifier,
                                                double?>(
                                              shouldRebuild: (previous, next) =>
                                                  previous != next,
                                              selector: (context,
                                                      dataCollectionScreenChangeNotifier) =>
                                                  dataCollectionScreenChangeNotifier
                                                          .textFieldChangeNotifierMap[
                                                      hintTextList[2]],
                                              builder:
                                                  (context, value, child) =>
                                                      eventDataTextField(
                                                hintText: hintTextList[2],
                                                width: screenWidth! * 0.75,
                                                textFieldKey: textFieldKeyMap[
                                                    hintTextList[2]],
                                                textEditingController:
                                                    textFieldControllerMap[
                                                        hintTextList[2]],
                                                animation:
                                                    textFieldShakingAnimationMap[
                                                        hintTextList[2]],
                                                duration:
                                                    (animationSpeedController *
                                                            0.155)
                                                        .toInt(),
                                                visibility:
                                                    textFieldVisibilityMap[
                                                        hintTextList[2]]!,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                                top: screenHeight! * 0.04,
                                                bottom: screenHeight! * 0.03),
                                            width: screenWidth! * 0.75,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Selector<
                                                    DataCollectionScreenChangeNotifier,
                                                    double?>(
                                                  shouldRebuild:
                                                      (previous, next) =>
                                                          previous != next,
                                                  selector: (context,
                                                          dataCollectionScreenChangeNotifier) =>
                                                      dataCollectionScreenChangeNotifier
                                                              .textFieldChangeNotifierMap[
                                                          hintTextList[3]],
                                                  builder:
                                                      (context, value, child) =>
                                                          GestureDetector(
                                                    onTap: () {
                                                      selectDate();
                                                    },
                                                    child: eventDataTextField(
                                                      enable: false,
                                                      hintText: hintTextList[3],
                                                      animation:
                                                          textFieldShakingAnimationMap[
                                                              hintTextList[3]],
                                                      width:
                                                          screenWidth! * 0.35,
                                                      textFieldKey:
                                                          textFieldKeyMap[
                                                              hintTextList[3]],
                                                      duration:
                                                          (animationSpeedController *
                                                                  0.190)
                                                              .toInt(),
                                                      visibility:
                                                          textFieldVisibilityMap[
                                                              hintTextList[3]]!,
                                                      textEditingController:
                                                          textFieldControllerMap[
                                                              hintTextList[3]]!
                                                            ..text = pickedDate !=
                                                                    null
                                                                ? '${pickedDate!.day}/${pickedDate!.month}/${pickedDate!.year}'
                                                                : '',
                                                      textAlign:
                                                          TextAlign.center,
                                                      errorBorder:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                screenHeight! *
                                                                    0.0588),
                                                        borderSide: BorderSide(
                                                          color: Colors.red,
                                                          width: 1.0,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Selector<
                                                    DataCollectionScreenChangeNotifier,
                                                    double?>(
                                                  shouldRebuild:
                                                      (previous, next) =>
                                                          previous != next,
                                                  selector: (context,
                                                          dataCollectionScreenChangeNotifier) =>
                                                      dataCollectionScreenChangeNotifier
                                                              .textFieldChangeNotifierMap[
                                                          hintTextList[4]],
                                                  builder:
                                                      (context, value, child) =>
                                                          GestureDetector(
                                                    onTap: () {
                                                      selectTime();
                                                    },
                                                    child: eventDataTextField(
                                                      enable: false,
                                                      hintText: hintTextList[4],
                                                      animation:
                                                          textFieldShakingAnimationMap[
                                                              hintTextList[4]],
                                                      width:
                                                          screenWidth! * 0.35,
                                                      textFieldKey:
                                                          textFieldKeyMap[
                                                              hintTextList[4]],
                                                      visibility:
                                                          textFieldVisibilityMap[
                                                              hintTextList[4]]!,
                                                      duration:
                                                          (animationSpeedController *
                                                                  0.190)
                                                              .toInt(),
                                                      textEditingController:
                                                          textFieldControllerMap[
                                                              hintTextList[4]]!
                                                            ..text = pickedTime !=
                                                                    null
                                                                ? '${pickedTime!.format(context).toLowerCase()}'
                                                                : '',
                                                      textAlign:
                                                          TextAlign.center,
                                                      errorBorder:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                screenHeight! *
                                                                    0.0588),
                                                        borderSide: BorderSide(
                                                          color: Colors.red,
                                                          width: 1.0,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                        if (widget.categoryTitleHeroText
                                            .toString()
                                            .contains('Funeral')) ...[
                                          Container(
                                            margin: EdgeInsets.only(
                                                top: screenHeight! * 0.03),
                                            child: Selector<
                                                DataCollectionScreenChangeNotifier,
                                                double?>(
                                              shouldRebuild: (previous, next) =>
                                                  previous != next,
                                              selector: (context,
                                                      dataCollectionScreenChangeNotifier) =>
                                                  dataCollectionScreenChangeNotifier
                                                          .textFieldChangeNotifierMap[
                                                      hintTextList[0]],
                                              builder:
                                                  (context, value, child) =>
                                                      eventDataTextField(
                                                hintText: hintTextList[0],
                                                width: screenWidth! * 0.75,
                                                textFieldKey: textFieldKeyMap[
                                                    hintTextList[0]],
                                                textEditingController:
                                                    textFieldControllerMap[
                                                        hintTextList[0]],
                                                animation:
                                                    textFieldShakingAnimationMap[
                                                        hintTextList[0]],
                                                duration:
                                                    (animationSpeedController *
                                                            0.085)
                                                        .toInt(),
                                                visibility:
                                                    textFieldVisibilityMap[
                                                        hintTextList[0]]!,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                              top: screenHeight! * 0.04,
                                            ),
                                            child: Selector<
                                                DataCollectionScreenChangeNotifier,
                                                double?>(
                                              shouldRebuild: (previous, next) =>
                                                  previous != next,
                                              selector: (context,
                                                      dataCollectionScreenChangeNotifier) =>
                                                  dataCollectionScreenChangeNotifier
                                                          .textFieldChangeNotifierMap[
                                                      hintTextList[1]],
                                              builder:
                                                  (context, value, child) =>
                                                      eventDataTextField(
                                                hintText: hintTextList[1],
                                                width: screenWidth! * 0.75,
                                                textFieldKey: textFieldKeyMap[
                                                    hintTextList[1]],
                                                textEditingController:
                                                    textFieldControllerMap[
                                                        hintTextList[1]],
                                                animation:
                                                    textFieldShakingAnimationMap[
                                                        hintTextList[1]],
                                                duration:
                                                    (animationSpeedController *
                                                            0.120)
                                                        .toInt(),
                                                visibility:
                                                    textFieldVisibilityMap[
                                                        hintTextList[1]]!,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                                top: screenHeight! * 0.04),
                                            child: Selector<
                                                DataCollectionScreenChangeNotifier,
                                                double?>(
                                              shouldRebuild: (previous, next) =>
                                                  previous != next,
                                              selector: (context,
                                                      dataCollectionScreenChangeNotifier) =>
                                                  dataCollectionScreenChangeNotifier
                                                          .textFieldChangeNotifierMap[
                                                      hintTextList[2]],
                                              builder:
                                                  (context, value, child) =>
                                                      eventDataTextField(
                                                hintText: hintTextList[2],
                                                width: screenWidth! * 0.75,
                                                textFieldKey: textFieldKeyMap[
                                                    hintTextList[2]],
                                                textEditingController:
                                                    textFieldControllerMap[
                                                        hintTextList[2]],
                                                animation:
                                                    textFieldShakingAnimationMap[
                                                        hintTextList[2]],
                                                duration:
                                                    (animationSpeedController *
                                                            0.155)
                                                        .toInt(),
                                                visibility:
                                                    textFieldVisibilityMap[
                                                        hintTextList[2]]!,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                                top: screenHeight! * 0.04,
                                                bottom: screenHeight! * 0.03),
                                            width: screenWidth! * 0.75,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Selector<
                                                    DataCollectionScreenChangeNotifier,
                                                    double?>(
                                                  shouldRebuild:
                                                      (previous, next) =>
                                                          previous != next,
                                                  selector: (context,
                                                          dataCollectionScreenChangeNotifier) =>
                                                      dataCollectionScreenChangeNotifier
                                                              .textFieldChangeNotifierMap[
                                                          hintTextList[3]],
                                                  builder:
                                                      (context, value, child) =>
                                                          GestureDetector(
                                                    onTap: () {
                                                      selectDate();
                                                    },
                                                    child: eventDataTextField(
                                                      enable: false,
                                                      hintText: hintTextList[3],
                                                      animation:
                                                          textFieldShakingAnimationMap[
                                                              hintTextList[3]],
                                                      width:
                                                          screenWidth! * 0.35,
                                                      textFieldKey:
                                                          textFieldKeyMap[
                                                              hintTextList[3]],
                                                      duration:
                                                          (animationSpeedController *
                                                                  0.190)
                                                              .toInt(),
                                                      visibility:
                                                          textFieldVisibilityMap[
                                                              hintTextList[3]]!,
                                                      textEditingController:
                                                          textFieldControllerMap[
                                                              hintTextList[3]]!
                                                            ..text = pickedDate !=
                                                                    null
                                                                ? '${pickedDate!.day}/${pickedDate!.month}/${pickedDate!.year}'
                                                                : '',
                                                      textAlign:
                                                          TextAlign.center,
                                                      errorBorder:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                screenHeight! *
                                                                    0.0588),
                                                        borderSide: BorderSide(
                                                          color: Colors.red,
                                                          width: 1.0,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Selector<
                                                    DataCollectionScreenChangeNotifier,
                                                    double?>(
                                                  shouldRebuild:
                                                      (previous, next) =>
                                                          previous != next,
                                                  selector: (context,
                                                          dataCollectionScreenChangeNotifier) =>
                                                      dataCollectionScreenChangeNotifier
                                                              .textFieldChangeNotifierMap[
                                                          hintTextList[4]],
                                                  builder:
                                                      (context, value, child) =>
                                                          GestureDetector(
                                                    onTap: () {
                                                      selectTime();
                                                    },
                                                    child: eventDataTextField(
                                                      enable: false,
                                                      hintText: hintTextList[4],
                                                      animation:
                                                          textFieldShakingAnimationMap[
                                                              hintTextList[4]],
                                                      width:
                                                          screenWidth! * 0.35,
                                                      textFieldKey:
                                                          textFieldKeyMap[
                                                              hintTextList[4]],
                                                      visibility:
                                                          textFieldVisibilityMap[
                                                              hintTextList[4]]!,
                                                      duration:
                                                          (animationSpeedController *
                                                                  0.190)
                                                              .toInt(),
                                                      textEditingController:
                                                          textFieldControllerMap[
                                                              hintTextList[4]]!
                                                            ..text = pickedTime !=
                                                                    null
                                                                ? '${pickedTime!.format(context).toLowerCase()}'
                                                                : '',
                                                      textAlign:
                                                          TextAlign.center,
                                                      errorBorder:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                screenHeight! *
                                                                    0.0588),
                                                        borderSide: BorderSide(
                                                          color: Colors.red,
                                                          width: 1.0,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ]),*/
