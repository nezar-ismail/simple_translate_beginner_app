// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:tokuapp/Models/FamilyClass.dart';
import 'package:tokuapp/components/FamilyWedgit.dart';

class FamilyMember extends StatelessWidget {
  const FamilyMember({Key? key}) : super(key: key);
  // final Family father = const Family(
  //     image: 'assets/images/family_members/family_father.png',
  //     ENGname: 'Father',
  //     JPAname: 'hghjg');
  final List<Family> fam = const [
    Family(
        sound: 'sounds/family_members/father.wav',
        image: 'assets/images/family_members/family_father.png',
        ENGname: 'Father',
        JPAname: 'Chichioya'),
    Family(
        sound: 'sounds/family_members/daughter.wav',
        image: 'assets/images/family_members/family_daughter.png',
        ENGname: 'Daughter',
        JPAname: 'Musume'),
    Family(
        sound: 'sounds/family_members/grand father.wav',
        image: 'assets/images/family_members/family_grandfather.png',
        ENGname: 'Grand Father',
        JPAname: 'Ojisan'),
    Family(
        sound: 'sounds/family_members/mother.wav',
        image: 'assets/images/family_members/family_mother.png',
        ENGname: 'Mother',
        JPAname: 'Hahaoya'),
    Family(
        sound: 'sounds/family_members/grand mother.wav',
        image: 'assets/images/family_members/family_grandmother.png',
        ENGname: 'Grand Mother',
        JPAname: 'Sobo'),
    Family(
        sound: 'sounds/family_members/older bother.wav',
        image: 'assets/images/family_members/family_older_brother.png',
        ENGname: 'Older Brother',
        JPAname: 'Nisan'),
    Family(
        sound: 'sounds/family_members/older sister.wav',
        image: 'assets/images/family_members/family_older_sister.png',
        ENGname: 'Older Sister',
        JPAname: 'Ane'),
    Family(
        sound: 'sounds/family_members/son.wav',
        image: 'assets/images/family_members/family_son.png',
        ENGname: 'Son',
        JPAname: 'Musuko'),
    Family(
        sound: 'sounds/family_members/younger brohter.wav',
        image: 'assets/images/family_members/family_younger_brother.png',
        ENGname: 'Younger Brother',
        JPAname: 'Otouto'),
    Family(
        sound: 'sounds/family_members/younger sister.wav',
        image: 'assets/images/family_members/family_younger_sister.png',
        ENGname: 'Younger Sister',
        JPAname: 'imouto'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff46322B),
          centerTitle: true,
          title: const Text('Family member'),
        ),
        body: ListView.builder(
          itemCount: fam.length,
          itemBuilder: (context, index) {
            return FamilyWedgit(fam: fam[index]);
          },
        ));
  }
}
