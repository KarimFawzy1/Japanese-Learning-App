import 'package:flutter/material.dart';
import 'package:toku_new_look/widgets/item.dart';
import '../models/item_model.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});

  final List<ItemModel> numbers = const [
    ItemModel(
        image: 'assets/images/numbers/one.png',
        eng: "One",
        jpn: "Ichi",
        sound: "numbers/one.mp3"),
    ItemModel(
        image: 'assets/images/numbers/two.png',
        eng: "Two",
        jpn: "Ni",
        sound: "numbers/two.mp3"),
    ItemModel(
        image: 'assets/images/numbers/three.png',
        eng: "Three",
        jpn: "San",
        sound: "numbers/three.mp3"),
    ItemModel(
        image: 'assets/images/numbers/four.png',
        eng: "Four",
        jpn: "Shi",
        sound: "numbers/four.mp3"),
    ItemModel(
        image: 'assets/images/numbers/five.png',
        eng: "Five",
        jpn: "Go",
        sound: "numbers/five.mp3"),
    ItemModel(
        image: 'assets/images/numbers/six.png',
        eng: "Six",
        jpn: "Roku",
        sound: "numbers/six.mp3"),
    ItemModel(
        image: 'assets/images/numbers/seven.png',
        eng: "Seven",
        jpn: "Sebun",
        sound: "numbers/seven.mp3"),
    ItemModel(
        image: 'assets/images/numbers/eight.png',
        eng: "Eight",
        jpn: "Hachi",
        sound: "numbers/eight.mp3"),
    ItemModel(
        image: 'assets/images/numbers/nine.png',
        eng: "Nine",
        jpn: "Kyu",
        sound: "numbers/nine.mp3"),
    ItemModel(
        image: 'assets/images/numbers/ten.png',
        eng: "Ten",
        jpn: "Ju",
        sound: "numbers/ten.mp3"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff9774ef),
          centerTitle: true,
          title: const Text('Numbers',
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
                        'assets/images/logos/numbers.png',
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
