import 'package:flutter/material.dart';
import 'package:invitor/data_collection_screen/data_collection_behavior.dart';
import 'package:invitor/home_screen/home_behavior.dart';

class DataCollectionTextField extends StatefulWidget  with DataCollectionBehavior {

  String hintText = '';
  double? width = 0.0, height = 60.0; // height = screenHeight! * 0.10
  bool visibility = false;
  InputBorder? errorBorder;
  TextInputAction textInputAction = TextInputAction.next;
  GlobalKey<FormState>? textFieldKey;
  TextEditingController? textEditingController;
  TextAlign textAlign = TextAlign.left;
  bool enable = true;
  int duration = 0, maxLines = 1;
  TextStyle hintStyle;
  EdgeInsetsGeometry margin;
  Animation<Offset>? animation;

   DataCollectionTextField({Key? key, this.hintText = '',
     this.width = 0.0,
     this.height,
     this.maxLines = 1,
     this.visibility = false,
     this.textInputAction = TextInputAction.next,
     this.errorBorder,
     this.margin = const EdgeInsets.all(0),
     this.textFieldKey,
     this.textEditingController,
     this.textAlign = TextAlign.left,
     this.enable = true,
     this.duration = 0,
     this.hintStyle = const TextStyle(color: Color(0xFF5F5F5F),),
     this.animation,}) : super(key: key);

  selectDate({required BuildContext context, String date = 'Date'}) async {
    pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2099),
    );
    if (pickedDate != null) {
      String _stringDate = '${pickedDate!.year}${pickedDate!.month}${pickedDate!.day}';
      dataCollectionScreenChangeNotifier.textFieldChangeNotifierMap[date] = double.parse(_stringDate);
      dataCollectionScreenChangeNotifier.notify();
    }
  }

  selectTime({required BuildContext context, String time = 'Time'}) async {
    pickedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
      builder: (context, child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: false),
          child: child!,
        );
      },
    );
    if (pickedTime != null) {
      String _stringTime = '${pickedTime!.hour}${pickedTime!.minute}';
      dataCollectionScreenChangeNotifier.textFieldChangeNotifierMap[time] = double.parse(_stringTime);
      dataCollectionScreenChangeNotifier.notify();
    }
  }

  @override
  State<DataCollectionTextField> createState() => _DataCollectionTextFieldState();
}

class _DataCollectionTextFieldState extends State<DataCollectionTextField> with DataCollectionBehavior {

  @override
  Widget build(BuildContext context) {
    if (!isBeingPopped) {
      Future.delayed(Duration(milliseconds: widget.duration), () {
        textFieldVisibilityMap[widget.hintText] = true;
        dataCollectionScreenChangeNotifier
            .textFieldChangeNotifierMap[widget.hintText] = widget.duration.toDouble();
        dataCollectionScreenChangeNotifier.notify();
      });
    }

    if (hintTextList.last.contains(widget.hintText)) {
      isBeingPopped = true;
    }

    return Visibility(
      maintainAnimation: true,
      maintainSize: true,
      maintainState: true,
      visible: widget.visibility,
      child: Transform(
        transform: Matrix4.identity()
          ..setEntry(3, 2, 0.001)
          ..translate(textFieldShakingAnimationMap[widget.hintText]!.value.dx),
        child: Container(
          width: widget.width,
          margin: widget.margin,
          height: 60.0, // I have hard coded this value, actual value was 'widget.height'
          child: Form(
            key: widget.textFieldKey,
            child: TextFormField(
              validator: (value) {
                if (value!.trim().isEmpty) {
                  return '';
                }
                return null;
              },
              controller: widget.textEditingController,
              enabled: widget.enable,
              textAlign: widget.textAlign,
              cursorColor: Colors.black,
              cursorWidth: 1.6,
              maxLines: widget.maxLines,
              textInputAction: widget.textInputAction,
              decoration: InputDecoration(
                errorStyle: const TextStyle(height: 0),
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(screenHeight! * 0.0588),
                  borderSide: const BorderSide(
                    color: Color(0XFF929292),
                    width: 1.0,
                  ),
                ),
                errorBorder: widget.errorBorder,
                hintText: widget.hintText,
                hintStyle: widget.hintStyle,
                fillColor: Colors.transparent,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(screenHeight! * 0.0588),
                  borderSide: const BorderSide(
                    color: Color(0XFF929292),
                    width: 1.0,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius:
                    BorderRadius.circular(screenHeight! * 0.0588),
                    borderSide: const BorderSide(
                      color: Colors.black,
                      width: 1.0,
                    )),
                focusColor: Colors.blueAccent,
              ),
            ),
          ),
        ),
      ),
    );
  }
}