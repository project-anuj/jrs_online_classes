import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:jrs_online_classes/subjects/para_anatomy.dart';
import 'package:jrs_online_classes/subjects/para_microbiology.dart';
import 'package:jrs_online_classes/subjects/para_pathology.dart';
import 'package:jrs_online_classes/subjects/para_pharmacology.dart';
import 'package:jrs_online_classes/subjects/para_physiology.dart';

class Paramedical extends StatefulWidget {
  ParamedicalState createState() => ParamedicalState();
}

class ParamedicalState extends State<Paramedical> {
  Material myItems(String iconData, String heading, int color) {
    return Material(
      color: Colors.white,
      elevation: 14.0,
      shadowColor: Color(0xff802196F3),
      borderRadius: BorderRadius.circular(24.0),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        heading,
                        style:
                            TextStyle(color: new Color(color), fontSize: 20.0),
                      ),
                    ),
                  ),
                  Material(
                    color: new Color(color),
                    borderRadius: BorderRadius.circular(24.0),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Image.asset(
                        iconData,
                        color: Colors.white,
                        height: 30.0,
                        width: 30.0,
                      ),
                      // child: Icon(
                      //   AssetImage(iconData),
                      //   color: Colors.white,
                      //   size: 30.0,
                      // ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text(
          "PARAMEDICAL",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30),
        ),
        elevation: 0,
      ),
      body: StaggeredGridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 12.0,
        mainAxisSpacing: 12.0,
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        children: <Widget>[
          GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) => ParaAnatomy(
                          color: 0xffed622b,
                        )));
              },
              child: myItems("lib\\assets\\circulatory-system.png", "Anatomy",
                  0xffed622b)),
          GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) => ParaMicrobiology(
                          color: 0xff26cb3c,
                        )));
              },
              child: myItems(
                  "lib\\assets\\microbiology.png", "Microbiology", 0xff26cb3c)),
          GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) => ParaPatholoy(
                          color: 0xffff3266,
                        )));
              },
              child: myItems(
                  "lib\\assets\\pathology.png", "Pathology", 0xffff3266)),
          GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) => ParaPhysiology(
                          color: 0xff3399fe,
                        )));
              },
              child: myItems(
                  "lib\\assets\\immunity.png", "Physiology", 0xff3399fe)),
          GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) => ParaPharmacology(
                          color: 0xfff4c83f,
                        )));
              },
              child: myItems(
                  "lib\\assets\\medicine.png", "Pharmacology", 0xfff4c83f)),
        ],
        staggeredTiles: [
          StaggeredTile.extent(2, 130.0),
          StaggeredTile.extent(1, 270.0),
          StaggeredTile.extent(1, 130.0),
          StaggeredTile.extent(1, 130.0),
          StaggeredTile.extent(2, 130.0),
        ],
      ),
    );
  }
}
