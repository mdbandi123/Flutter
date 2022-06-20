import 'package:flutter/material.dart';

void main() {
  /*runApp(Text(
    "Hello and welcome",
    textDirection: TextDirection.ltr,
    style: TextStyle(
        fontSize: 50.0, fontWeight: FontWeight.bold, color: Colors.red),
  ));*/

  /*runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My first flutter app",
      home: Material(
          color: Colors.lightBlueAccent,
          child: Center(
            child: Text(
              "Hi There",
              textDirection: TextDirection.ltr,
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
                color: Colors.redAccent,
              ),
            ),
          ))));*/

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "My First flutter app",
    home: Scaffold(
        appBar: AppBar(title: Text("My First Flutter App")),
        body: Material(
            color: Colors.lightBlueAccent,
            child: Center(
                child: Text("Hi There",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.redAccent,
                    ))))),
  ));
}
