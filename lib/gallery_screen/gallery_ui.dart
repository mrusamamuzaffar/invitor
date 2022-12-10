import 'dart:io';
import 'package:flutter/material.dart';
import 'package:invitor/card_customization_screen/card_customization_behavior.dart';
import 'package:invitor/home_screen/home_behavior.dart';
import 'package:invitor/splash_screen/splash_behavior.dart';
import 'package:open_file/open_file.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:share/share.dart';
import 'gallery_behavior.dart';

class GalleryScreen extends StatefulWidget {
  const GalleryScreen({Key? key}) : super(key: key);

  static const String ROUTE_NAME = 'GalleryScreen';

  @override
  _GalleryScreenState createState() => _GalleryScreenState();
}

class _GalleryScreenState extends State<GalleryScreen> with GalleryBehavior {
  void requestStoragePermission() async {
    PermissionStatus status = await Permission.storage.request();

    switch (status) {
      case PermissionStatus.granted:
        {
          break;
        }
      case PermissionStatus.denied:
        {
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
          Navigator.pop(context);
          break;
        }
    }
  }

  void deleteFile({required String filePath, required String name}) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          title: const Text(
            'Delete File?',
            style: TextStyle(
              fontFamily: 'Roboto',
            ),
          ),
          content: const Text(
            'This file will be permanently deleted from your device.',
            style: TextStyle(fontFamily: 'Roboto'),
          ),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Cancel',
                    style: TextStyle(fontFamily: 'Roboto'))),
            TextButton(
                onPressed: () async {
                  await File(filePath).delete();
                  switch (name) {
                    case 'Images':
                      {
                        originalImageList =
                            Directory('$rootDirectory/Invitor/Images/')
                                .listSync();
                        createFilteredImagePathList();
                        break;
                      }
                    case 'Videos':
                      {
                        originalVideoList =
                            Directory('$rootDirectory/Invitor/Videos/')
                                .listSync();
                        createFilteredVideoPathList();
                        break;
                      }
                    case 'Gifs':
                      {
                        originalGifsList =
                            Directory('$rootDirectory/Invitor/Gifs/')
                                .listSync();
                        createFilteredGifPathList();
                        break;
                      }
                  }
                  setState(() {});
                  Navigator.pop(context);
                },
                child: const Text(
                  'Delete',
                  style: TextStyle(color: Colors.red, fontFamily: 'Roboto'),
                )),
          ],
        );
      },
    );
  }

  Widget imagesUi() {
    if (filteredImageList.isNotEmpty) {
      return ListView.builder(
        itemCount: filteredImageList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () async {
              final openImageFileResult =
              await OpenFile.open(filteredImageList[index].path);
              if (openImageFileResult.message != 'done') {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('can\'t open file')));
              }
            },
            child: ListTile(
              leading: Image.file(File(filteredImageList[index].path)),
              title: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Text(
                    filteredImageList[index]
                        .path
                        .replaceFirst(
                        '$rootDirectory/Invitor/Images/', '')
                        .substring(
                        4,
                        filteredImageList[index]
                            .path
                            .replaceFirst(
                            '$rootDirectory/Invitor/Images/',
                            '')
                            .length -
                            4),
                    style: const TextStyle(fontFamily: 'Roboto'),
                    maxLines: 1,
                  )),
              subtitle: Text(
                generateCorrectDateFormat(fileName: filteredImageList[index].path),
                style: const TextStyle(fontFamily: 'Roboto'),
              ),
              trailing: PopupMenuButton(
                icon: const Icon(Icons.more_vert_outlined),
                itemBuilder: (BuildContext context) => <PopupMenuEntry>[
                  PopupMenuItem(
                    onTap: () {
                      Share.shareFiles([filteredImageList[index].path]);
                    },
                    child: const ListTile(
                      leading: Icon(Icons.share),
                      title: Text('Share',
                          style: TextStyle(fontFamily: 'Roboto')),
                    ),
                  ),
                  const PopupMenuDivider(),
                  PopupMenuItem(
                    onTap: () {
                      Future.delayed(const Duration(microseconds: 10), () {
                        deleteFile(
                          filePath: filteredImageList[index].path,
                          name: 'Images',
                        );
                      });
                    },
                    child: const ListTile(
                      leading: Icon(Icons.delete),
                      title: Text(
                        'Delete',
                        style: TextStyle(fontFamily: 'Roboto'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      );
    } else {
      return const Center(
        child: Text(
          'No images',
          style: TextStyle(fontFamily: 'Roboto'),
        ),
      );
    }
  }

  Widget videoUi() {
    if (filteredVideoList.isNotEmpty) {
      return ListView.builder(
        itemCount: filteredVideoList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () async {
              final openVideoFileResult =
                  await OpenFile.open(filteredVideoList[index].path);
              if (openVideoFileResult.message != 'done') {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('can\'t open file')));
              }
            },
            child: ListTile(
              leading: const CircleAvatar(
                foregroundColor: Colors.transparent,
                backgroundColor: Colors.transparent,
                child: Icon(Icons.ondemand_video_outlined, color: Colors.black,),
              ),
              title: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Text(
                    filteredVideoList[index]
                        .path
                        .replaceFirst('$rootDirectory/Invitor/Videos/', '')
                        .substring(
                            4,
                            filteredVideoList[index]
                                    .path
                                    .replaceFirst(
                                        '$rootDirectory/Invitor/Videos/',
                                        '')
                                    .length -
                                4),
                    style: const TextStyle(fontFamily: 'Roboto'),
                    maxLines: 1,
                  )),
              subtitle: Text(
                  generateCorrectDateFormat(fileName: filteredVideoList[index].path),
                style: const TextStyle(fontFamily: 'Roboto'),
              ),
              trailing: PopupMenuButton(
                icon: const Icon(Icons.more_vert_outlined),
                itemBuilder: (BuildContext context) => <PopupMenuEntry>[
                  PopupMenuItem(
                    onTap: () {
                      Share.shareFiles([filteredVideoList[index].path]);
                    },
                    child: const ListTile(
                      leading: Icon(Icons.share),
                      title:
                          Text('Share', style: TextStyle(fontFamily: 'Roboto')),
                    ),
                  ),
                  const PopupMenuDivider(),
                  PopupMenuItem(
                    onTap: () {
                      Future.delayed(const Duration(microseconds: 10), () {
                        deleteFile(
                            filePath: filteredVideoList[index].path,
                            name: 'Videos');
                      });
                    },
                    child: const ListTile(
                      leading: Icon(Icons.delete),
                      title: Text(
                        'Delete',
                        style: TextStyle(fontFamily: 'Roboto'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      );
    } else {
      return const Center(
        child: Text(
          'No videos',
          style: TextStyle(fontFamily: 'Roboto'),
        ),
      );
    }
  }

  Widget gifsUi() {
    if (filteredGifsList.isNotEmpty) {
      return ListView.builder(
        itemCount: filteredGifsList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () async {
              final openGifFileResult =
                  await OpenFile.open(filteredGifsList[index].path);
              if (openGifFileResult.message != 'done') {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('can\'t open file')));
              }
            },
            child: ListTile(
              leading: Image.file(File(filteredGifsList[index].path)),
              title: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Text(
                    filteredGifsList[index]
                        .path
                        .replaceFirst('$rootDirectory/Invitor/Gifs/', '')
                        .substring(
                            4,
                            filteredGifsList[index]
                                    .path
                                    .replaceFirst(
                                        '$rootDirectory/Invitor/Gifs/', '')
                                    .length -
                                4),
                    style: const TextStyle(fontFamily: 'Roboto'),
                    maxLines: 1,
                  )),
              subtitle: Text(
                generateCorrectDateFormat(fileName: filteredGifsList[index].path),
                style: const TextStyle(fontFamily: 'Roboto'),
              ),
              trailing: PopupMenuButton(
                icon: const Icon(Icons.more_vert_outlined),
                itemBuilder: (BuildContext context) => <PopupMenuEntry>[
                  PopupMenuItem(
                    onTap: () {
                      Share.shareFiles([filteredGifsList[index].path]);
                    },
                    child: const ListTile(
                      leading: Icon(Icons.share),
                      title:
                          Text('Share', style: TextStyle(fontFamily: 'Roboto')),
                    ),
                  ),
                  const PopupMenuDivider(),
                  PopupMenuItem(
                    onTap: () {
                      Future.delayed(const Duration(microseconds: 10), () {
                        deleteFile(
                            filePath: filteredGifsList[index].path,
                            name: 'Gifs');
                      });
                    },
                    child: const ListTile(
                      leading: Icon(Icons.delete),
                      title: Text(
                        'Delete',
                        style: TextStyle(fontFamily: 'Roboto'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      );
    } else {
      return const Center(
        child: Text(
          'No gifs',
          style: TextStyle(fontFamily: 'Roboto'),
        ),
      );
    }
  }

  Widget selectUi({required int index}) {
    switch (index) {
      case 0:
        {
          return imagesUi();
        }
      case 1:
        {
          return videoUi();
        }
      case 2:
        {
          return gifsUi();
        }
      default:
        {
          return Center(
            child: Container(
              height: 200,
              width: 200,
              color: Colors.red,
            ),
          );
        }
    }
  }

  Future<void> createOriginalPathList() async {
    originalImageList.clear();
    if (await Directory('$rootDirectory/Invitor/Images/').exists()) {
      originalImageList =
          Directory('$rootDirectory/Invitor/Images/').listSync();
      createFilteredImagePathList();
    }
    if (await Directory('$rootDirectory/Invitor/Videos/').exists()) {
      originalVideoList =
          Directory('$rootDirectory/Invitor/Videos/').listSync();
      createFilteredVideoPathList();
    }
    if (await Directory('$rootDirectory/Invitor/Gifs/').exists()) {
      originalGifsList =
          Directory('$rootDirectory/Invitor/Gifs/').listSync();
      createFilteredGifPathList();
    }
  }

  void createFilteredImagePathList() {
    filteredImageList.clear();
    if (currentMainCategory != 'All') {
      for (var element in originalImageList) {
        if (element.path
                .replaceFirst('$rootDirectory/Invitor/Images/', '')
                .substring(0, 3) ==
            '${mainCategoryTitleMap[currentMainCategory]}${subCategoryTitleMap[currentMainCategory]![currentSubCategory]}') {
          filteredImageList.add(element);
        }
      }
    } else {
      filteredImageList.addAll(originalImageList);
    }
    setState(() {
      filteredImageList.sort(
          (FileSystemEntity first, FileSystemEntity second) => int.parse(second
                  .path
                  .substring(second.path.length - 24, second.path.length - 16))
              .compareTo(int.parse(first.path
                  .substring(first.path.length - 24, first.path.length - 16))));
    });
  }

  void createFilteredVideoPathList() {
    filteredVideoList.clear();
    if (currentMainCategory != 'All') {
      for (var element in originalVideoList) {
        if (element.path
                .replaceFirst('$rootDirectory/Invitor/Videos/', '')
                .substring(0, 3) ==
            '${mainCategoryTitleMap[currentMainCategory]}${subCategoryTitleMap[currentMainCategory]![currentSubCategory]}') {
          filteredVideoList.add(element);
        }
      }
    } else {
      filteredVideoList.addAll(originalVideoList);
    }
    setState(() {
      filteredVideoList.sort(
          (FileSystemEntity first, FileSystemEntity second) => int.parse(second
                  .path
                  .substring(second.path.length - 24, second.path.length - 16))
              .compareTo(int.parse(first.path
                  .substring(first.path.length - 24, first.path.length - 16))));
    });
  }

  void createFilteredGifPathList() {
    filteredGifsList.clear();
    if (currentMainCategory != 'All') {
      for (var element in originalGifsList) {
        if (element.path
                .replaceFirst('$rootDirectory/Invitor/Gifs/', '')
                .substring(0, 3) ==
            '${mainCategoryTitleMap[currentMainCategory]}${subCategoryTitleMap[currentMainCategory]![currentSubCategory]}') {
          filteredGifsList.add(element);
        }
      }
    } else {
      filteredGifsList.addAll(originalGifsList);
    }
    setState(() {
      filteredGifsList.sort((FileSystemEntity first, FileSystemEntity second) =>
          int.parse(second.path
                  .substring(second.path.length - 24, second.path.length - 16))
              .compareTo(int.parse(first.path
                  .substring(first.path.length - 24, first.path.length - 16))));
    });
  }

  List<PopupMenuEntry> mainCategoryDropDownMenuFilter() {
    return <PopupMenuEntry>[
      for (int i = 0; i < 5; i++)
        PopupMenuItem(
          onTap: () {
            setState(() {
              currentMainCategory = mainCategoryTitleList[i];
              currentSubCategory = currentMainCategory == 'All'
                  ? 'All'
                  : subCateGoryTitleMapOfLists[currentMainCategory]![0];

              switch (index) {
                case 0:
                  {
                    createFilteredImagePathList();
                    break;
                  }
                case 1:
                  {
                    createFilteredVideoPathList();
                    break;
                  }
                case 2:
                  {
                    createFilteredGifPathList();
                    break;
                  }
              }
            });
          },
          child: ListTile(
            title: Text(
              mainCategoryTitleList[i],
              style: const TextStyle(fontFamily: 'Roboto'),
            ),
          ),
        ),
    ];
  }

  List<PopupMenuEntry> subCategoryDropDownMenuFilter() {
    return <PopupMenuEntry>[
      for (int i = 0;
          i < subCateGoryTitleMapOfLists[currentMainCategory]!.length;
          i++)
        PopupMenuItem(
          onTap: () {
            setState(() {
              currentSubCategory =
                  subCateGoryTitleMapOfLists[currentMainCategory]![i];
              switch (index) {
                case 0:
                  {
                    createFilteredImagePathList();
                    break;
                  }
                case 1:
                  {
                    createFilteredVideoPathList();
                    break;
                  }
                case 2:
                  {
                    createFilteredGifPathList();
                    break;
                  }
              }
            });
          },
          child: ListTile(
            title: Text(
              subCateGoryTitleMapOfLists[currentMainCategory]![i],
              style: const TextStyle(fontFamily: 'Roboto'),
            ),
          ),
        ),
    ];
  }

  String generateCorrectDateFormat({required String fileName}) {
    String rawDate = fileName.substring(fileName.length - 24, fileName.length - 16);
    String day = rawDate.substring(rawDate.length - 2, rawDate.length);
    String month = currentDateTimeRoughObject.getMonthName(monthNumber: int.parse(rawDate.substring(rawDate.length - 4, rawDate.length - 2)));
    String year = rawDate.substring(0, rawDate.length - 4);
    return '$day $month $year';
  }

  // Widget dateSeparatorForList({required String date}) {
  //   return Center(
  //     child: Container(
  //       margin: const EdgeInsets.only(bottom: 12.0),
  //         padding: const EdgeInsets.all(8.0),
  //         height: 30,
  //         width: 170,
  //         decoration: BoxDecoration(
  //             borderRadius: BorderRadius.circular(10),
  //             color: Colors.grey.shade300),
  //         child: Center(
  //             child: Text(
  //           generateCorrectDateFormat(rawDate: date),
  //           style: TextStyle(fontFamily: 'Roboto'),
  //           maxLines: 1,
  //         ))),
  //   );
  // }

  @override
  void initState() {
    if (isCategoryTitlesResetRequired) {
      mainCategoryTitle = '';
      subCategoryTitle = '';
    }

    currentMainCategory = mainCategoryTitle.isEmpty ? 'All' : mainCategoryTitle;
    currentSubCategory = subCategoryTitle.isEmpty ? 'All' : subCategoryTitle;

    requestStoragePermission();
    createOriginalPathList();
    super.initState();
  }

  @override
  void dispose() {
    isCategoryTitlesResetRequired = true;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        animationController!.reset();
        animationController!.reverse();

        if (myAnimatedTextKitControllerMap.isNotEmpty) {
          myAnimatedTextKitControllerMap.clear();
        }

        return Future.value(true);
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Invitation Gallery',
            style: TextStyle(fontFamily: 'Roboto', color: Colors.black),
          ),
          leadingWidth: 0,
          elevation: 2,
          backgroundColor: Colors.white,
        ),
        body: Column(
          children: [
            Container(
              height: 120,
              color: const Color(0xFFECEFF1),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Flexible(
                        flex: 3,
                        fit: FlexFit.tight,
                        child: Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Text(
                            'main category: ',
                            style: TextStyle(fontFamily: 'Roboto'),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 7,
                        child: SizedBox(
                          height: 50,
                          child: PopupMenuButton(
                            itemBuilder: (context) {
                              return mainCategoryDropDownMenuFilter();
                            },
                            child: Card(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text(
                                      currentMainCategory,
                                      style:
                                          const TextStyle(fontFamily: 'Roboto'),
                                    ),
                                  ),
                                  const Icon(Icons.arrow_drop_down_sharp),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Flexible(
                        flex: 3,
                        fit: FlexFit.tight,
                        child: Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Text('sub category:  ',
                              style: TextStyle(fontFamily: 'Roboto')),
                        ),
                      ),
                      Expanded(
                        flex: 7,
                        child: SizedBox(
                          height: 50,
                          child: PopupMenuButton(
                            itemBuilder: (context) {
                              return subCategoryDropDownMenuFilter();
                            },
                            enabled:
                                currentMainCategory == 'All' ? false : true,
                            child: Card(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text(
                                      currentSubCategory,
                                      style:
                                          const TextStyle(fontFamily: 'Roboto'),
                                    ),
                                  ),
                                  const Icon(Icons.arrow_drop_down_sharp),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(child: selectUi(index: index)),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          unselectedLabelStyle: const TextStyle(fontFamily: 'Roboto'),
          selectedLabelStyle: const TextStyle(fontFamily: 'Roboto'),
          elevation: 12,
          enableFeedback: true,
          // selectedItemColor: const Color(0xFF22D28B),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.image_outlined),
              tooltip: 'Images',
              label: 'Images',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.video_collection_outlined),
                tooltip: 'Videos',
                label: 'Videos'),
            BottomNavigationBarItem(
                icon: Icon(Icons.gif), tooltip: 'Gifs', label: 'Gifs'),
          ],
          onTap: (int value) {
            setState(() {
              switch (value) {
                case 0:
                  {
                    index = 0;
                    break;
                  }
                case 1:
                  {
                    index = 1;
                    break;
                  }
                case 2:
                  {
                    index = 2;
                    break;
                  }
              }
            });
          },
        ),
      ),
    );
  }
}
