import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  Header({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: const TextStyle(
            fontFamily: "AvengeroRegular-zvgl",
            fontSize: 20,
            fontWeight: FontWeight.bold));
  }
}

class SubHeader extends StatelessWidget {
  SubHeader({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: const TextStyle(
          fontFamily: "hero",
          fontSize: 20,
        ));
  }
}
