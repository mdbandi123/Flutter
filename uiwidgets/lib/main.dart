import 'package:flutter/material.dart';

void main() {
  runApp(LoadPictureAndFonts());
}

class LoadPictureAndFonts extends StatelessWidget {
  const LoadPictureAndFonts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Assignment (WD-302)"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: const Image(
                  image: AssetImage("asset/images/md-sumang.jpg"),
                  height: 400,
                  width: 400,
                ),
              ),
              const Text(
                "Michael Dave Sumang",
                style:
                    TextStyle(fontSize: 20, fontFamily: "AvengeroRegular-zvgl"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
