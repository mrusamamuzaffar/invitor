import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:invitor/home_screen/home_behavior.dart';
import 'package:provider/provider.dart';

import '../../data_collection_behavior.dart';
import '../data_collection_text_field.dart';

class Memorial extends StatefulWidget {
  const Memorial({Key? key}) : super(key: key);

  @override
  _MemorialState createState() => _MemorialState();
}

class _MemorialState extends State<Memorial> {
  EdgeInsetsGeometry margin = EdgeInsets.only(bottom: screenHeight! * 0.043);
  String currentYear = DateTime.now().year.toString();

  void showSelectYearDialog({String dialogMessage = ''}) {
    showDialog(
      context: context,
      builder: (context) {
        return Center(
          child: Container(
            height:  screenHeight! * 0.25,width: screenWidth! * 0.8,
            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(screenHeight! * 0.0332)) , color: Colors.white),
            child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: screenHeight! * 0.00667),
                      child: Text(dialogMessage, style: const TextStyle(fontFamily: 'Roboto',),),
                    ),
                    Divider(color: Colors.black,indent: screenHeight! * 0.0084, endIndent: screenHeight! * 0.0084,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.arrow_back_ios_sharp, color: Colors.black,size: screenWidth! * 0.0334,),
                        SizedBox(
                            height: screenHeight! * 0.15,
                            width: screenWidth! * 0.65,
                            child: ListView.builder(
                                physics: const BouncingScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                itemCount: 200,
                                itemBuilder: (context, index) {
                                  return GestureDetector(
                                    onTap: () {
                                      memorialYearOfBirth = '${index + 1900}';
                                      Navigator.pop(context);
                                      setState(() {});
                                      dataCollectionScreenChangeNotifier.textFieldChangeNotifierMap[hintTextList[2]] = index.toDouble();
                                    },
                                    child: Center(
                                        child: Padding(
                                          padding: EdgeInsets.only(left: screenWidth! * 0.0292, right: screenWidth! * 0.0584,top: screenHeight! * 0.00497),
                                          child: Container(
                                            width: screenWidth! * 0.139,
                                            height: screenWidth! * 0.139,
                                            decoration: BoxDecoration(border: Border.all(color:  const Color(0XFFb3868e), width: 1), borderRadius: BorderRadius.circular((screenWidth! * 0.139)/2)),
                                            child: Center(
                                              child: Text(
                                                  '${index + 1900}',
                                                  style: const TextStyle(fontFamily: 'Roboto', color: Colors.black)
                                              ),
                                            ),
                                          ),
                                        )),
                                  );
                                }
                            )),
                        Icon(Icons.arrow_forward_ios_sharp, color: Colors.black,size: screenWidth! * 0.0334),
                      ],
                    ),
                  ],
                )),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Selector<DataCollectionScreenChangeNotifier, double?>(
          shouldRebuild: (previous, next) => previous != next,
          selector: (context, dataCollectionScreenChangeNotifier) =>
          dataCollectionScreenChangeNotifier
              .textFieldChangeNotifierMap[hintTextList[0]],
          builder: (context, value, child) => DataCollectionTextField(
            margin: margin,
            hintText: hintTextList[0],
            width: screenWidth! * 0.75,
            textFieldKey: textFieldKeyMap[hintTextList[0]],
            textEditingController: textFieldControllerMap[hintTextList[0]],
            animation: textFieldShakingAnimationMap[hintTextList[0]],
            duration: (animationSpeedController * 0.085).toInt(),
            visibility: textFieldVisibilityMap[hintTextList[0]]!,
          ),
        ),
        Selector<DataCollectionScreenChangeNotifier, double?>(
          shouldRebuild: (previous, next) => previous != next,
          selector: (context, dataCollectionScreenChangeNotifier) =>
          dataCollectionScreenChangeNotifier
              .textFieldChangeNotifierMap[hintTextList[1]],
          builder: (context, value, child) => GestureDetector(
            onTap: () {
              SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(// navigation bar color
                statusBarColor: Colors.transparent, // status bar color
              ));
              showSelectYearDialog(dialogMessage: 'Select year of birth');
            },
            child: DataCollectionTextField(
              margin: margin,
              enable: false,
              hintText: hintTextList[1],
              animation: textFieldShakingAnimationMap[hintTextList[1]],
              width: screenWidth! * 0.75,
              textFieldKey: textFieldKeyMap[hintTextList[1]],
              duration: (animationSpeedController * 0.120).toInt(),
              visibility: textFieldVisibilityMap[hintTextList[1]]!,
              textEditingController: textFieldControllerMap[hintTextList[1]]!
                ..text = memorialYearOfBirth != null
                    ? '$memorialYearOfBirth to $currentYear'
                    : '',
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(screenHeight! * 0.0588),
                borderSide: const BorderSide(
                  color: Colors.red,
                  width: 1.0,
                ),
              ),
            ),
          ),
        ),
        Selector<DataCollectionScreenChangeNotifier, double?>(
          shouldRebuild: (previous, next) => previous != next,
          selector: (context, dataCollectionScreenChangeNotifier) =>
          dataCollectionScreenChangeNotifier
              .textFieldChangeNotifierMap[hintTextList[2]],
          builder: (context, value, child) => DataCollectionTextField(
            margin: margin,
            hintText: hintTextList[2],
            width: screenWidth! * 0.75,
            textFieldKey: textFieldKeyMap[hintTextList[2]],
            textEditingController: textFieldControllerMap[hintTextList[2]],
            animation: textFieldShakingAnimationMap[hintTextList[2]],
            duration: (animationSpeedController * 0.155).toInt(),
            visibility: textFieldVisibilityMap[hintTextList[2]]!,
          ),
        ),
        SizedBox(
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
                        DataCollectionTextField().selectDate(context: context);
                      },
                      child: DataCollectionTextField(
                        margin: margin,
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
                          borderSide: const BorderSide(
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
                        DataCollectionTextField().selectTime(context: context);
                      },
                      child: DataCollectionTextField(
                        margin: margin,
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
                              ? pickedTime!.format(context).toLowerCase()
                              : '',
                        textAlign:
                        TextAlign.center,
                        errorBorder:
                        OutlineInputBorder(
                          borderRadius:
                          BorderRadius.circular(
                              screenHeight! *
                                  0.0588),
                          borderSide: const BorderSide(
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
    );
  }
}
