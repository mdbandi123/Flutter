import 'package:avengers/model/avengers.dart';
import 'package:flutter/material.dart';

class AvengersCard extends StatelessWidget {
  AvengersCard({required this.avenger, required this.onPressed});

  Avengers avenger;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        color: Colors.yellow,
        padding: EdgeInsets.all(10.0),
        width: double.infinity,
        height: 320,
        child: Stack(
          children: [
            Positioned(
                left: 60,
                top: 100,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20.0)),
                  constraints: BoxConstraints(maxHeight: 200, maxWidth: 300),
                )),
            Positioned(
              left: 3.0,
              top: 55.0,
              child: Hero(
                tag: avenger.id,
                transitionOnUserGestures: true,
                child: Image.asset(
                  avenger.avengerImage,
                  width: 200,
                  height: 250,
                ),
              ),
            ),
            Positioned(
              top: 160,
              left: 190,
              child: Center(
                child: Text(avenger.name,
                    style: const TextStyle(
                        fontFamily: "AvengeroRegular-zvgl",
                        fontWeight: FontWeight.bold,
                        fontSize: 30)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
