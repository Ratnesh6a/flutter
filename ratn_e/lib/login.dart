import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ratn_e/utlities/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(
        Duration(seconds: 1),
      );
      await Navigator.pushNamed(context, MyRoutes.homeRoutes);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Image.asset(
                "assets/images/login.png",
                fit: BoxFit.cover,
              ),
              Text(
                "Welcome Hero $name",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter the username",
                        labelText: "Username",
                      ),
                      // For validation in form
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Username cannot be empty";
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
                      decoration: InputDecoration(
                        hintText: "Enter the Password",
                        labelText: "Password",
                      ),
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Password cannot be empty";
                        } else if (value.length < 7) {
                          return "Password should be more than 6";
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    // ElevatedButton(
                    //   style: ElevatedButton.styleFrom(
                    //       primary: Colors.red, shadowColor: Colors.blue),
                    //   onPressed: () {
                    //     Navigator.pushNamed(context, MyRoutes.homeRoutes);
                    //   },
                    //   child: Text("Login"),
                    // )

                    Material(
                      borderRadius:
                          BorderRadius.circular(changeButton ? 50 : 8),
                      color: Colors.deepPurple,
                      child: InkWell(
                        splashColor: Colors.red,
                        onTap: () => moveToHome(context),
                        child: AnimatedContainer(
                          width: changeButton ? 50 : 150,
                          height: 50,
                          //   color: Colors.deepPurple,

                          alignment: Alignment.center,
                          // child: Text(
                          //   "Login",
                          //   style: TextStyle(
                          //       color: Colors.white,
                          //       fontWeight: FontWeight.w900,
                          //       fontSize: 20),
                          // ),
                          // decoration: BoxDecoration(
                          //   color: Colors.deepPurple,
                          // borderRadius: BorderRadius.circular(8),
                          child: changeButton
                              ? Icon(
                                  Icons.done,
                                  color: Colors.white,
                                )
                              : Text(
                                  "Login",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w900,
                                      fontSize: 20),
                                ),
                          // decoration: BoxDecoration(
                          //     borderRadius:
                          //         BorderRadius.circular(changeButton ? 24 : 8),
                          //     color: Colors.deepPurple),
                          duration: Duration(seconds: 1),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
