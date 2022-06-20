import 'package:avengers/model/avengers.dart';
import 'package:avengers/widget/avengers_card.dart';
import 'package:avengers/widget/details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main(List<String> args) {
  runApp(AvengersHeroes());
}

class AvengersHeroes extends StatefulWidget {
  AvengersHeroes({Key? key}) : super(key: key);

  @override
  State<AvengersHeroes> createState() => _AvengersHeroesState();
}

class _AvengersHeroesState extends State<AvengersHeroes> {
  List<Avengers> avengers = [];
  @override
  void initState() {
    avengers = avengersList;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: const Text("Avengers"),
            ),
            body: ListView.builder(
              itemCount: avengers.length,
              itemBuilder: (BuildContext context, int index) => AvengersCard(
                avenger: avengers[index],
                onPressed: () {
                  Get.to(DetailsPage(avenger: avengers[index]));
                },
              ),
            )));
  }
}
