import 'package:flutter/material.dart';
import 'package:toku_new_look/widgets/item.dart';
import '../models/item_model.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});

  final List<ItemModel> numbers = const [
    ItemModel(
      eng: 'Black',
      jpn: 'くろ',
      sound: 'colors/black.wav',
      image: 'assets/images/colors/black.png',
    ),
    ItemModel(
      eng: 'Brown',
      jpn: 'ちゃいろ',
      sound: 'colors/brown.wav',
      image: 'assets/images/colors/brown.png',
    ),
    ItemModel(
      eng: 'Dusty yellow',
      jpn: 'ももいろ',
      sound: 'colors/dusty_yellow.wav',
      image: 'assets/images/colors/dusty_yellow.png',
    ),
    ItemModel(
      eng: 'Gray',
      jpn: 'はいいろ',
      sound: 'colors/gray.wav',
      image: 'assets/images/colors/gray.png',
    ),
    ItemModel(
      eng: 'Green',
      jpn: 'みどり',
      sound: 'colors/green.wav',
      image: 'assets/images/colors/green.png',
    ),
    ItemModel(
      eng: 'Red',
      jpn: 'あか',
      sound: 'colors/red.wav',
      image: 'assets/images/colors/red.png',
    ),
    ItemModel(
      eng: 'White',
      jpn: 'しろ',
      sound: 'colors/white.wav',
      image: 'assets/images/colors/white.png',
    ),
    ItemModel(
      eng: 'Yellow',
      jpn: 'きいろ',
      sound: 'colors/yellow.wav',
      image: 'assets/images/colors/yellow.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff9774ef),
          centerTitle: true,
          title: const Text('Colors',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              )),
        ),
        body: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  const SizedBox(height: 30),
                  Center(
                    child: SizedBox(
                      width: 180,
                      height: 180,
                      child: Image.asset(
                        'assets/images/logos/colors.png',
                      ),
                    ),
                  ),
                  const SizedBox(height: 60),
                ],
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => Column(
                  children: [
                    Item(
                      itemModel: numbers[index],
                    ),
                    const SizedBox(height: 8), // Add spacing between items
                  ],
                ),
                childCount: numbers.length,
              ),
            ),
          ],
        ));
  }
}
