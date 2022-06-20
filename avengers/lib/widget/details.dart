import 'package:avengers/model/avengers.dart';
import 'package:avengers/widget/information.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailsPage extends StatelessWidget {
  DetailsPage({required this.avenger});

  final Avengers avenger;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text(
              avenger.name,
              style: const TextStyle(
                fontFamily: "AvengeroRegular-zvgl",
                fontSize: 15,
              ),
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
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
                child: GestureDetector(
                    child: Hero(
                      tag: avenger.avengerImage,
                      child: Image(image: AssetImage(avenger.avengerImage)),
                    ),
                    onTap: () {
                      Get.back();
                    }),
              ),
              Container(
                height: 300,
                child: SingleChildScrollView(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Header(text: "Description"),
                      SizedBox(
                        height: 10,
                      ),
                      SubHeader(text: avenger.description)
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
