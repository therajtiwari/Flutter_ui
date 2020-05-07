import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'secondpage.dart';

void main() => runApp(
      MaterialApp(
        home: Home(),
      ),
    );

class Home extends StatelessWidget {
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/sunset.png"), fit: BoxFit.cover),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(50, 200, 0, 0),
                  child: Text(
                    'Learn\nEnglish\nEasy',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Open_Sans',
                      height: 1.2,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: 300,
                  padding: EdgeInsets.fromLTRB(50, 0, 0, 0),
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w100,
                      fontFamily: 'Open_Sans',
                      height: 1.3,
                    ),
                  ),
                ),
              ],
            ),
          ),
          floatingActionButton: Container(
            padding: EdgeInsets.fromLTRB(0, 0, 25, 25),
            child: FloatingActionButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SecondPage()));
              },
              child: const Icon(
                Icons.arrow_forward,
                color: Colors.black,
              ),
              backgroundColor: Color(0xFFfcba03),
            ),
          ),
        ),
      ),
    );
  }
}
