import 'dart:io';
import 'dart:ui' as ui;
import 'dart:typed_data';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_ffmpeg/flutter_ffmpeg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:invitor/animation_to_video_screen/animation_to_video_behavior.dart';
import 'package:invitor/card_customization_screen/card_customization_behavior.dart';
import 'package:invitor/contacts_screen/contacts_behavior.dart';
import 'package:invitor/data_collection_screen/data_collection_behavior.dart';
import 'package:invitor/home_screen/home_behavior.dart';
import 'package:invitor/network_connectivity_handler.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:provider/provider.dart';

String temporaryFramesDirectory = '$rootDirectory/Invitor/Frames';

Future<void> capturePngCard() async {
  RenderRepaintBoundary repaintBoundary = globalKeyOfWeddingCard.currentContext!.findRenderObject()! as RenderRepaintBoundary;
  final ui.Image image = await repaintBoundary.toImage(pixelRatio: 2.0);
  final ByteData? byteData =
  await image.toByteData(format: ui.ImageByteFormat.png);
  final Uint8List pngBytes = byteData!.buffer.asUint8List();
  File file = File('$temporaryFramesDirectory/frame_$namedCounterOfCard.png');
  await file.create();
  file.writeAsBytes(pngBytes);
  print('savedRed $namedCounterOfCard');
  namedCounterOfCard = namedCounterOfCard + 1;
  /*if (repaintBoundary.debugNeedsPaint) {
    print('waiting for render repaint boundary');
    return capturePngCard();
  } else {
    final ui.Image image = await repaintBoundary.toImage(pixelRatio: 2.0);
    final ByteData? byteData =
        await image.toByteData(format: ui.ImageByteFormat.png);
    final Uint8List pngBytes = byteData!.buffer.asUint8List();
    File file = File('$temporaryFramesDirectory/frame_$namedCounterOfCard.png');
    await file.create();
    file.writeAsBytes(pngBytes);
    print('savedRed $namedCounterOfCard');
    namedCounterOfCard = namedCounterOfCard + 1;
  }*/
}

class AnimationToVideoScreen extends StatefulWidget {
  const AnimationToVideoScreen({Key? key}) : super(key: key);

  static const String ROUTE_NAME = 'AnimationToVideoScreen';

  @override
  _AnimationToVideoScreenState createState() => _AnimationToVideoScreenState();
}

class _AnimationToVideoScreenState extends State<AnimationToVideoScreen> with AnimationToVideoBehavior, ConnectivityHandler {

  bool isExit = false;

  Future<void> createRequiredDirectories() async {

    await Directory('$rootDirectory/Invitor').create().then((value) async {
      await Directory('$rootDirectory/Invitor/Videos')
          .create()
          .then((value) {})
          .catchError((error) {
        print(error);
      });

     await Directory('$rootDirectory/Invitor/Images')
          .create()
          .then((value) {})
          .catchError((error) {
        print(error);
      });

      await Directory('$rootDirectory/Invitor/Gifs')
          .create()
          .then((value) {})
          .catchError((error) {
        print(error);
      });
    }).catchError((error) {
      print(error);
    });

    if(!(await Directory('$rootDirectory/Invitor/Videos').exists())) {
      await Directory('$rootDirectory/Invitor/Videos').create();
    }
    if(!(await Directory('$rootDirectory/Invitor/Images').exists())) {
      await Directory('$rootDirectory/Invitor/Images').create();
    }
    if(!(await Directory('$rootDirectory/Invitor/Gifs').exists())) {
      await Directory('$rootDirectory/Invitor/Gifs').create();
    }

  }

