import 'package:flutter/material.dart';
import 'package:invitor/card_customization_screen/card_customization_behavior.dart';
import 'package:invitor/card_customization_screen/card_customization_ui.dart';
import 'package:invitor/splash_screen/splash_behavior.dart';
import 'card_collection_behavior.dart';

class CardCollectionGridViewScreen extends StatefulWidget {
  static const String ROUTE_NAME = 'CardCollectionGridViewScreen';
  const CardCollectionGridViewScreen({Key? key,}) : super(key: key);

  @override
  _CardCollectionGridViewScreenState createState() => _CardCollectionGridViewScreenState();
}

class _CardCollectionGridViewScreenState extends State<CardCollectionGridViewScreen> with CardCollectionBehavior {

  @override
  void initState() {
    selectCardCollectionList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 5/7,
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.only(right: 10, left: 10, top: 10),
          children: List.generate(gridViewCardsImagePathList.length, (index) => GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, CardCustomizationScreen.ROUTE_NAME, arguments: CardCategoryProvider(cardName: gridViewCardsImagePathList[index]));
            },
            child: Card(
              elevation: 3,
              child: Image(
                image: AssetImage(gridViewCardsImagePathList[index]),
                fit: BoxFit.contain,
              ),
            ),
          ),
          ),
        ),
      ),
    );
  }
}
