import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:invitor/home_screen/home_behavior.dart';
import 'package:provider/provider.dart';

import '../../data_collection_behavior.dart';
import '../data_collection_text_field.dart';

class FirstCommunion extends StatefulWidget {
  const FirstCommunion({Key? key}) : super(key: key);

  @override
  _FirstCommunionState createState() => _FirstCommunionState();
}

class _FirstCommunionState extends State<FirstCommunion> {
  EdgeInsetsGeometry margin = EdgeInsets.only(bottom: screenHeight! * 0.017);

  void showGenderDialog() {
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
                      padding: EdgeInsets.only(bottom: screenHeight! * 0.02),
                      child: const Text('Select Gender', style: TextStyle(fontFamily: 'Roboto',),),
                    ),
                    Divider(color: Colors.black,indent: screenHeight! * 0.0084, endIndent: screenHeight! * 0.0084,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            babyGender = 'Baby boy';
                            Navigator.pop(context);
                            setState(() {});
                          },
                          child: Container(
                            margin: EdgeInsets.only(top: screenHeight! * 0.0249),
                            width: screenWidth! * 0.30,
                            height: screenHeight! * 0.0828,
                            decoration: BoxDecoration(border: Border.all(color:  const Color(0XFFb3868e), width: 1), borderRadius: BorderRadius.circular((screenHeight! * 0.0828)/2)),
                            child: const Center(
                              child: Text(
                                  'Baby Boy',
                                  style: TextStyle(fontFamily: 'Roboto', color: Colors.black)
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            babyGender = 'Baby girl';
                            Navigator.pop(context);
                            setState(() {});
                          },
                          child: Container(
                            margin: EdgeInsets.only(top: screenHeight! * 0.0249),
                            width: screenWidth! * 0.30,
                            height: screenHeight! * 0.0828,
                            decoration: BoxDecoration(border: Border.all(color:  const Color(0XFFb3868e), width: 1), borderRadius: BorderRadius.circular((screenHeight! * 0.0828)/2)),
                            child: const Center(
                              child: Text(
                                  'Baby Girl',
                                  style: TextStyle(fontFamily: 'Roboto', color: Colors.black)
                              ),
                            ),
                          ),
                        ),
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
        Selector<
            DataCollectionScreenChangeNotifier,
            double?>(
          shouldRebuild: (previous, next) =>
          previous != next,
          selector: (context,
              dataCollectionScreenChangeNotifier) =>
          dataCollectionScreenChangeNotifier
              .textFieldChangeNotifierMap[
          hintTextList[0]],
          builder: (context, value, child) =>
              DataCollectionTextField(
                margin: margin,
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
              showGenderDialog();
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
                ..text = babyGender != null
                    ? '$babyGender'
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
        Selector<
            DataCollectionScreenChangeNotifier,
            double?>(
          shouldRebuild: (previous, next) =>
          previous != next,
          selector: (context,
              dataCollectionScreenChangeNotifier) =>
          dataCollectionScreenChangeNotifier
              .textFieldChangeNotifierMap[
          hintTextList[2]],
          builder: (context, value, child) =>
              DataCollectionTextField(
                margin: margin,
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
        Selector<
            DataCollectionScreenChangeNotifier,
            double?>(
          shouldRebuild: (previous, next) =>
          previous != next,
          selector: (context,
              dataCollectionScreenChangeNotifier) =>
          dataCollectionScreenChangeNotifier
              .textFieldChangeNotifierMap[
          hintTextList[3]],
          builder: (context, value, child) =>
              DataCollectionTextField(
                margin: margin,
                hintText: hintTextList[3],
                width: screenWidth! * 0.75,
                textFieldKey: textFieldKeyMap[
                hintTextList[3]],
                textEditingController:
                textFieldControllerMap[
                hintTextList[3]],
                animation:
                textFieldShakingAnimationMap[
                hintTextList[3]],
                duration:
                (animationSpeedController *
                    0.190)
                    .toInt(),
                visibility:
                textFieldVisibilityMap[
                hintTextList[3]]!,
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
                hintTextList[4]],
                builder:
                    (context, value, child) =>
                    GestureDetector(
                      onTap: () {
                        DataCollectionTextField().selectDate(context: context);
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
                        duration:
                        (animationSpeedController *
                            0.225)
                            .toInt(),
                        visibility:
                        textFieldVisibilityMap[
                        hintTextList[4]]!,
                        textEditingController:
                        textFieldControllerMap[hintTextList[4]]!..text = pickedDate != null ? '${pickedDate!.day}/${pickedDate!.month}/${pickedDate!.year}' : '',
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
                hintTextList[5]],
                builder:
                    (context, value, child) =>
                    GestureDetector(
                      onTap: () {
                        DataCollectionTextField().selectTime(context: context);
                      },
                      child: DataCollectionTextField(
                        margin: margin,
                        enable: false,
                        hintText: hintTextList[5],
                        animation:
                        textFieldShakingAnimationMap[
                        hintTextList[5]],
                        width:
                        screenWidth! * 0.35,
                        textFieldKey:
                        textFieldKeyMap[
                        hintTextList[5]],
                        visibility:
                        textFieldVisibilityMap[
                        hintTextList[5]]!,
                        duration:
                        (animationSpeedController *
                            0.225)
                            .toInt(),
                        textEditingController:
                        textFieldControllerMap[
                        hintTextList[5]]!
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
