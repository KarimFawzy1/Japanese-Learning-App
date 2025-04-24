import 'package:flutter/material.dart';
import 'package:toku_new_look/models/item_model.dart';

class Item extends StatelessWidget {
  const Item({super.key, required this.itemModel});
  final ItemModel itemModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12),
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: const Color(0xffe8def7),
        borderRadius: BorderRadius.circular(14),
      ),
      height: 75,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            itemModel.image!,
            width: 36,
            height: 36,
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                itemModel.eng,
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              Text(
                itemModel.jpn!,
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          const Spacer(flex: 1),
          IconButton(
              onPressed: () async => await itemModel.playSound(),
              icon: const Icon(Icons.play_arrow, color: Color(0xff1f005f)))
        ],
      ),
    );
  }
}
