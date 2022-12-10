import 'dart:async';
import 'dart:io';
import 'dart:math';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:invitor/animation_to_video_screen/animation_to_video_behavior.dart';
import 'package:invitor/animation_to_video_screen/animation_to_video_ui.dart';
import 'package:invitor/card_customization_screen/card_customization_behavior.dart';
import 'package:invitor/contacts_screen/contacts_behavior.dart';
import 'package:invitor/gallery_screen/gallery_behavior.dart';
import 'package:invitor/gallery_screen/gallery_ui.dart';
import 'package:invitor/home_screen/home_behavior.dart';
import 'package:invitor/network_connectivity_handler.dart';
import 'package:invitor/splash_screen/splash_behavior.dart';
import 'package:path_provider/path_provider.dart';

// AnimationController? animatedTextKitController;
/// Abstract base class for text animations.

abstract class MyAnimatedText {
  /// Text for [Text] widget.
   String text;

  /// [TextAlign] property for [Text] widget.
  ///
  /// By default it is set to [TextAlign.start]
   TextAlign textAlign;

  /// [TextStyle] property for [Text] widget.
   TextStyle? textStyle;

  /// The Duration for the Animation Controller.
  ///
  /// This will set the total duration for the animated widget.
  /// For example, if you want the text animation to take 3 seconds,
  /// then you have to set [duration] to 3 seconds.
   Duration duration;

  /// Same as [text] but as [Characters].
  ///
  /// Need to use character length, not String length, to properly support
  /// Unicode and Emojis.
   Characters textCharacters;

  MyAnimatedText({
    required this.text,
    this.textAlign = TextAlign.start,
    this.textStyle,
    required this.duration,
  }) : textCharacters = text.characters ;

  /// Return the remaining Duration for the Animation (when applicable).
  Duration? get remaining => null;

  /// Initialize the Animation.
  void initAnimation(AnimationController controller);

  /// Utility method to create a styled [Text] widget using the [textAlign] and
  /// [textStyle], but you can specify the [data].
  Widget textWidget(String data) => Text(
    data,
    textAlign: textAlign,
    style: textStyle,
    softWrap: false,
  );

  /// Widget showing the complete text (when animation is complete or paused).
  /// By default, it shows a Text widget, but this may be overridden.
  Widget completeText(BuildContext context) => textWidget(text);

  /// Widget showing animated text, based on animation value(s).
  Widget animatedBuilder(BuildContext context, Widget? child);
}

/// Base class for Animated Text widgets.
class MyAnimatedTextKit extends StatefulWidget {
  /// List of [MyAnimatedText] to display subsequently in the animation.
  List<MyAnimatedText> animatedTexts;

  /// Define the [Duration] of the pause between texts
  ///
  /// By default it is set to 1000 milliseconds.
   Duration pause;

   // bool isInAnimationToVideo = false;

  /// Should the animation ends up early and display full text if you tap on it?
  ///
  /// By default it is set to false.
   bool displayFullTextOnTap;

  /// If on pause, should a tap remove the remaining pause time ?
  ///
  /// By default it is set to false.
   bool stopPauseOnTap;

  /// Adds the onTap [VoidCallback] to the animated widget.
   VoidCallback? onTap;

  /// Adds the onFinished [VoidCallback] to the animated widget.
  ///
  /// This method will run only if [isRepeatingAnimation] is set to false.
   VoidCallback? onFinished;

  /// Adds the onNext callback to the animated widget.
  ///
  /// Will be called right before the next text, after the pause parameter
   void Function(int, bool)? onNext;

  /// Adds the onNextBeforePause callback to the animated widget.
  ///
  /// Will be called at the end of n-1 animation, before the pause parameter
   void Function(int, bool)? onNextBeforePause;

  /// Set if the animation should not repeat by changing the value of it to false.
  ///
  /// By default it is set to true.
   bool isRepeatingAnimation;

