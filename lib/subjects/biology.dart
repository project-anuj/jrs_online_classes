import 'package:flutter/material.dart';

class Biology extends StatelessWidget {
  int color;
  Biology({this.color});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text(
          "BIOLOGY",
          style: TextStyle(
              color: Color(color), fontWeight: FontWeight.bold, fontSize: 30),
        ),
        elevation: 0,
      ),
    );
  }
}
