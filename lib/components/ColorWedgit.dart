// ignore_for_file: file_names

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:tokuapp/Models/ColorsClass.dart';

class ColorWedgit extends StatelessWidget {
  const ColorWedgit({super.key, required this.acolor});
  final AColor acolor;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Colors.deepPurpleAccent,
      child: Row(children: [
        Container(
          color: Colors.white70,
          child: Image.asset(acolor.image),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                acolor.JPAname,
                style: const TextStyle(fontSize: 18, color: Colors.white),
              ),
              Text(acolor.ENGname,
                  style: const TextStyle(fontSize: 16, color: Colors.white)),
            ],
          ),
        ),
        const Spacer(flex: 1),
        IconButton(
          onPressed: () {
            final player = AudioPlayer();
            player.play(AssetSource(acolor.sound));
          },
          icon: const Icon(
            Icons.play_arrow,
            color: Colors.white,
            size: 30,
          ),
        )
      ]),
    );
  }
}
