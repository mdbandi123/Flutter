import 'package:animals/model/animal.dart';
import 'package:animals/widget/information.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailsPage extends StatelessWidget {
  DetailsPage({required this.animal});

  final Animal animal;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            animal.name,
            style: const TextStyle(
                fontFamily: 'PatrickHand-Regular', fontSize: 30),
          ),
          elevation: 0,
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: const EdgeInsets.all(10.0),
              height: 300,
              decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30))),
              child: GestureDetector(
                child: Hero(
                  tag: animal.animalImage,
                  child: Image(
                    image: AssetImage(animal.animalImage),
                  ),
                ),
                onTap: () {
                  Get.back();
                },
              ),
            ),
            Container(
              height: 300,
              child: SingleChildScrollView(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    const Header(text: 'Description'),
                    const SizedBox(
                      height: 10.0,
                    ),
                    SubHeader(text: animal.description)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
