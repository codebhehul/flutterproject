// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:flutter_application_3/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = " ";
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();

  movetoHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
            child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    Image.asset("assets/images/hey.png", fit: BoxFit.cover),
                    SizedBox(
                      height: 22,
                    ),
                    Text(
                      "Welcome $name",
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 16.0, horizontal: 32.0),
                      child: Column(
                        children: [
                          TextFormField(
                            // ignore: prefer_const_constructors
                            decoration: InputDecoration(
                                hintText: "Enter Username",
                                labelText: "Username"),
                            validator: (value) {
                              if (value != null && value.isEmpty) {
                                return "Username cannot be Empty";
                              }
                              return null;
                            },
                            onChanged: (value) {
                              name = value;
                              setState(() {});
                            },
                          ),
                          TextFormField(
                            obscureText: true,
                            // ignore: prefer_const_constructors
                            decoration: InputDecoration(
                                hintText: "Enter Password",
                                labelText: "Password"),
                            validator: (value) {
                              if (value != null && value.isEmpty) {
                                return "Password cannot be Empty";
                              } else if (value != null && value.length < 6) {
                                return "Password length should be atleast 6";
                              }
                              return null;
                            },
                          ),

                          // ignore: prefer_const_constructors
                          SizedBox(
                            height: 40.0,
                          ),
                          Material(
                            child: InkWell(
                              onTap: () => movetoHome(context),
                              child: AnimatedContainer(
                                duration: Duration(seconds: 1),
                                width: changeButton ? 50 : 150,
                                height: 50,
                                alignment: Alignment.center,
                                child: changeButton
                                    ? Icon(
                                        Icons.done,
                                        color: Colors.white,
                                      )
                                    : Text(
                                        "Login",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                      ),
                                decoration: BoxDecoration(
                                  color: Colors.deepPurple,
                                  //shape:
                                  //changeButton ? BoxShape.circle : BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(
                                      changeButton ? 50 : 8),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ))));
  }
}
