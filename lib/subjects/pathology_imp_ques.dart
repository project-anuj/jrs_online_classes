import 'package:flutter/material.dart';

class PathImpQues extends StatelessWidget {
  int color;
  PathImpQues({this.color});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text(
          "PHYSIOLOGY IMP. QUES.",
          style: TextStyle(
              color: Color(color), fontWeight: FontWeight.bold, fontSize: 30),
        ),
        elevation: 0,
      ),
    );
  }
}