  void resetAnimationBehavior() {

    //re initialize with default values

    for(int i = 0; i < myAnimatedTextKitControllerMap.length-1; i++) {
      if(myAnimatedTextKitControllerMap[i]!.isAnimating) {
        myAnimatedTextKitControllerMap[i]!.reset();
        myAnimatedTextKitControllerMap[i]!.stop();
      }
    }

    isInAnimationToVideo = false;
    namedCounterOfCard = 1;
    isEnable = false;
    isAnimationCompleted = false;

    for (int i = 0; i < animatedTextContainerVisibilityList.length; i++) {
      animatedTextContainerVisibilityList[i] = false;
      cardCustomizationScreenChangeNotifier.cardCustomizationSelectorControllerList[i] = !(cardCustomizationScreenChangeNotifier.cardCustomizationSelectorControllerList[i]);
    }
    cardCustomizationScreenChangeNotifier.myNotify();
  }

  void requestStoragePermission() async {
    PermissionStatus status = await Permission.storage.request();

    switch (status) {
      case PermissionStatus.granted:
        {
          createRequiredDirectories();
          break;
        }
      case PermissionStatus.denied:
        {
          resetAnimationBehavior();
          Navigator.pop(context);
          break;
        }
      case PermissionStatus.restricted:
        {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text('access restricted!'),
          ));
          break;
        }
      case PermissionStatus.limited:
        {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text('limited access!'),
          ));
          break;
        }
      case PermissionStatus.permanentlyDenied:
        {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: const Text('permissions are permanently denied.'),
            action: SnackBarAction(
              label: 'allow',
              textColor: Colors.yellow,
              onPressed: () async {
                if (!(await openAppSettings())) {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text('unable to perform action!'),
                  ));
                }
              },
            ),
          ));
          resetAnimationBehavior();
          Navigator.pop(context);
          break;
        }
    }
  }

  void userChoiceDialog() {
     showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Invitation formats',  style: TextStyle(fontFamily: 'Roboto'),),
          content: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text('Invitation will be prepared in the following formats:\n', style: TextStyle(fontFamily: 'Roboto'),),

              Row(
                children:  [
                  Container(width: 5,height: 5, decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(3)),),
                  const Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: Text('Image', style: TextStyle(color: Colors.black, fontFamily: 'Roboto'),),
                  ),
                ]
              ),
              Row(
                children: [
                  Container(width: 5,height: 5, decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(3)),),
                  const Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: Text('Video', style: TextStyle(color: Colors.black, fontFamily: 'Roboto'),),
                  ),
                ],
              ),
              const Text('\nOptional format:', style: TextStyle(fontFamily: 'Roboto'),),
              Row(
                children: [
                  Selector<AnimationProgressStatusChangeNotifier, bool>(
                    selector: (context, animationProgressStatusChangeNotifierGifInvitation) => animationProgressStatusChangeNotifierGifInvitation.gifInvitation,
                    builder: (context, gifInvitation, child) => Checkbox(value: gifInvitation, onChanged: (value) {
                      animationProgressStatusChangeNotifier!.gifInvitation = value!;
                      },
                      activeColor: const Color(0xFF22D28B),
                  // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                ),
              ),
              const Text('Gif', style: TextStyle(color: Colors.black, fontFamily: 'Roboto'),),
            ],),
        ],
      ),
      actions: [
        TextButton(
            onPressed: () async {

              myAnimatedTextKitControllerMap.forEach((key, value) {
                if (value.isAnimating) {
                  value.stop();
                  value.reset();
                }
              });

              for (int i = 0; i < cardCustomizationDataModelList.length; i++) {
                animatedTextContainerVisibilityList[i] = false;
                cardCustomizationScreenChangeNotifier.cardCustomizationSelectorControllerList[i] = !(cardCustomizationScreenChangeNotifier.cardCustomizationSelectorControllerList[i]);
              }
              cardCustomizationScreenChangeNotifier.myNotify();

              animationProgressStatusChangeNotifier!.startTextButtonVisibility = false;
              animationProgressStatusChangeNotifier!.progressPercentageValue = 0;
              animationProgressStatusChangeNotifier!.progressStatus = '';

              namedCounterOfCard = 1;
              isPreviewEnable = true;
              isInAnimationToVideo = true;
              processedVideoCounter = 0;

              if (await Directory(temporaryFramesDirectory).exists()) {
                Directory(temporaryFramesDirectory).delete(recursive: true).then((value) {
                  Directory(temporaryFramesDirectory).create().then((value) {Future.delayed(const Duration(seconds: 1), () {
                    myAnimatedTextKitControllerMap[processedVideoCounter]!.reset();
                    animatedTextContainerVisibilityList[processedVideoCounter] = true;
                    cardCustomizationScreenChangeNotifier.cardCustomizationSelectorControllerList[processedVideoCounter] = !cardCustomizationScreenChangeNotifier.cardCustomizationSelectorControllerList[processedVideoCounter];
                    myAnimatedTextKitControllerMap[processedVideoCounter]!.forward();
                    cardCustomizationScreenChangeNotifier.myNotify();
                  });
                  }).catchError((createError) {
                    Fluttertoast.showToast(msg: '1\n${createError.toString()}');
                  });
                }).catchError((deleteError) {
                  Fluttertoast.showToast(msg: '2\n${deleteError.toString()}');
                });
              } else {
                Directory(temporaryFramesDirectory).create().then((value) {
                  Future.delayed(const Duration(seconds: 1), () {
                    myAnimatedTextKitControllerMap[0]!.reset();
                    animatedTextContainerVisibilityList[0] = true;
                    cardCustomizationScreenChangeNotifier.cardCustomizationSelectorControllerList[0] = !cardCustomizationScreenChangeNotifier.cardCustomizationSelectorControllerList[0];
                    myAnimatedTextKitControllerMap[0]!.forward();
                    cardCustomizationScreenChangeNotifier.myNotify();
                  });
                }).catchError((error) {
                  Fluttertoast.showToast(msg: '3\n${error.toString()}');
                });
              }
              Navigator.pop(context);
            },
            child: const Text('START',  style: TextStyle(fontFamily: 'Roboto'),)),
      ],
    ),
    );
  }

  Future<bool> showExitDialog(context) async {
    await showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Confirm Exit?',  style: TextStyle(fontFamily: 'Roboto'),),
        content: const Text(
            'All of your progress will be lost. Are you sure you want to exit?', style: TextStyle(fontFamily: 'Roboto'),),
        actions: [

          TextButton(
              onPressed: () {
                Navigator.pop(context);
                isExit = false;
              },
              child: const Text('No',  style: TextStyle(fontFamily: 'Roboto'),)),

          TextButton(
              onPressed: () async {

                isInAnimationToVideo = false;

                isEnable = false;
                isAnimationCompleted = false;


                for(int i = 0; i < myAnimatedTextKitControllerMap.length-1; i++) {
                  myAnimatedTextKitControllerMap[i]!.stop();
                }

                for(int i = 0; i < myAnimatedTextKitControllerMap.length-1; i++) {
                  myAnimatedTextKitControllerMap[i]!.dispose();
                }

                for (int i = 0; i < animatedTextContainerVisibilityList.length; i++) {
                  animatedTextContainerVisibilityList[i] = false;
                  cardCustomizationScreenChangeNotifier.cardCustomizationSelectorControllerList[i] = !(cardCustomizationScreenChangeNotifier.cardCustomizationSelectorControllerList[i]);
                }
                cardCustomizationScreenChangeNotifier.myNotify();

                animationProgressStatusChangeNotifier!.startTextButtonVisibility = true;

                if(await File(currentlyProcessingFilePath).exists()) {
                  await File(currentlyProcessingFilePath).delete();
                }

                currentVideoTitle = '';
                currentGifTitle = '';
                currentImageTitle = '';
                currentlyProcessingFilePath = '';
                processedVideoCounter = 0;
                namedCounterOfCard = 1;

                Future.delayed(const Duration(seconds: 1), () async {
                  if (await Directory(temporaryFramesDirectory).exists()) {
                    await Directory(temporaryFramesDirectory)
                        .delete(recursive: true)
                        .then((value) {})
                        .catchError((onError) {
                          print(onError.toString());
                    });
                  }
                });

                isExit = true;
                animationToVideoCurrentStatusList.clear();
                animationToVideoProcessControlList.clear();
                tickMarkList.clear();

                animationController!.reset();
                animationController!.reverse();

                animationController!.reverse();

                Navigator.pop(context);
                Navigator.pop(context);
              },
              child: const Text('Yes',  style: TextStyle(fontFamily: 'Roboto'),)),
        ],
      ),
    );
    return isExit;
  }

  /*void loadAds(result) async {
    print('../././././././/./././././././././/...............   loadAds() called');
    if (await checkForInternetServiceAvailability(context, allowSnackBar: false)) {
      loadBannerAd();
      initInterstitialAd();
      print('../././././././/./././././././././/...............   ads loaded successfully');
    }
  }*/

  @override
  void initState() {
    // bannerAdListener();
    // initBannerAd();
    flutterFFmpeg = FlutterFFmpeg();
    globalKeyOfWeddingCard = GlobalKey();
    animationProgressStatusChangeNotifier = Provider.of<AnimationProgressStatusChangeNotifier>(context, listen: false);
    // mInterstitialAd = null;
    // loadAds('');
    // connectivitySubscription = connectivity.onConnectivityChanged.listen(loadAds);
    requestStoragePermission();
    animationToVideoProcessControlList = List.generate(selectedContactList.length, (index) => false);
    animationToVideoCurrentStatusList = List.generate(selectedContactList.length, (index) => 'stopped');
    tickMarkList = List.generate(selectedContactList.length, (index) => const Icon(Icons.done, color: Colors.transparent,));
    super.initState();
  }

  @override
  void dispose() {
    // connectivitySubscription.cancel();
    textFieldDataMap.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return Future.value(await showExitDialog(context));
      },
      child: Scaffold(
        appBar: AppBar(
          leadingWidth: 10,
          title: const Text('Pending invitations',
              style: TextStyle(fontFamily: 'Roboto', color: Colors.black)),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: Stack(
          children: [
            AspectRatio(
              aspectRatio: 5 / 7,
              child: RepaintBoundary(
                key: globalKeyOfWeddingCard,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12),
                    image: DecorationImage(
                      fit: BoxFit.contain,
                      image: AssetImage('${cardImageTitle}_customize$cardImageExtension'),
                    ),
                  ),
                  child: cardColumn,
                ),
              ),
            ),
            Container(
              color: Colors.white,
              height: screenHeight,
              width: screenWidth,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Flexible(
                    flex: 0,
                    fit: FlexFit.tight,
                    child: SizedBox(
                      height: 70,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 16),
                            child: Text(
                              'Invitations (${selectedContactList.length})',
                              style: const TextStyle(
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 16),
                            child: Selector<AnimationProgressStatusChangeNotifier, bool>(
                              selector: (selectorContext, animationProgressStatusChangeNotifierBool) => animationProgressStatusChangeNotifier!.startTextButtonVisibility,
                              builder: (context, startTextButtonVisibility, child) => Visibility(
                                visible: startTextButtonVisibility,
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        const Color(0xFF01875F)),
                                  ),
                                  onPressed: () {
                                    userChoiceDialog();
                                  },
                                  child: const Text(
                                    'Start',
                                    style: TextStyle(fontFamily: 'Roboto'),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 9,
                    child: ListView.builder(
                      itemCount: selectedContactList.length,
                      itemBuilder: (context, index) {
                        return Selector<AnimationProgressStatusChangeNotifier, int>(
                          selector: (contextInt, animationProgressStatusChangeNotifierProgress) => animationProgressStatusChangeNotifier!.progressPercentageValue,
                          builder: (context, intValue, child) => ListTile(
                            leading: animationToVideoProcessControlList[index] ? CircleAvatar(
                              // backgroundColor: const Color(0xFF01875F),
                              backgroundColor: Colors.transparent,
                              child: Stack(
                                children: [
                                   Center(child: CircularProgressIndicator(value: intValue > 99 ? null : (intValue/100).toDouble(),
                                     color: const Color(0xFF01875F),
                                   )),
                                  Center(
                                    child: Text(selectedContactList[index].name[0],
                                      style: const TextStyle(
                                            fontFamily: 'Roboto', color: Colors.black)),
                                  ),
                                        ],
                              ),
                            ): CircleAvatar(
                              backgroundColor: const Color(0xFF01875F),
                              child: Text(selectedContactList[index].name[0], style: const TextStyle(
                                  fontFamily: 'Roboto', color: Colors.white)),
                            ),
                            title: Text(selectedContactList[index].name, style: const TextStyle(fontFamily: 'Roboto')),
                            subtitle: Selector<AnimationProgressStatusChangeNotifier, String>(
                              selector: (contextInt, animationProgressStatusChangeNotifierInt) => animationProgressStatusChangeNotifier!.progressStatus,
                              builder: (context, progress, child) => Selector<AnimationProgressStatusChangeNotifier, String>(
                                selector: (contextString, animationProgressStatusChangeNotifierString) => animationProgressStatusChangeNotifier!.status,
                                builder: (context, statusString, child) => Text(animationToVideoCurrentStatusList[index],
                                    style: const TextStyle(fontFamily: 'Roboto')),
                              ),
                            ),
                            trailing: tickMarkList[index],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            // Selector<AnimationProgressStatusChangeNotifier, bool>(
            //   selector: (p0, p1) => p1.bannerAdNotify,
            //   builder: (context, value, child) => Positioned(
            //     bottom: 0,
            //     left: 0,
            //     right: 0,
            //     child: AbsorbPointer(
            //         child: adContainer),
            //   ),
            // ),
          ],
        ),
        /*body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Flexible(
              flex: 0,
              fit: FlexFit.tight,
              child: SizedBox(
                height: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Text('Videos (${selectedContactList.length})', style: const TextStyle(fontFamily: 'Roboto', fontWeight: FontWeight.bold),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: ElevatedButton(
                        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(const Color(0xFF01875F)),),
                        onPressed: () {
                          if(startAllButtonText.contains('Start all')) {
                            setState(() {
                              startAllButtonText = 'Stop all';
                              for(int i = 0; i < isStartButtonPressedList.length; i++) {
                                isStartButtonPressedList[i] = true;
                              }
                            });
                          }
                          else {
                            setState(() {
                              startAllButtonText = 'Start all';
                              for(int i = 0; i < isStartButtonPressedList.length; i++) {
                                isStartButtonPressedList[i] = false;
                              }
                            });
                          }
                        },
                        child: Text(startAllButtonText, style: const TextStyle(fontFamily: 'Roboto'),),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 9,
              child: ListView.builder(itemCount: selectedContactList.length ,itemBuilder: (context, index) {
                return  ListTile(leading: CircleAvatar(
                  backgroundColor: const Color(0xFF01875F),
                  child: Text(selectedContactList[index].name[0], style: const TextStyle(fontFamily: 'Roboto', color: Colors.white)),),
                  title: Text(selectedContactList[index].name, style: const TextStyle(fontFamily: 'Roboto')),
                  subtitle: const Text('status', style: TextStyle(fontFamily: 'Roboto')),
                  trailing: isStartButtonPressedList[index] ? IconButton(onPressed: () {setState(() {
                    isStartButtonPressedList[index] = false;
                      if(isStartButtonPressedList.every((element) => element == false)) {
                        startAllButtonText = 'Start all';
                      }
                  });}, icon: const Icon(Icons.clear, color: Color(0xFF01875F),), ) : OutlinedButton(onPressed: () { setState(() {
                    isStartButtonPressedList[index] = true;
                    startAllButtonText = 'Stop all';
                  });}, child: const Text('Start', style: TextStyle(fontFamily: 'Roboto', color: Color(0xFF01875F)))),
                );
              },),
            ),
          ],
        ),*/
      ),
    );
  }
}
