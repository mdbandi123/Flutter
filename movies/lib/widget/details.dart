import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movies/widget/customtext.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key, required this.trending, required this.index})
      : super(key: key);

  final List trending;
  final int index;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
              child: const CustomText(
            text: "Description",
            size: 30,
            color: Colors.brown,
          )),
        ),
        body: Container(
          color: Colors.black,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: EdgeInsets.only(top: 10),
                child: Center(
                  child: CustomText(
                    text: trending[index]['title'] == null
                        ? trending[index]['name']
                        : trending[index]['title'],
                    size: 20,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10),
                height: 300,
                //width: 500,
                child: GestureDetector(
                  child: Image(
                      image: NetworkImage("https://image.tmdb.org/t/p/w500" +
                          trending[index]["poster_path"])),
                  onTap: () {
                    Get.back();
                  },
                ),
              ),
              Container(
                height: 200,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(20),
                        child: CustomText(
                            text: trending[index]['overview'],
                            color: Colors.white,
                            size: 20),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
