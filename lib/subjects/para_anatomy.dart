import 'package:flutter/material.dart';

class ParaAnatomy extends StatelessWidget {
  int color;
  ParaAnatomy({this.color});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text(
          "ANATOMY",
          style: TextStyle(
              color: Color(color), fontWeight: FontWeight.bold, fontSize: 30),
        ),
        elevation: 0,
      ),
    );
  }
}
