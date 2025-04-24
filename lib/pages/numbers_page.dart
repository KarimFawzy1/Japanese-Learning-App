import 'package:flutter/material.dart';
import 'package:toku_new_look/widgets/item.dart';
import '../models/item_model.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});

  final List<ItemModel> numbers = const [
    ItemModel(
        image: 'assets/images/numbers/one.png',
        eng: "One",
        jap: "Ichi",
        sound: "one.mp3"),
    ItemModel(
        image: 'assets/images/numbers/two.png',
        eng: "Two",
        jap: "Ni",
        sound: "two.mp3"),
    ItemModel(
        image: 'assets/images/numbers/three.png',
        eng: "Three",
        jap: "San",
        sound: "three.mp3"),
    ItemModel(
        image: 'assets/images/numbers/four.png',
        eng: "Four",
        jap: "Shi",
        sound: "four.mp3"),
    ItemModel(
        image: 'assets/images/numbers/five.png',
        eng: "Five",
        jap: "Go",
        sound: "five.mp3"),
    ItemModel(
        image: 'assets/images/numbers/six.png',
        eng: "Six",
        jap: "Roku",
        sound: "six.mp3"),
    ItemModel(
        image: 'assets/images/numbers/seven.png',
        eng: "Seven",
        jap: "Sebun",
        sound: "seven.mp3"),
    ItemModel(
        image: 'assets/images/numbers/eight.png',
        eng: "Eight",
        jap: "Hachi",
        sound: "eight.mp3"),
    ItemModel(
        image: 'assets/images/numbers/nine.png',
        eng: "Nine",
        jap: "Kyu",
        sound: "nine.mp3"),
    ItemModel(
        image: 'assets/images/numbers/ten.png',
        eng: "Ten",
        jap: "Ju",
        sound: "ten.mp3"),
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
