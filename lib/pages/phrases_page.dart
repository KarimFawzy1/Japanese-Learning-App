import 'package:flutter/material.dart';
import 'package:toku_new_look/widgets/item_phrase.dart';
import '../models/item_model.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});

  final List<ItemModel> numbers = const [
    ItemModel(
      eng: 'Are you coming?',
      sound: 'phrases/are_you_coming.wav',
    ),
    ItemModel(
      eng: 'Don\'t forget to subscribe',
      sound: 'phrases/dont_forget_to_subscribe.wav',
    ),
    ItemModel(
      eng: 'How are you feeling?',
      sound: 'phrases/how_are_you_feeling.wav',
    ),
    ItemModel(
      eng: 'I love anime',
      sound: 'phrases/i_love_anime.wav',
    ),
    ItemModel(
      eng: 'I love programming',
      sound: 'phrases/i_love_programming.wav',
    ),
    ItemModel(
      eng: 'Programming is easy',
      sound: 'phrases/programming_is_easy.wav',
    ),
    ItemModel(
      eng: 'What is your name?',
      sound: 'phrases/what_is_your_name.wav',
    ),
    ItemModel(
      eng: 'Where are you going?',
      sound: 'phrases/where_are_you_going.wav',
    ),
    ItemModel(
      eng: 'Yes, I\'m coming',
      sound: 'phrases/yes_im_coming.wav',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff9774ef),
          centerTitle: true,
          title: const Text('Phrases',
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
                        'assets/images/logos/phrases.png',
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
                    ItemPhrase(
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
