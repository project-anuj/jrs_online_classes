import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:jrs_online_classes/subjects/biology.dart';
import 'package:jrs_online_classes/subjects/biology_audiobook.dart';
import 'package:jrs_online_classes/subjects/chemistry.dart';
import 'package:jrs_online_classes/subjects/physics.dart';

class Neet extends StatefulWidget {
  NeetState createState() => NeetState();
}

class NeetState extends State<Neet> {
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
          "NEET",
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
                  builder: (_) => BioAudioBook(
                        color: 0xffed622b,
                      )));
            },
            child: myItems(
                "lib\\assets\\audiobook.png", "Biology Audiobook", 0xffed622b),
          ),
          GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) => Biology(
                          color: 0xff26cb3c,
                        )));
              },
              child: myItems("lib\\assets\\dna.png", "Biology", 0xff26cb3c)),
          GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) => Chemistry(
                          color: 0xffff3266,
                        )));
              },
              child: myItems("lib\\assets\\atom.png", "Chemistry", 0xffff3266)),
          GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) => Physics(
                          color: 0xff3399fe,
                        )));
              },
              child: myItems(
                  "lib\\assets\\relativity.png", "Physics", 0xff3399fe)),
        ],
        staggeredTiles: [
          StaggeredTile.extent(2, 130.0),
          StaggeredTile.extent(2, 130.0),
          StaggeredTile.extent(2, 130.0),
          StaggeredTile.extent(2, 130.0),
        ],
      ),
    );
  }
}
