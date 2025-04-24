import 'package:flutter/material.dart';
import 'package:toku_new_look/pages/colors_page.dart';
import 'package:toku_new_look/pages/family_page.dart';
import 'package:toku_new_look/pages/numbers_page.dart';
import 'package:toku_new_look/pages/phrases_page.dart';
import 'package:toku_new_look/widgets/category.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 226, 205, 255),
        centerTitle: true,
        title: const Text('Toku New Look',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            )),
      ),
      body: Column(
        children: [
          const SizedBox(height: 30),
          Center(
            child: SizedBox(
              width: 180,
              height: 180,
              child: Image.asset(
                'assets/images/logos/language-book.png',
              ),
            ),
          ),
          const SizedBox(height: 60),
          Category(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const NumbersPage(),
                ),
              );
            },
            image: 'assets/images/logos/numbers.png',
            text: 'Numbers',
          ),
          const SizedBox(height: 14),
          Category(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const FamilyPage(),
                ),
              );
            },
            image: 'assets/images/logos/family.png',
            text: 'Family Members',
          ),
          const SizedBox(height: 14),
          Category(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const PhrasesPage(),
                ),
              );
            },
            image: 'assets/images/logos/phrases.png',
            text: 'Phrases',
          ),
          const SizedBox(height: 14),
          Category(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ColorsPage(),
                ),
              );
            },
            image: 'assets/images/logos/colors.png',
            text: 'Colors',
          ),
        ],
      ),
    );
  }
}
