import 'package:flutter/material.dart';

import 'my_animation_text.dart';

/// Animated Text that displays a [Text] element, fading it in and then out.
///
/// ![Fade example](https://raw.githubusercontent.com/aagarwal1012/Animated-Text-Kit/master/display/fade.gif)
class MyFadeAnimatedText extends MyAnimatedText {
  /// Marks ending of fade-in interval, default value = 0.5
  final double fadeInEnd;

  /// Marks the beginning of fade-out interval, default value = 0.8
  final double fadeOutBegin;
  MyFadeAnimatedText(
      String text, {
        TextAlign textAlign = TextAlign.start,
        TextStyle? textStyle,
        Duration duration = const Duration(milliseconds: 2000),
        this.fadeInEnd = 0.5,
        this.fadeOutBegin = 0.8,
      })  : assert(fadeInEnd < fadeOutBegin,
  'The "fadeInEnd" argument must be less than "fadeOutBegin"'),
        super(
        text: text,
        textAlign: textAlign,
        textStyle: textStyle,
        duration: duration,
      );

  late Animation<double> _fadeIn;
  // late Animation<double> _fadeOut;

  @override
  void initAnimation(AnimationController controller) {
    _fadeIn = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: controller,
        curve: Interval(0.0, fadeInEnd, curve: Curves.linear),
      ),
    );

    /*_fadeOut = Tween<double>(begin: 1.0, end: 0.0).animate(
      CurvedAnimation(
        parent: controller,
        curve: Interval(fadeOutBegin, 1.0, curve: Curves.linear),
      ),
    );*/
  }

  @override
  // Widget completeText(BuildContext context) => SizedBox.shrink();
  Widget completeText(BuildContext context) => Text(text,
    style: DefaultTextStyle.of(context).style.merge(textStyle),
    textAlign: textAlign,
  );


  @override
  Widget animatedBuilder(BuildContext context, Widget? child) {
    return Opacity(
      opacity: _fadeIn.value,
      child: textWidget(text),
    );
    /*Opacity(
      opacity: _fadeIn.value != 1.0 ? _fadeIn.value : _fadeOut.value,
      child: textWidget(text),
    );*/
  }
}

/// Animation that displays [text] elements, fading them in and then out.
///
/// ![Fade example](https://raw.githubusercontent.com/aagarwal1012/Animated-Text-Kit/master/display/fade.gif)
@Deprecated('Use AnimatedTextKit with FadeAnimatedText instead.')
class FadeAnimatedTextKit extends MyAnimatedTextKit {
  FadeAnimatedTextKit({
    Key? key,
    required List<String> text,
    TextAlign textAlign = TextAlign.start,
    TextStyle? textStyle,
    Duration duration = const Duration(milliseconds: 2000),
    Duration pause = const Duration(milliseconds: 500),
    required int animationControllerIndex,
    double fadeInEnd = 0.5,
    double fadeOutBegin = 0.8,
    VoidCallback? onTap,
    void Function(int, bool)? onNext,
    void Function(int, bool)? onNextBeforePause,
    VoidCallback? onFinished,
    bool isRepeatingAnimation = true,
    int totalRepeatCount = 3,
    bool repeatForever = false,
    bool displayFullTextOnTap = false,
    bool stopPauseOnTap = false,
  }) : super(
    key: key,
    animatedTexts: _animatedTexts(
        text, textAlign, textStyle, duration, fadeInEnd, fadeOutBegin),
    pause: pause,
    animationControllerIndex: animationControllerIndex,
    displayFullTextOnTap: displayFullTextOnTap,
    stopPauseOnTap: stopPauseOnTap,
    onTap: onTap,
    onNext: onNext,
    onNextBeforePause: onNextBeforePause,
    onFinished: onFinished,
    isRepeatingAnimation: isRepeatingAnimation,
    totalRepeatCount: totalRepeatCount,
    repeatForever: repeatForever,
  );

  static List<MyAnimatedText> _animatedTexts(
      List<String> text,
      TextAlign textAlign,
      TextStyle? textStyle,
      Duration duration,
      double fadeInEnd,
      double fadeOutBegin,
      ) =>
      text
          .map((_) => MyFadeAnimatedText(
        _,
        textAlign: textAlign,
        textStyle: textStyle,
        duration: duration,
        fadeInEnd: fadeInEnd,
        fadeOutBegin: fadeOutBegin,
      ))
          .toList();
}
