import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  LoginPage({required this.studID, required this.password});

  String studID;
  String password;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/facade_hau.png"),
                    fit: BoxFit.cover)),
            child: Container(
              margin: EdgeInsets.all(50),
              child: Column(
                children: [
                  Container(
                      child: Image.asset(
                    "assets/images/soc_logo.png",
                  )),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    color: Colors.white.withOpacity(0.8),
                    padding: EdgeInsets.all(40),
                    child: Column(
                      children: [
                        Text("Student ID:\n" + studID,
                            style: GoogleFonts.roboto(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                        const SizedBox(
                          height: 10,
                        ),
                        Text("Password:\n" + password,
                            style: GoogleFonts.roboto(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Get.back();
                    },
                    style: ElevatedButton.styleFrom(primary: Colors.white),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "Go Back to Login",
                        style: GoogleFonts.roboto(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
