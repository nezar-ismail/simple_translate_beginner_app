// ignore_for_file: file_names, camel_case_types

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:tokuapp/Models/numbersClass.dart';

class numWedgit extends StatelessWidget {
  const numWedgit({super.key, required this.number});
  final Numbers number;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Colors.orangeAccent,
      child: Row(
        children: [
          Container(
              color: const Color(0xffFFF6DC), child: Image.asset(number.image)),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number.numName,
                  style: const TextStyle(fontSize: 18, color: Colors.white),
                ),
                Text(
                  number.JPAnumName,
                  style: const TextStyle(fontSize: 18, color: Colors.white),
                )
              ],
            ),
          ),
          const Spacer(flex: 1),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {
                final player = AudioPlayer();
                player.play(AssetSource(number.sound));
              },
              icon: const Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 30,
              ),
            ),
          )
        ],
      ),
    );
  }
}
