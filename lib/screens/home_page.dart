import 'dart:math';

import 'package:flutter/material.dart';

import '../utils/styles/text_style.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Dice roll",
          style: CustomTextStyle.smallBold,
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Dice",
              style: CustomTextStyle.smallBold,
            ),
            SizedBox(
              height: 5,
            ),
            SizedBox(
              child: Image.network(
                "https://raw.githubusercontent.com/bishworajpoudelofficial/flutter_dice_roller/master/assets/$diceNumber.png",
                height: 200,
                width: 300,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Changedice();
              },
              child: Text("Roll Dice"),
            ),
          ],
        ),
      ),
    );
  }

  int diceNumber = 1;

  void Changedice() {
    Random rondom1 = Random();
    setState(() {
      diceNumber = rondom1.nextInt(6) + 1;
    });
  }
}
