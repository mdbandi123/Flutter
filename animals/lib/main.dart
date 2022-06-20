import 'package:animals/model/animal.dart';
import 'package:animals/widget/animal_card.dart';
import 'package:animals/widget/details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Animal> animals = [];
  @override
  void initState() {
    animals = animallist;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: const Text("Animals"),
            ),
            body: ListView.builder(
                itemCount: animals.length,
                itemBuilder: (context, index) => AnimalCard(
                    animal: animals[index],
                    onPressed: () {
                      Get.to(DetailsPage(animal: animals[index]));
                    }))));
  }
}
