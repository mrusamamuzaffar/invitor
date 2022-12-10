import 'package:flutter/material.dart';
import 'package:flutter_ffmpeg/flutter_ffmpeg.dart';
// import 'package:google_mobile_ads/google_mobile_ads.dart';

FlutterFFmpeg flutterFFmpeg = FlutterFFmpeg();
GlobalKey globalKeyOfWeddingCard = GlobalKey();
bool isInAnimationToVideo = false;
int namedCounterOfCard = 1;
int processedVideoCounter = 0;
String currentVideoTitle = '', currentGifTitle = '', currentImageTitle = '', currentlyProcessingFilePath = '';
List<String> animationToVideoCurrentStatusList = [];
List<Icon> tickMarkList = [];
AnimationProgressStatusChangeNotifier? animationProgressStatusChangeNotifier;
List<bool> animationToVideoProcessControlList = [];

// InterstitialAd? mInterstitialAd;

class AnimationToVideoBehavior {
  //Banner add
  // late BannerAdListener listener;
  // late BannerAd myBanner;
  // late AdWidget adWidget;
  // Container adContainer =Container(height: 50, width: 100, color: Colors.transparent,);

  //BannerAd methods
  // void initBannerAd() {
  //   myBanner = BannerAd(
  //     adUnitId: 'ca-app-pub-2441175020396427/5399206340',
  //     size: AdSize.banner,
  //     request: const AdRequest(),
  //     listener: listener,);
  // }

  /*void bannerAdListener() {
    listener = BannerAdListener(
      // Called when an ad is successfully received.
      onAdLoaded: (Ad ad) => print('BannerAd loaded successfully received.'),
      // Called when an ad request failed.
      onAdFailedToLoad: (Ad ad, LoadAdError error) {
        // Dispose the ad here to free resources.
        ad.dispose();
        print('BannerAd failed to load: $error');
      },
      // Called when an ad opens an overlay that covers the screen.
      onAdOpened: (Ad ad) => print('BannerAd opened.'),
      // Called when an ad removes an overlay that covers the screen.
      onAdClosed: (Ad ad) => print('BannerAd closed.'),
      // Called when an impression occurs on the ad.
      onAdImpression: (Ad ad) => print('BannerAd impression.'),
    );
  }*/

  /*void adBannerWidget() {
    adWidget = AdWidget(ad: myBanner);
  }

  void adBannerContainer() {
    adContainer = Container(
      alignment: Alignment.center,
      child: adWidget,
      width: myBanner.size.width.toDouble(),
      height: myBanner.size.height.toDouble(),
    );
  }

  Future<void> loadBannerAd() async {
    await myBanner.load();
    adBannerWidget();
    adBannerContainer();
    animationProgressStatusChangeNotifier!.bannerAdNotify = !(animationProgressStatusChangeNotifier!.bannerAdNotify);
  }*/

  //InterstitialAd methods

  // Future<void> initInterstitialAd() async {
  //   await InterstitialAd.load(
  //     adUnitId: 'ca-app-pub-2441175020396427/5359871419',
  //     request: const AdRequest(),
  //     adLoadCallback: InterstitialAdLoadCallback(
  //       onAdLoaded: (InterstitialAd ad) {
  //         mInterstitialAd = ad;
  //         //full screenAd
  //         mInterstitialAd!.fullScreenContentCallback = FullScreenContentCallback(
  //           onAdShowedFullScreenContent: (InterstitialAd ad) =>
  //               print('%ad onAdShowedFullScreenContent.'),
  //           onAdDismissedFullScreenContent: (InterstitialAd ad) {
  //             print('$ad onAdDismissedFullScreenContent.');
  //             ad.dispose();
  //           },
  //           onAdFailedToShowFullScreenContent: (InterstitialAd ad, AdError error) {
  //             print('$ad onAdFailedToShowFullScreenContent: $error');
  //             ad.dispose();
  //           },
  //           onAdImpression: (InterstitialAd ad) => print('$ad impression occurred.'),
  //         );
  //         print('..........load successfully after');
  //
  //       },
  //       onAdFailedToLoad: (LoadAdError error) {
  //         print('InterstitialAd failed to load: $error');
  //       },
  //     ),
  //   );
  // }
}

class AnimationProgressStatusChangeNotifier extends ChangeNotifier {
  String _progressStatus = '';
  String _status = 'stopped';
  int _progressPercentageValue = 0;
  bool _startTextButtonVisibility = true, _gifInvitation = false, _bannerAdNotify = false;

  get bannerAdNotify => _bannerAdNotify;

  set bannerAdNotify(value) {
    _bannerAdNotify = value;
    notifyListeners();
  }

  bool get startTextButtonVisibility => _startTextButtonVisibility;

  set startTextButtonVisibility(bool value) {
    _startTextButtonVisibility = value;
    notifyListeners();
  }

  int get progressPercentageValue => _progressPercentageValue;

  set progressPercentageValue(int value) {
    _progressPercentageValue = value;
    notifyListeners();
  }

  String get status => _status;

  set status(String value) {
    _status = value;
    notifyListeners();
  }

  String get progressStatus => _progressStatus;

  set progressStatus(String value) {
    _progressStatus = value;
    notifyListeners();
  }

  get gifInvitation => _gifInvitation;

  set gifInvitation(value) {
    _gifInvitation = value;
    notifyListeners();
  }
}
