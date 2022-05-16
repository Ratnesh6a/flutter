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
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            'Flutter Demo',
            style: TextStyle(color: Colors.yellowAccent),
          ),
          leading: IconButton(
            icon: Icon(Icons.menu),
            splashColor: Colors.green,
            onPressed: () {},
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.accessibility_sharp),
              splashColor: Colors.green,
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.access_alarms),
              splashColor: Colors.green,
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.access_alarms),
              splashColor: Colors.green,
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.access_alarms),
              splashColor: Colors.green,
              onPressed: () {},
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: [
                Image.asset('images/d3.jpeg'),
                Text(
                  "Dhoni",
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold),
                ),
                Image.asset('images/d3.jpeg'),
                Text(
                  "Dhoni",
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold),
                ),
                Image.asset('images/d3.jpeg'),
                Text(
                  "Dhoni",
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold),
                ),
                Image.asset('images/d3.jpeg'),
                Text(
                  "Dhoni",
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
