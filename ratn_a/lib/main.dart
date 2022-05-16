import 'dart:ui';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "First Demo App",
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: Text('Portfolio'),
          backgroundColor: Colors.blueGrey,
        ),
        body: Column(
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 20),
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.blueAccent,
                    border: Border.all(color: Colors.black, width: 4)),
                child: Center(
                  child: Text(
                    "R",
                    style: TextStyle(fontSize: 160, color: Colors.indigo),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              height: 40,
              width: 400,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.yellowAccent),
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter Your Name",
                      icon: Icon(Icons.person)),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              height: 40,
              width: 400,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.yellowAccent),
              child: Padding(
                padding: EdgeInsets.only(left: 20),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter Your Passsword",
                      icon: Icon(Icons.lock)),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              height: 40,
              width: 400,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.yellowAccent),
              child: Padding(
                padding: EdgeInsets.only(left: 20),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Git Hub",
                      icon: Icon(Icons.link)),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              height: 40,
              width: 400,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.yellowAccent),
              child: Center(
                child: Text(
                  "Update",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w800),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
