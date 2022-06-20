// ignore_for_file: unused_field

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:haulogin/login.dart';

void main() {
  runApp(HAUHomePage());
}

class HAUHomePage extends StatefulWidget {
  HAUHomePage({Key? key}) : super(key: key);

  @override
  State<HAUHomePage> createState() => _HAUHomePageState();
}

class _HAUHomePageState extends State<HAUHomePage> {
  late String _studID;
  late String _password;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget nameBuilder() {
    return TextFormField(
      keyboardType: TextInputType.text,
      decoration: const InputDecoration(
        labelText: 'Student ID',
        fillColor: Colors.white,
        filled: true,
        hintText: 'Example: 2019xxxxxx',
      ),
      validator: (String? value) {
        if (value!.isEmpty) {
          return 'Student ID is required';
        }
      },
      onSaved: (String? value) {
        _studID = value.toString();
      },
    );
  }

  Widget passwordBuilder() {
    return TextFormField(
      keyboardType: TextInputType.visiblePassword,
      obscureText: true,
      decoration: const InputDecoration(
        labelText: 'Password',
        fillColor: Colors.white,
        filled: true,
      ),
      validator: (String? value) {
        if (value!.isEmpty) {
          return 'Student ID is required';
        }
      },
      onSaved: (String? value) {
        _password = value.toString();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Container(
            decoration: const BoxDecoration(
                image: (DecorationImage(
              image: AssetImage("assets/images/facade_hau.png"),
              fit: BoxFit.fill,
            ))),
            child: Container(
              margin: EdgeInsets.all(50),
              //color: Colors.blue,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                      child: Image.asset(
                    "assets/images/soc_logo.png",
                  )),
                  const SizedBox(
                    height: 20,
                  ),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        nameBuilder(),
                        const SizedBox(
                          height: 20,
                        ),
                        passwordBuilder(),
                        const SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              minimumSize: const Size.fromHeight(40),
                              primary: Colors.white.withOpacity(.8)),
                          onPressed: () {
                            if (!_formKey.currentState!.validate()) {
                              return;
                            } else {
                              _formKey.currentState!.save();
                              Get.to(LoginPage(
                                  studID: _studID, password: _password));
                            }
                          },
                          child: Container(
                              padding: EdgeInsets.all(10),
                              child: Text("Login",
                                  style: GoogleFonts.roboto(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold))),
                        ),
                      ],
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
