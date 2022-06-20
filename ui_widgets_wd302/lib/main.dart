import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const LoadPictureAndFonts());
}

class ColumnRow extends StatelessWidget {
  const ColumnRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Columns and Row"),
          ),
          body: Center(
            child: Container(
                color: Colors.red,
                child: Stack(
                  children: [
                    Container(width: 200, height: 200, color: Colors.red),
                    Positioned(
                      //top: 300,
                      //left: 100,
                      child: Container(
                        width: 100,
                        height: 100,
                        color: Colors.blue,
                      ),
                    )
                  ],
                )
                /*Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text(
                  "Holy",
                  style: TextStyle(fontSize: 20.0),
                ),
                Text("Angel", style: TextStyle(fontSize: 20.0)),
                Text("University", style: TextStyle(fontSize: 20.0)),
              ]*/
                ),
          )),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text('UI Widgets'),
          ),
          body: Center(
              child: Container(
            width: 200,
            height: 200,
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                      color: Colors.blue, blurRadius: 4.0, spreadRadius: 2.0)
                ],
                gradient: const LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [Colors.blue, Colors.white]),
                border: Border.all(
                    color: Colors.black, width: 3.0, style: BorderStyle.solid),
                color: Colors.red,
                //borderRadius: const BorderRadius.all(Radius.circular(20.0))
                shape: BoxShape.circle),
            child: const Text(
              'Holy Angel',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          )),
        ));
  }
}

class LoadPictureAndFonts extends StatelessWidget {
  const LoadPictureAndFonts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.only(bottom: 20),
              child: Image(
                image: AssetImage("asset/images/mrbean.jpg"),
                height: 200,
                width: 400,
              ),
            ),
            Text(
              "MR. BEAN",
              style:
                  TextStyle(fontSize: 30.0, fontFamily: "AvengeroRegular-zvgl"),
            ),
          ],
        )),
      ),
    );
  }
}
