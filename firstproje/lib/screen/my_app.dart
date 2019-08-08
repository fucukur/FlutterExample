import 'package:flutter/material.dart';

import 'content.dart';
import 'odev.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: Döndürülen method
    return MaterialApp(
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
        body: Content(),
//        body: Column(
//          children: <Widget>[
//            Text(
//              "Resim Ve button türleri",
//              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//            ),
//            IntrinsicHeight(
//              child: Row(
//                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                children: <Widget>[
//                  Expanded(
//                    child: Container(
//                      margin: EdgeInsets.all(4),
//                      color: Colors.red.shade200,
//                      child: Column(
//                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                        children: <Widget>[
//                          Image.asset("assets/image/jsapi.png"),
//                          Text("Asset Image"),
//                        ],
//                      ),
//                    ),
//                  ),
//                  Expanded(
//                    child: Container(
//                      margin: EdgeInsets.all(4),
//                      color: Colors.red.shade200,
//                      child: Column(
//                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                        children: <Widget>[
//                          Image.network(
//                              "http://bedam.baskent.edu.tr/wp-content/uploads/cocuk-1-900x300.jpg"),
//                          Text("cukur"),
//                        ],
//                      ),
//                    ),
//                  ),
//                  Expanded(
//                    child: Container(
//                      margin: EdgeInsets.all(4),
//                      color: Colors.red.shade200,
//                      child: Column(
//                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                        children: <Widget>[
//                          CircleAvatar(
//                            child: Text("icon"),
//                            backgroundColor: Colors.blue,
//                            foregroundColor: Colors.blueAccent,
//                          ),
//                          Text("cukur"),
//                        ],
//                      ),
//                    ),
//                  ),
//                ],
//              ),
//            ),
//            IntrinsicHeight(
//              child: Row(
//                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                children: <Widget>[
//                  Expanded(
//                    child: Container(
//                      margin: EdgeInsets.all(4),
//                      color: Colors.red.shade200,
//                      child: Column(
//                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                        children: <Widget>[
//                          FadeInImage.assetNetwork(
//                            placeholder: "assets/image/loading.gif",
//                            image:
//                            "http://bedam.baskent.edu.tr/wp-content/uploads/cocuk-1-900x300.jpg",
//                          ),
//                          Text("Fade in Im age"),
//                        ],
//                      ),
//                    ),
//                  ),
//                  Expanded(
//                    child: Container(
//                      margin: EdgeInsets.all(4),
//                      color: Colors.red.shade200,
//                      child: Column(
//                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                        children: <Widget>[
//                          FlutterLogo(
//                            size: 60,
//                            colors: Colors.blue,
//                          ),
//                          Text("Fade in Im age"),
//                        ],
//                      ),
//                    ),
//                  ),
//                  Expanded(
//                    child: Container(
//                      margin: EdgeInsets.all(4),
//                      color: Colors.red.shade200,
//                      child: Column(
//                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                        children: <Widget>[
//                          Expanded(
//                            child: Placeholder(
//                              color: Colors.blue,
//                              strokeWidth: 2,
//                            ),
//                          ),
//                          Text("Placeholder"),
//                        ],
//                      ),
//                    ),
//                  ),
//                ],
//              ),
//            ),
//            Container(
//              margin: EdgeInsets.symmetric(horizontal: 50),
//              child: Column(
//                crossAxisAlignment: CrossAxisAlignment.stretch,
//                children: <Widget>[
//                  RaisedButton(
//                    child: Text("Raised Button"),
//                    textColor: Colors.orange,
//                    onPressed: () => debugPrint("raisedButton"),
//                  ),
//                  RaisedButton(
//                    child: Text("furkan cukur kartal istanb"),
//                    elevation: 12,
//                    textColor: Colors.blueAccent,
//                    onPressed: () {
//                      debugPrint("normal lambda");
//                      debugPrint("ikinci satir");
//                    },
//                  ),
//                  RaisedButton(
//                      child: Text("Devam"),
//                      elevation: 12,
//                      textColor: Colors.redAccent,
//                      color: Colors.yellow,
//                      onPressed: () {
//                        fucukur();
//                      }),
//                  RaisedButton(
//                    child: Text("Devam"),
//                    elevation: 12,
//                    textColor: Colors.redAccent,
//                    color: Colors.yellow,
//                    onPressed: fucukur,
//                  ),
//                  IconButton(
//                    icon: Icon(Icons.android),
//                    onPressed: fucukur,
//                    iconSize: 32,
//                  ),
//                  FlatButton(
//                    onPressed: fucukur,
//                    child: Text(
//                      "FlatButton",
//                      style: TextStyle(fontSize: 24),
//                    ),
//                  )
//                ],
//              ),
//            ),
//          ],
//        ),
      ),
    );
  }

}
