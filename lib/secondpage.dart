import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return Scaffold(
      backgroundColor: Colors.black54,
      body: SafeArea(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(30, 10, 20, 20),
                      alignment: Alignment.topLeft,
                      child: Row(
                        children: <Widget>[
                          IconButton(
                            icon: Icon(
                              Icons.arrow_forward,
                              color: Color(0xFFfcba03),
                              size: 30,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                          SizedBox(width: 55),
                          Container(
                            child: Text(
                              "Dictionary",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontFamily: "Open_Sans",
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 30),
              Center(
                child: Container(
                  child: Text(
                    "SUBLIME",
                    style: TextStyle(
                      fontSize: 45,
                      color: Color(0xFFfcba03),
                      letterSpacing: 8,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 80),

              Expanded(
                  child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Words('Word1'),
                  Words('Word2'),
                  Words('Word3'),
                  Words('Word4'),
                  Words('Word5'),
                  Words('Word6'),
                ],
              )),
              SizedBox(height: 90),
              Center(
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  margin: EdgeInsets.fromLTRB(20, 20, 20, 50),
                  color: Colors.white,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ListTiles(),
                      SizedBox(height: 80),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            IconButton(
                              padding: EdgeInsets.fromLTRB(30, 40, 40, 50),
                              icon: Icon(
                                Icons.star,
                                color: Colors.black,
                                size: 40,
                              ),
                              onPressed: () {},
                            ),
                            IconButton(
                              padding: EdgeInsets.fromLTRB(30, 40, 40, 50),
                              icon: Icon(
                                Icons.record_voice_over,
                                color: Colors.black,
                                size: 50,
                              ),
                              onPressed: () {},
                            ),
                            IconButton(
                              padding: EdgeInsets.fromLTRB(30, 40, 40, 50),
                              icon: Icon(
                                Icons.forward,
                                color: Colors.black,
                                size: 50,
                              ),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              //  SizedBox(height: 500),
              //             ),
            ],
          ),
        ),
      ),
    );
  }
}

class Words extends StatelessWidget {
  final String word;
  Words(this.word);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
      child: RaisedButton(
        onPressed: () {},
        color: Colors.black,
        textColor: Colors.white,
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: Colors.red),
          child: Text(word, style: TextStyle(fontSize: 20)),
        ),
      ),
    );
  }
}

class ListTiles extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const ListTile(
      contentPadding: EdgeInsets.all(20),
      leading: Icon(
        Icons.book,
        size: 40,
      ),
      title: Text(
        'sublime',
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Padding(
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
        child: Text(
          'of very great excellence or beauty.',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
