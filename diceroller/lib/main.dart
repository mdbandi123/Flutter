import 'package:flutter/material.dart';
import "homepage.dart";

void main(List<String> args) {
  runApp(diceApp());
}

class diceApp extends StatelessWidget {
  const diceApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Dice Roller",
      home: HomePage(),
    );
  }
}
