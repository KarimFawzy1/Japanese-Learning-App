import 'package:flutter/material.dart';
import 'package:toku_new_look/widgets/item.dart';
import '../models/item_model.dart';

class FamilyPage extends StatelessWidget {
  const FamilyPage({super.key});

  final List<ItemModel> numbers = const [
    ItemModel(
      eng: 'Father',
      jpn: 'お父さん',
      sound: 'family/father.wav',
      image: 'assets/images/family/father.png',
    ),
    ItemModel(
      eng: 'Mother',
      jpn: 'お母さん',
      sound: 'family/mother.wav',
      image: 'assets/images/family/mother.png',
    ),
    ItemModel(
      eng: 'Older Brother',
      jpn: 'お兄さん',
      sound: 'family/older_brother.wav',
      image: 'assets/images/family/older_brother.png',
    ),
    ItemModel(
      eng: 'Older Sister',
      jpn: 'お姉さん',
      sound: 'family/older_sister.wav',
      image: 'assets/images/family/older_sister.png',
    ),
    ItemModel(
      eng: 'Younger Brother',
      jpn: '弟',
      sound: 'family/younger_brother.wav',
      image: 'assets/images/family/younger_brother.png',
    ),
    ItemModel(
      eng: 'Younger Sister',
      jpn: '妹',
      sound: 'family/younger_sister.wav',
      image: 'assets/images/family/younger_sister.png',
    ),
    ItemModel(
      eng: 'Grandfather',
      jpn: 'おじいさん',
      sound: 'family/grandfather.wav',
      image: 'assets/images/family/grandfather.png',
    ),
    ItemModel(
      eng: 'Grandmother',
      jpn: 'おばあさん',
      sound: 'family/grandmother.wav',
      image: 'assets/images/family/grandmother.png',
    ),
    ItemModel(
      eng: 'Son',
      jpn: '息子',
      sound: 'family/son.wav',
      image: 'assets/images/family/son.png',
    ),
    ItemModel(
      eng: 'Daughter',
      jpn: '娘',
      sound: 'family/daughter.wav',
      image: 'assets/images/family/daughter.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff9774ef),
          centerTitle: true,
          title: const Text('Family Members',
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
                        'assets/images/logos/family.png',
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
