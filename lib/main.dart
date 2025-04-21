import 'package:flutter/material.dart';
import 'package:toku_new_look/pages/home_page.dart';

void main() {
  runApp(const TokuApp());
}

class TokuApp extends StatelessWidget {
  const TokuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Toku',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
