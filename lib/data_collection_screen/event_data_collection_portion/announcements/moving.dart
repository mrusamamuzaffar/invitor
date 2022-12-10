import 'package:flutter/material.dart';
import 'package:invitor/home_screen/home_behavior.dart';
import 'package:provider/provider.dart';

import '../../data_collection_behavior.dart';
import '../data_collection_text_field.dart';

class Moving extends StatefulWidget {
  const Moving({Key? key}) : super(key: key);

  @override
  _MovingState createState() => _MovingState();
}

class _MovingState extends State<Moving> {
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
            hintText: hintTextList[0],
            width: screenWidth! * 0.75,
            height: screenHeight! * 0.30,
            maxLines: 10,
            textInputAction: TextInputAction.newline,
            textFieldKey: textFieldKeyMap[hintTextList[0]],
            textEditingController: textFieldControllerMap[hintTextList[0]],
            animation: textFieldShakingAnimationMap[hintTextList[0]],
            duration: (animationSpeedController * 0.085).toInt(),
            visibility: textFieldVisibilityMap[hintTextList[0]]!,
          ),
        ),
      ],
    );
  }
}