  /// Sets if the animation should repeat forever. [isRepeatingAnimation] also
  /// needs to be set to true if you want to repeat forever.
  ///
  /// By default it is set to false, if set to true, [totalRepeatCount] is ignored.
   bool repeatForever;

  /// Sets the number of times animation should repeat
  ///
  /// By default it is set to 3
   int totalRepeatCount;

   int animationControllerIndex;

   MyAnimatedTextKit({
    Key? key,
    required this.animatedTexts,
    required this.animationControllerIndex,
    this.pause = const Duration(milliseconds: 1000),
    this.displayFullTextOnTap = false,
    this.stopPauseOnTap = false,
    this.onTap,
    this.onNext,
    this.onNextBeforePause,
    this.onFinished,
    this.isRepeatingAnimation = true,
    this.totalRepeatCount = 3,
    this.repeatForever = false,
  })  : assert(animatedTexts.isNotEmpty),
        assert(!isRepeatingAnimation || totalRepeatCount > 0 || repeatForever),
        assert(null == onFinished || !repeatForever),
        super(key: key);

  /// Creates the mutable state for this widget. See [StatefulWidget.createState].
  @override
  _MyAnimatedTextKitState createState() => _MyAnimatedTextKitState();
}

class _MyAnimatedTextKitState extends State<MyAnimatedTextKit> with TickerProviderStateMixin, ConnectivityHandler {

  late MyAnimatedText _currentAnimatedText;

  int _currentRepeatCount = 0;

  int _index = 0, framesGenerationPercentage = 0;

  bool _isCurrentlyPausing = false;

  Timer? _timer;

  @override
  void initState() {
    _initAnimation();
    super.initState();
  }

