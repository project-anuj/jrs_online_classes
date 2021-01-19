import 'package:flutter/material.dart';

class DmltPathology extends StatelessWidget {
  int color;
  DmltPathology({this.color});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text(
          "PATHOLOGY",
          style: TextStyle(
              color: Color(color), fontWeight: FontWeight.bold, fontSize: 30),
        ),
        elevation: 0,
      ),
    );
  }
}
