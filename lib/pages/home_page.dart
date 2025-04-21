import 'package:flutter/material.dart';

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
                'assets/images/language-book.png',
              ),
            ),
          ),
          const SizedBox(height: 60),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 12),
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: const Color(0xff9774ef),
              borderRadius: BorderRadius.circular(14),
            ),
            height: 75,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/images/numbers.png',
                  width: 36,
                  height: 36,
                ),
                const SizedBox(width: 10),
                const Text(
                  "Numbers",
                  style: TextStyle(
                    fontSize: 20,
                    // fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 14),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 12),
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: const Color(0xff9774ef),
              borderRadius: BorderRadius.circular(14),
            ),
            height: 75,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/images/family.png',
                  width: 36,
                  height: 36,
                ),
                const SizedBox(width: 10),
                const Text(
                  "Family Members",
                  style: TextStyle(
                    fontSize: 20,
                    // fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 14),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 12),
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: const Color(0xff9774ef),
              borderRadius: BorderRadius.circular(14),
            ),
            height: 75,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/images/phrases.png',
                  width: 36,
                  height: 36,
                ),
                const SizedBox(width: 10),
                const Text(
                  "Phrases",
                  style: TextStyle(
                    fontSize: 20,
                    // fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 14),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 12),
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: const Color(0xff9774ef),
              borderRadius: BorderRadius.circular(14),
            ),
            height: 75,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/images/colors.png',
                  width: 36,
                  height: 36,
                ),
                const SizedBox(width: 10),
                const Text(
                  "Colors",
                  style: TextStyle(
                    fontSize: 20,
                    // fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
