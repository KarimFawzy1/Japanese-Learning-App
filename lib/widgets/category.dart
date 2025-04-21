import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Category extends StatelessWidget {
  Category({super.key, this.onTap, this.image, this.text});
  VoidCallback? onTap;
  String? image;
  String? text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
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
              image!,
              width: 36,
              height: 36,
            ),
            const SizedBox(width: 10),
            Text(
              text!,
              style: const TextStyle(
                fontSize: 20,
                // fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
