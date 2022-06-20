// ignore_for_file: unused_field

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(HomeFormPage());
}

class HomeFormPage extends StatefulWidget {
  HomeFormPage({Key? key}) : super(key: key);

  @override
  State<HomeFormPage> createState() => _HomeFormPageState();
}

class _HomeFormPageState extends State<HomeFormPage> {
  late String _name;
  late String _email;
  late String _password;
  late String _url;
  late String _phoneNumber;

  //FormKey
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  //Form Widgets

  Widget buildNameField() {
    return TextFormField(
      keyboardType: TextInputType.name,
      decoration: const InputDecoration(
          labelText: 'Name',
          hintText: 'Input your name here!',
          focusedBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.green))),
      validator: (String? value) {
        if (value!.isEmpty) {
          return 'Name is Required';
        }
      },
      onSaved: (String? value) {
        _name = value.toString();
      },
    );
  }

  Widget buildEmailField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
          labelText: 'Email',
          hintText: 'Input your email here!',
          focusedBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.green))),
      validator: (String? value) {
        if (value!.isEmpty) {
          return 'Email is Required';
        }
      },
      onSaved: (String? value) {
        _email = value.toString();
      },
    );
  }

  Widget buildPasswordField() {
    return TextFormField(
      keyboardType: TextInputType.visiblePassword,
      obscureText: true,
      decoration: const InputDecoration(
          labelText: 'Password',
          hintText: 'Input your password here!',
          focusedBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.green))),
      validator: (String? value) {
        if (value!.isEmpty) {
          return 'Password is Required';
        }
      },
      onSaved: (String? value) {
        _password = value.toString();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Using Forms"),
        ),
        body: Container(
          //color: Colors.red,
          margin: EdgeInsets.all(24),
          child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildNameField(),
                  const SizedBox(
                    height: 20,
                  ),
                  buildEmailField(),
                  const SizedBox(
                    height: 20,
                  ),
                  buildPasswordField(),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        if (!_formKey.currentState!.validate()) {
                          return;
                        } else {
                          _formKey.currentState!.save();
                          print(_name);
                          print(_email);
                          print(_password);
                        }
                      },
                      child: const Text(
                        "Submit",
                        style: TextStyle(fontSize: 35),
                      ))
                ],
              )),
        ),
      ),
    );
  }
}