  @override
  void dispose() {
    _timer?.cancel();
    print('dispose call of timer..............');
    // animatedTextKitController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    _currentAnimatedText = widget.animatedTexts[_index];
    _currentAnimatedText.initAnimation(myAnimatedTextKitControllerMap[widget.animationControllerIndex]!);

    Widget completeText = _currentAnimatedText.completeText(context);

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: _onTap,
      child: _isCurrentlyPausing || !myAnimatedTextKitControllerMap[widget.animationControllerIndex]!.isAnimating
          ? completeText
          : AnimatedBuilder(
        animation: myAnimatedTextKitControllerMap[widget.animationControllerIndex]!,
        builder: _currentAnimatedText.animatedBuilder,
        child: completeText,
      ),
    );
  }

  bool get _isLast => _index == widget.animatedTexts.length - 1;

  void _nextAnimation() {
    bool isLast = _isLast;

    _isCurrentlyPausing = false;

    // Handling onNext callback
    widget.onNext?.call(_index, isLast);

    if (isLast) {
      if (widget.isRepeatingAnimation &&
          (widget.repeatForever ||
              _currentRepeatCount != (widget.totalRepeatCount - 1))) {
        _index = 0;
        if (!widget.repeatForever) {
          _currentRepeatCount++;
        }
      } else {
        widget.onFinished?.call();
        return;
      }
    } else {
      _index++;
    }

    if (mounted) setState(() {});

    myAnimatedTextKitControllerMap[widget.animationControllerIndex]!.dispose();

    // Re-initialize animation
    _initAnimation();
  }

  void _initAnimation() {

    print('..............init');

      _currentAnimatedText = widget.animatedTexts[_index];

      myAnimatedTextKitControllerMap[widget.animationControllerIndex] = AnimationController(
        duration: _currentAnimatedText.duration,
        vsync: this,
      );

    // animatedTextKitController = AnimationController(
    //   duration: _currentAnimatedText.duration,
    //   vsync: this,
    // );



    _currentAnimatedText.initAnimation(myAnimatedTextKitControllerMap[widget.animationControllerIndex]!);

    // _currentAnimatedText.initAnimation(animatedTextKitController!);

      myAnimatedTextKitControllerMap[widget.animationControllerIndex]!..addStatusListener(_animationEndCallback)..addListener(() async {

      if (isInAnimationToVideo) {

        framesGenerationPercentage = (((myAnimatedTextKitControllerMap[widget.animationControllerIndex]!.value + widget.animationControllerIndex)/(myAnimatedTextKitControllerMap.length - 1)) * 100).toInt();

        animationProgressStatusChangeNotifier!.progressStatus = '$framesGenerationPercentage %';

        animationToVideoCurrentStatusList[processedVideoCounter] = 'generating frames ${animationProgressStatusChangeNotifier!.progressStatus}';

        animationProgressStatusChangeNotifier!.progressPercentageValue = framesGenerationPercentage;

        // print('...controller value..${myAnimatedTextKitControllerMap.length}......${(((myAnimatedTextKitControllerMap[widget.animationControllerIndex]!.value + widget.animationControllerIndex)/6)*100).toInt() }%     phase ${widget.animationControllerIndex}');


        cardCustomizationScreenChangeNotifier.cardCustomizationSelectorControllerList[widget.animationControllerIndex] = !(cardCustomizationScreenChangeNotifier.cardCustomizationSelectorControllerList[widget.animationControllerIndex]);
        cardCustomizationScreenChangeNotifier.myNotify();

        if(previousAnimationValue != myAnimatedTextKitControllerMap[widget.animationControllerIndex]!.value) {
          myAnimatedTextKitControllerMap[widget.animationControllerIndex]!.stop();
          await capturePngCard();
          myAnimatedTextKitControllerMap[widget.animationControllerIndex]!.forward();
        }
      }
    });
  }

  void _setPause() {
    bool isLast = _isLast;

    _isCurrentlyPausing = true;
    if (mounted) setState(() {});

    // Handle onNextBeforePause callback
    widget.onNextBeforePause?.call(_index, isLast);
  }

  Future<void> _animationEndCallback(AnimationStatus state) async {

    if (isInAnimationToVideo) {

      if(state == AnimationStatus.forward) {

        for(int i = processedVideoCounter; i < animationToVideoProcessControlList.length; i++) {

          if(i == processedVideoCounter) {

            animationToVideoProcessControlList[i] = true;
            animationToVideoCurrentStatusList[i] = 'generating frames ${animationProgressStatusChangeNotifier!.progressStatus}';
            animationProgressStatusChangeNotifier!.status = 'generating frames ${animationProgressStatusChangeNotifier!.progressStatus}';

          }
          else {
            animationToVideoProcessControlList[i] = false;
            animationToVideoCurrentStatusList[i] = 'pending';
            animationProgressStatusChangeNotifier!.status = 'pending';

          }
        }
      }
    }

    if (state == AnimationStatus.completed) {
      _setPause();
      assert(null == _timer || !_timer!.isActive);
      _timer = Timer(widget.pause, _nextAnimation);

      // myAnimatedTextKitControllerMap[widget.animationControllerIndex]!.reset();

        if(widget.animationControllerIndex < (myAnimatedTextKitControllerMap.length-2) && isPreviewEnable) {

          widget.animationControllerIndex += 1;
          animatedTextContainerVisibilityList[widget.animationControllerIndex] = true;
          myAnimatedTextKitControllerMap[widget.animationControllerIndex]!.reset();
          cardCustomizationScreenChangeNotifier.cardCustomizationSelectorControllerList[widget.animationControllerIndex] =  !(cardCustomizationScreenChangeNotifier.cardCustomizationSelectorControllerList[widget.animationControllerIndex]);
          myAnimatedTextKitControllerMap[widget.animationControllerIndex]!.forward();
          cardCustomizationScreenChangeNotifier.myNotify();

      }
        else {

          isPreviewEnable = false;
          isAnimationCompleted = true;

          for(int i = 0; i < myAnimatedTextKitControllerMap.length-1; i++) {
            myAnimatedTextKitControllerMap[i]!.stop();
            myAnimatedTextKitControllerMap[i]!.reset();
          }

          if(isInAnimationToVideo) {

            //changing current statuses of Screen
            animationProgressStatusChangeNotifier!.progressPercentageValue = 100;
            animationProgressStatusChangeNotifier!.progressStatus = '';

            isInAnimationToVideo = false;

            //image invitation
              currentImageTitle = '${mainCategoryTitleMap[mainCategoryTitle]}${subCategoryTitleMap[mainCategoryTitle]![subCategoryTitle]}-${selectedContactList[processedVideoCounter].name.replaceAll(' ', '')}_${DateTime.now().toString().replaceAll(' ', '').replaceAll(':', '').replaceAll('-', '').replaceAll('.', '')}.png';
              currentlyProcessingFilePath = '$rootDirectory/Invitor/Images/$currentImageTitle';

              animationToVideoCurrentStatusList[processedVideoCounter] = 'preparing invitation (image)...';
              animationProgressStatusChangeNotifier!.status = 'preparing invitation (image)...';

              Uint8List imageInvitation = await File('$temporaryFramesDirectory/frame_${namedCounterOfCard - 2}.png').readAsBytes();

              File file = File(currentlyProcessingFilePath);
              await file.create();
              await file.writeAsBytes(imageInvitation);

              //video invitation
              animationToVideoCurrentStatusList[processedVideoCounter] = 'preparing invitation (video)...';
              animationProgressStatusChangeNotifier!.status = 'preparing invitation (video)...';

              currentVideoTitle = '${mainCategoryTitleMap[mainCategoryTitle]}${subCategoryTitleMap[mainCategoryTitle]![subCategoryTitle]}-${selectedContactList[processedVideoCounter].name.replaceAll(' ', '')}_${DateTime.now().toString().replaceAll(' ', '').replaceAll(':', '').replaceAll('-', '').replaceAll('.', '')}.mp4';
              currentlyProcessingFilePath = '$rootDirectory/Invitor/Videos/$currentVideoTitle';

              //////
              await flutterFFmpeg.execute('-r 25 -f image2 -i $temporaryFramesDirectory/frame_%d.png -vcodec libx264 -crf 25  -pix_fmt yuv420p $rootDirectory/Invitor/Videos/temp_$currentVideoTitle');

              Directory appDocDir = await getApplicationDocumentsDirectory();
              await flutterFFmpeg.execute('-i $rootDirectory/Invitor/Videos/temp_$currentVideoTitle -i ${appDocDir.path}/watermark.png -filter_complex "overlay=main_w-overlay_w-5:main_h-overlay_h-5:format=auto,format=yuv420p" -c:a copy $rootDirectory/Invitor/Videos/$currentVideoTitle');

            //gif invitation
            if(animationProgressStatusChangeNotifier!.gifInvitation) {
              currentGifTitle = '${mainCategoryTitleMap[mainCategoryTitle]}${subCategoryTitleMap[mainCategoryTitle]![subCategoryTitle]}-${selectedContactList[processedVideoCounter].name.replaceAll(' ', '')}_${DateTime.now().toString().replaceAll(' ', '').replaceAll(':', '').replaceAll('-', '').replaceAll('.', '')}.gif';
              currentlyProcessingFilePath = '$rootDirectory/Invitor/Gifs/$currentGifTitle';

              animationToVideoCurrentStatusList[processedVideoCounter] = 'preparing invitation (gif)...';
              animationProgressStatusChangeNotifier!.status = 'preparing invitation (gif)...';

              await flutterFFmpeg.execute('-i $rootDirectory/Invitor/Videos/$currentVideoTitle -vf "fps=24,split[s0][s1];[s0]palettegen[p];[s1][p]paletteuse" -loop 0 $rootDirectory/Invitor/Gifs/$currentGifTitle').then((value) => print(value));
            }

            // delete temporary video
            try {
              await File('$rootDirectory/Invitor/Videos/temp_$currentVideoTitle').delete();
            } on Exception catch(e) {
              print('error deleting temp video named temp_$currentVideoTitle');
              print(e);
            }

            currentVideoTitle = '';
            currentGifTitle = '';
            currentlyProcessingFilePath = '';

            animationToVideoProcessControlList[processedVideoCounter] = false;
            animationProgressStatusChangeNotifier!.progressPercentageValue = 0;

            tickMarkList[processedVideoCounter] = const Icon(Icons.done, color: Color(0xFF01875F),);

            animationToVideoCurrentStatusList[processedVideoCounter] = 'completed';
            animationProgressStatusChangeNotifier!.status = 'completed';

            for (int i = 0; i < animatedTextContainerVisibilityList.length; i++) {
              animatedTextContainerVisibilityList[i] = false;
              cardCustomizationScreenChangeNotifier.cardCustomizationSelectorControllerList[i] = !(cardCustomizationScreenChangeNotifier.cardCustomizationSelectorControllerList[i]);
            }
            cardCustomizationScreenChangeNotifier.myNotify();

            processedVideoCounter = processedVideoCounter + 1;

            Future.delayed(const Duration(seconds: 1), () async {

              await Directory(temporaryFramesDirectory).delete(recursive: true);

              if(processedVideoCounter < selectedContactList.length) {

                await Directory(temporaryFramesDirectory).create();


                formalInvitationHeaderText = '${selectedContactList[processedVideoCounter].name}$formalInvitationHeaderTextPartOne${selectedContactList[processedVideoCounter].isWithFamily ? withYourFamilyTextFormat : ''}$formalInvitationHeaderTextPartTwo';

                namedCounterOfCard = 1;
                isPreviewEnable = true;
                isInAnimationToVideo = true;
                myAnimatedTextKitControllerMap[0]!.reset();
                animatedTextContainerVisibilityList[0] = true;
                cardCustomizationScreenChangeNotifier.cardCustomizationSelectorControllerList[0] = !(cardCustomizationScreenChangeNotifier.cardCustomizationSelectorControllerList[0]);
                myAnimatedTextKitControllerMap[0]!.forward();
                cardCustomizationScreenChangeNotifier.myNotify();
              }
              else {
                isInAnimationToVideo = false;
                isPreviewEnable = false;
                namedCounterOfCard = 1;
                processedVideoCounter = 0;
                animationProgressStatusChangeNotifier!.startTextButtonVisibility = true;
                for (int i = 0; i < animatedTextContainerVisibilityList.length; i++) {
                  animatedTextContainerVisibilityList[i] = false;
                  cardCustomizationScreenChangeNotifier.cardCustomizationSelectorControllerList[i] = !(cardCustomizationScreenChangeNotifier.cardCustomizationSelectorControllerList[i]);
                }
                cardCustomizationScreenChangeNotifier.myNotify();
                // if (await checkForInternetServiceAvailability(context, allowSnackBar: false)) {
                  /*if(mInterstitialAd != null) {
                    mInterstitialAd!.show();
                  }
                  else {
                    print('..........................ad is null');
                  }*/
                // }
                isCategoryTitlesResetRequired = false;
                Navigator.popAndPushNamed(context, GalleryScreen.ROUTE_NAME);
              }
            });

            print('Completed....... $processedVideoCounter .....');
          }
        }
    }
  }

  void _onTap() {
    if (widget.displayFullTextOnTap) {
      if (_isCurrentlyPausing) {
        if (widget.stopPauseOnTap) {
          _timer?.cancel();
          _nextAnimation();
        }
      } else {
        int left = (_currentAnimatedText.remaining ?? _currentAnimatedText.duration).inMilliseconds;

        myAnimatedTextKitControllerMap[widget.animationControllerIndex]!.stop();

        _setPause();

        assert(null == _timer || !_timer!.isActive);
        _timer = Timer(
          Duration(
            milliseconds: max(
              widget.pause.inMilliseconds,
              left,
            ),
          ),
          _nextAnimation,
        );
      }
    }
    widget.onTap?.call();
  }
}