import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
          fontFamily: 'Pumkin Story',
          fontSize: 30,
          fontWeight: FontWeight.bold),
    );
  }
}

class SubHeader extends StatelessWidget {
  const SubHeader({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
          fontFamily: 'Pumkin Story',
          fontSize: 13,
          fontWeight: FontWeight.bold),
    );
  }
}
