import 'package:flutter/material.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AssetImage one = AssetImage('asset/images/one.png');
  AssetImage two = AssetImage('asset/images/two.png');
  AssetImage three = AssetImage('asset/images/three.png');
  AssetImage four = AssetImage('asset/images/four.png');
  AssetImage five = AssetImage('asset/images/five.png');
  AssetImage six = AssetImage('asset/images/six.png');

  late AssetImage diceImage1;
  late AssetImage diceImage2;
  int total = 0;

  @override
  void initState() {
    // TODO: implement initState
    setState(() {
      diceImage1 = one;
      diceImage2 = one;
    });
  }

  void rollDice() {
    var random1 = (1 + Random().nextInt(6));
    var random2 = (1 + Random().nextInt(6));

    late AssetImage newImage1;
    late AssetImage newImage2;

    switch (random1) {
      case 1:
        newImage1 = one;
        break;

      case 2:
        newImage1 = two;
        break;

      case 3:
        newImage1 = three;
        break;

      case 4:
        newImage1 = four;
        break;

      case 5:
        newImage1 = five;
        break;

      case 6:
        newImage1 = six;
        break;
    }

    switch (random2) {
      case 1:
        newImage2 = one;
        break;

      case 2:
        newImage2 = two;
        break;

      case 3:
        newImage2 = three;
        break;

      case 4:
        newImage2 = four;
        break;

      case 5:
        newImage2 = five;
        break;

      case 6:
        newImage2 = six;
        break;
    }
    setState(() {
      diceImage1 = newImage1;
      diceImage2 = newImage2;
      total = random1 + random2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dice Roller"),
      ),
      body: Container(
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Image(
                  image: diceImage1,
                  width: 200,
                  height: 200,
                ),
                Image(
                  image: diceImage2,
                  width: 200,
                  height: 200,
                )
              ],
            ),
            Container(
              child: Text(
                "Total is :  $total",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: ElevatedButton(
                onPressed: rollDice,
                child: const Text("Press Me",
                    style:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              ),
            )
          ],
        )),
      ),
    );
  }
}
