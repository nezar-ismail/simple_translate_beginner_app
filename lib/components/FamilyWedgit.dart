// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: file_names

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import 'package:tokuapp/Models/FamilyClass.dart';

class FamilyWedgit extends StatelessWidget {
  const FamilyWedgit({
    Key? key,
    required this.fam,
  }) : super(key: key);
  final Family fam;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Colors.lightGreen,
      child: Row(
        children: [
          Container(
              color: const Color.fromARGB(255, 247, 244, 216),
              child: Image.asset(fam.image)),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  fam.JPAname,
                  style: const TextStyle(color: Colors.white, fontSize: 20),
                ),
                Text(
                  fam.ENGname,
                  style: const TextStyle(color: Colors.white, fontSize: 20),
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
                  player.play(AssetSource(fam.sound));
                },
                icon: const Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                  size: 30,
                )),
          )
        ],
      ),
    );
  }
}
