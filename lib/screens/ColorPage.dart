// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:tokuapp/Models/ColorsClass.dart';
import 'package:tokuapp/components/ColorWedgit.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({Key? key}) : super(key: key);
  final List<AColor> allcolors = const [
    AColor(
      ENGname: 'Black',
      image: 'assets/images/colors/color_black.png',
      JPAname: 'Kuro',
      sound: 'sounds/colors/black.wav',
    ),
    AColor(
      ENGname: 'Brown',
      image: 'assets/images/colors/color_brown.png',
      JPAname: 'Cha',
      sound: 'sounds/colors/brown.wav',
    ),
    AColor(
      ENGname: 'Dusty yellow',
      image: 'assets/images/colors/color_dusty_yellow.png',
      JPAname: 'JPAname',
      sound: 'sounds/colors/dusty yellow.wav',
    ),
    AColor(
      ENGname: 'Gray',
      image: 'assets/images/colors/color_gray.png',
      JPAname: 'Hai',
      sound: 'sounds/colors/gray.wav',
    ),
    AColor(
      ENGname: 'Green',
      image: 'assets/images/colors/color_green.png',
      JPAname: 'Midori',
      sound: 'assets/sounds/colors/green.wav',
    ),
    AColor(
      ENGname: 'Red',
      image: 'assets/images/colors/color_red.png',
      JPAname: 'Aka',
      sound: 'sounds/colors/red.wav',
    ),
    AColor(
      ENGname: 'White',
      image: 'assets/images/colors/color_white.png',
      JPAname: 'Shiro',
      sound: 'sounds/colors/white.wav',
    ),
    AColor(
      ENGname: 'Yellow',
      image: 'assets/images/colors/yellow.png',
      JPAname: 'Kiiro',
      sound: 'sounds/colors/yellow.wav',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 52, 37, 0),
        centerTitle: true,
        title: const Text('Colors'),
      ),
      body: ListView.builder(
        itemCount: allcolors.length,
        itemBuilder: (context, index) {
          return ColorWedgit(acolor: allcolors[index]);
        },
      ),
    );
  }
}
