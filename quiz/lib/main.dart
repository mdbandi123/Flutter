import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(ShrineApp());
}

class ShrineApp extends StatelessWidget {
  const ShrineApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: Drawer(),
        appBar: AppBar(
          title: const Text("SHRINE"),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: Icon(Icons.tune)),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(20),
            //color: Colors.blue,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    Card(
                      clipBehavior: Clip.antiAlias,
                      //color: Colors.red,
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/images/rucksack.jpg",
                            width: 100,
                            height: 100,
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(25, 10, 25, 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Vagabond sack",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10,
                                  width: 120,
                                ),
                                Text(
                                  "\$120.00",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Card(
                      clipBehavior: Clip.antiAlias,
                      //color: Colors.red,
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/images/shades.jpg",
                            width: 100,
                            height: 100,
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(25, 10, 25, 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Stella",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10,
                                  width: 120,
                                ),
                                Text(
                                  "\$58.00",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Card(
                      clipBehavior: Clip.antiAlias,
                      //color: Colors.red,
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/images/belt.jpg",
                            width: 100,
                            height: 100,
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(25, 10, 25, 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Whitney Belt",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10,
                                  width: 125,
                                ),
                                Text(
                                  "\$35.00",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Card(
                      clipBehavior: Clip.antiAlias,
                      //color: Colors.red,
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/images/chain.jpg",
                            width: 100,
                            height: 100,
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(25, 10, 25, 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Garden Strand",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10,
                                  width: 120,
                                ),
                                Text(
                                  "\$98.00",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Card(
                      clipBehavior: Clip.antiAlias,
                      //color: Colors.red,
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/images/earring.jpg",
                            width: 100,
                            height: 100,
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(25, 10, 25, 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Strut Earrings",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10,
                                  width: 125,
                                ),
                                Text(
                                  "\$34.00",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Card(
                      clipBehavior: Clip.antiAlias,
                      //color: Colors.red,
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/images/socks.jpg",
                            width: 100,
                            height: 100,
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(25, 10, 25, 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Varsity Socks",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10,
                                  width: 120,
                                ),
                                Text(
                                  "\$12.00",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
