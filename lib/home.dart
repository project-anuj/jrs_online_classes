import 'package:flutter/material.dart';
import 'package:jrs_online_classes/class_10_science.dart';
import 'package:jrs_online_classes/dmlt_page.dart';
import 'package:jrs_online_classes/neet_page.dart';
import 'package:jrs_online_classes/paramediacal_page.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          title: Text(
            "Dashboard",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30),
          ),
          elevation: 0,
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 10,
                ),
                Card(
                  borderOnForeground: true,
                  child: Center(
                    child: Container(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (_) => Neet()));
                        },
                        child: Stack(
                          fit: StackFit.expand,
                          children: [
                            Image.network(
                              "https://images.unsplash.com/photo-1518374895823-ee01662288c5?ixid=MXwxMjA3fDB8MHx0b3BpYy1mZWVkfDV8Ym84alFLVGFFMFl8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
                              fit: BoxFit.fill,
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                "NEET",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      width: MediaQuery.of(context).size.width,
                      height: 200,
                    ),
                  ),
                  elevation: 10,
                ),
                Card(
                  child: Container(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (_) => Dmlt()));
                      },
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          Image.network(
                            "https://images.unsplash.com/photo-1518374895823-ee01662288c5?ixid=MXwxMjA3fDB8MHx0b3BpYy1mZWVkfDV8Ym84alFLVGFFMFl8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
                            fit: BoxFit.fill,
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              "DMLT",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                  ),
                  elevation: 10,
                ),
                Card(
                  child: Container(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (_) => Paramedical()));
                      },
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          Image.network(
                            "https://images.unsplash.com/photo-1518374895823-ee01662288c5?ixid=MXwxMjA3fDB8MHx0b3BpYy1mZWVkfDV8Ym84alFLVGFFMFl8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
                            fit: BoxFit.fill,
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              "PARAMEDICAL",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                  ),
                  elevation: 10,
                ),
                Card(
                  child: Container(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (_) => Science()));
                      },
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          Image.network(
                            "https://images.unsplash.com/photo-1518374895823-ee01662288c5?ixid=MXwxMjA3fDB8MHx0b3BpYy1mZWVkfDV8Ym84alFLVGFFMFl8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
                            fit: BoxFit.fill,
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              "CLASS 10 SCIENCE",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                  ),
                  elevation: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
