import 'package:animals/model/animal.dart';
import 'package:flutter/material.dart';

class AnimalCard extends StatelessWidget {
  AnimalCard({required this.animal, required this.onPressed});

  Animal animal;

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
                //color: Colors.blue,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20.0)),
                constraints: BoxConstraints(maxHeight: 200, maxWidth: 300),
              ),
            ),
            Positioned(
                left: 3.0,
                top: 55.0,
                child: Hero(
                  tag: animal.id,
                  transitionOnUserGestures: true,
                  child: Image.asset(
                    animal.animalImage,
                    width: 200,
                    height: 250,
                  ),
                )),
            Positioned(
                top: 180,
                left: 200,
                child: Center(
                  child: Text(
                    animal.name,
                    style: const TextStyle(
                        fontSize: 30,
                        fontFamily: 'PatrickHand-Regular',
                        fontWeight: FontWeight.bold),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
