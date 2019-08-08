import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.orange,
      accentColor: Colors.orangeAccent,
    ),
    home: new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: Text("Flutter"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint("button click");
        },
        backgroundColor: Colors.cyan,
        child: Icon(Icons.android, color: Color.fromRGBO(10, 20, 30, 50)),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(2),
                color: Colors.red[100],
                child: Text(
                  "F",
                  style: TextStyle(fontSize: 24),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(2),
                color: Colors.red[300],
                child: Text(
                  "U",
                  style: TextStyle(fontSize: 24),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(2),
                color: Colors.red[500],
                child: Text(
                  "R",
                  style: TextStyle(fontSize: 24),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(2),
                color: Colors.red[700],
                child: Text(
                  "K",
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(2),
            color: Colors.red[300],
            child: Text(
              "U",
              style: TextStyle(fontSize: 24),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(2),
            color: Colors.red[500],
            child: Text(
              "R",
              style: TextStyle(fontSize: 24),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(2),
            color: Colors.red[700],
            child: Text(
              "K",
              style: TextStyle(fontSize: 24),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(2),
            color: Colors.red[700],
            child: Text(
              "A",
              style: TextStyle(fontSize: 24),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(2),
            color: Colors.red[700],
            child: Text(
              "N",
              style: TextStyle(fontSize: 24),
            ),
          ),
        ],
      ),
    ),
  ));
}
