// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:tokuapp/components/category_items.dart';
import 'package:tokuapp/screens/ColorPage.dart';
import 'package:tokuapp/screens/FamilyPage.dart';
import 'package:tokuapp/screens/NumberPage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff46322B),
        title: const Center(
          child: Text(
            "Toku App",
            style: TextStyle(
              fontSize: 25,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Category(
            text: 'Number',
            color: Colors.orangeAccent,
            ontap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return const Number();
                  },
                ),
              );
            },
          ),
          Category(
              ontap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const FamilyMember();
                    },
                  ),
                );
              },
              text: 'Family Member',
              color: const Color.fromARGB(255, 69, 151, 80)),
          Category(
              ontap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (BuildContext context) {
                    return const ColorsPage();
                  }),
                );
              },
              text: 'Colors',
              color: const Color.fromARGB(255, 154, 83, 159)),
          Category(
              text: 'Phrases', color: const Color.fromARGB(255, 64, 242, 255)),
        ],
      ),
    );
  }
}
