import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    var textStyle = TextStyle(
        decoration: TextDecoration.underline,
        fontSize: 40.0,
        fontFamily: 'Pattaya',
        color: Colors.amber);
    return Center(
      child: Container(
        alignment: Alignment.center,
        color: Colors.brown,
        child: Row(
          children: <Widget>[
            Expanded(
              child: Text(
                "Developer Ratnesh",
                textDirection: TextDirection.ltr,
                style: textStyle,
              ),
            ),
            Expanded(
              child: Text(
                "Develope",
                textDirection: TextDirection.ltr,
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontSize: 40.0,
                    fontFamily: 'Pattaya',
                    color: Colors.amber),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
