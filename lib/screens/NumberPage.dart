// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:tokuapp/Models/numbersClass.dart';
import 'package:tokuapp/components/numWedgit.dart';

class Number extends StatelessWidget {
  const Number({super.key});
  final List<Numbers> number = const [
    Numbers(
        sound: 'sounds/numbers/number_one_sound.mp3',
        image: 'assets/images/numbers/number_one.png',
        numName: 'One',
        JPAnumName: 'Ichi'),
    Numbers(
        sound: 'sounds/numbers/number_two_sound.mp3',
        image: 'assets/images/numbers/number_two.png',
        numName: 'Two',
        JPAnumName: 'ni'),
    Numbers(
        sound: 'sounds/numbers/number_three_sound.mp3',
        image: 'assets/images/numbers/number_three.png',
        numName: 'Three',
        JPAnumName: 'san'),
    Numbers(
        sound: 'sounds/numbers/number_four_sound.mp3',
        image: 'assets/images/numbers/number_four.png',
        numName: 'Four',
        JPAnumName: 'shi'),
    Numbers(
        sound: 'sounds/numbers/number_five_sound.mp3',
        image: 'assets/images/numbers/number_five.png',
        numName: 'Five',
        JPAnumName: 'go'),
    Numbers(
        sound: 'sounds/numbers/number_six_sound.mp3',
        image: 'assets/images/numbers/number_six.png',
        numName: 'Six',
        JPAnumName: 'roku'),
    Numbers(
        sound: 'sounds/numbers/number_seven_sound.mp3',
        image: 'assets/images/numbers/number_seven.png',
        numName: 'Seven',
        JPAnumName: 'shichi'),
    Numbers(
        sound: 'sounds/numbers/number_eight_sound.mp3',
        image: 'assets/images/numbers/number_eight.png',
        numName: 'Eight',
        JPAnumName: 'hachi'),
    Numbers(
        sound: 'sounds/numbers/number_nine_sound.mp3',
        image: 'assets/images/numbers/number_nine.png',
        numName: 'Nine',
        JPAnumName: 'ku'),
    Numbers(
        sound: 'sounds/numbers/number_ten_sound.mp3',
        image: 'assets/images/numbers/number_ten.png',
        numName: 'Ten',
        JPAnumName: 'jū'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff46322B),
        title: const Text('Number'),
      ),
      body: ListView.builder(
        itemCount: number.length,
        itemBuilder: (context, index) {
          return numWedgit(number: number[index]);
        },
      ),
    );
  }

  // List<Widget> getlist(List<Numbers> numbers) {
  //   List<Widget> itemlist = [];
  //   for (int i = 0; i < numbers.length; i++) {
  //     itemlist.add(numWedgit(number: numbers[i]));
  //   }
  //   return itemlist;
  // }
}
