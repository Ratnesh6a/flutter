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
      home: SafeArea(
        child: Scaffold(
          drawer: Drawer(),
          appBar: AppBar(
            backgroundColor: Colors.amber[900],
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.home),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.hourglass_empty_outlined),
                onPressed: () {},
              ),
            ],
            title: Text(
              'Welcome to Flutter ',
              style: TextStyle(color: Colors.white),
            ),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Card(
                    elevation: 20.0,
                    shadowColor: Colors.blueAccent,
                    child: Image.asset('lib/images/babu.jpeg'),
                  ),
                  Card(
                    elevation: 40.0,
                    shadowColor: Colors.blueAccent,
                    child: Text(
                      'Babu Rao',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Card(
                    elevation: 40.0,
                    shadowColor: Colors.blueAccent,
                    child: Image.network(
                        'https://image.shutterstock.com/image-photo/mountains-under-mist-morning-amazing-260nw-1725825019.jpg'),
                  ),
                  Card(
                    elevation: 40.0,
                    child: Text(
                      'Mist Image',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Card(
                    elevation: 40.0,
                    shadowColor: Colors.blueAccent,
                    child: Image.network(
                        'https://images.ctfassets.net/hrltx12pl8hq/3MbF54EhWUhsXunc5Keueb/60774fbbff86e6bf6776f1e17a8016b4/04-nature_721703848.jpg?fit=fill&w=480&h=270'),
                  ),
                  Card(
                    elevation: 40.0,
                    child: Text(
                      'Mist Image',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Card(
                    elevation: 40.0,
                    shadowColor: Colors.blueAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100.0),
                    ),
                    child: Image.network(
                        'https://images.unsplash.com/photo-1444703686981-a3abbc4d4fe3?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8dXNlZHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80'),
                  ),
                  Card(
                    elevation: 40.0,
                    color: Colors.red,
                    child: Text(
                      'Mist hi Image',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
