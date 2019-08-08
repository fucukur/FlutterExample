import 'package:flutter/material.dart';

class GridOrnek extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: Grid Ornek
    return GridView.builder(
      itemCount: 16,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  new BoxShadow(
                    color: Colors.redAccent,
                    offset: new Offset(10.0, 5.0),
                    blurRadius: 20,
                  ),
                ],
                border: Border.all(color: Colors.blue, width: 5,style: BorderStyle.solid),
                borderRadius: new BorderRadius.all(new Radius.circular(20)),
                color: Colors.lightGreen[100 * (index % 8)],
                gradient: LinearGradient(
                    colors: [Colors.yellow, Colors.red],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter),
                image: DecorationImage(
                  image: AssetImage("assets/image/jsapi.png"),
                  fit: BoxFit.contain,
                  alignment: Alignment.topCenter,
                ),
              ),
              margin: EdgeInsets.all(10),
              alignment: Alignment.bottomRight,
              child: Text("fucukur $index", textAlign: TextAlign.start),
            ),
          onTap: () =>
              debugPrint("Merhaba kullanici $index onTop Tetiklendi"),
          onDoubleTap: () =>
              debugPrint("Merhaba kullanici $index onDoubleTap Tetiklendi"),
          onLongPress: () =>
              debugPrint("Merhaba kullanici $index onLongPress Tetiklendi"),
          onHorizontalDragStart: (e) =>
              debugPrint("Merhaba kullanici $index onHorizontalDragStart Tetiklendi $e"),
        );
      },
    );
  }
}
/*
*
* ,GridView.count(
      crossAxisCount: 3,
      reverse: true,//sıra ile koyduğun widget ları tersten sıralıyor
      primary: true,//scroll sonunudaki dalgalanma efekti
      scrollDirection: Axis.vertical,
      padding: EdgeInsets.all(10),
      crossAxisSpacing: 20,
      mainAxisSpacing: 40,
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          color: Colors.lightGreen,
          child: Text("fucukur1", textAlign: TextAlign.center),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.lightGreen,
          child: Text("fucukur2", textAlign: TextAlign.center),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.lightGreen,
          child: Text("fucukur3", textAlign: TextAlign.center),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.lightGreen,
          child: Text("fucukur4", textAlign: TextAlign.center),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.lightGreen,
          child: Text("fucukur5", textAlign: TextAlign.center),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.lightGreen,
          child: Text("fucukur6", textAlign: TextAlign.center),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.lightGreen,
          child: Text("fucukur7", textAlign: TextAlign.center),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.lightGreen,
          child: Text("fucukur8", textAlign: TextAlign.center),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.lightGreen,
          child: Text("fucukur9", textAlign: TextAlign.center),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.lightGreen,
          child: Text("fucukur10", textAlign: TextAlign.center),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.lightGreen,
          child: Text("fucukur11", textAlign: TextAlign.center),
        ),
      ],
    );*/

/*GridView.extent(
      maxCrossAxisExtent: 50,
      reverse: false,//sıra ile koyduğun widget ları tersten sıralıyor
      primary: true,//scroll sonunudaki dalgalanma efekti
      scrollDirection: Axis.vertical,
      padding: EdgeInsets.all(10),
      crossAxisSpacing: 20,
      mainAxisSpacing: 40,
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          color: Colors.lightGreen,
          child: Text("fucukur1", textAlign: TextAlign.center),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.lightGreen,
          child: Text("fucukur2", textAlign: TextAlign.center),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.lightGreen,
          child: Text("fucukur3", textAlign: TextAlign.center),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.lightGreen,
          child: Text("fucukur4", textAlign: TextAlign.center),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.lightGreen,
          child: Text("fucukur5", textAlign: TextAlign.center),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.lightGreen,
          child: Text("fucukur6", textAlign: TextAlign.center),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.lightGreen,
          child: Text("fucukur7", textAlign: TextAlign.center),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.lightGreen,
          child: Text("fucukur8", textAlign: TextAlign.center),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.lightGreen,
          child: Text("fucukur9", textAlign: TextAlign.center),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.lightGreen,
          child: Text("fucukur10", textAlign: TextAlign.center),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.lightGreen,
          child: Text("fucukur11", textAlign: TextAlign.center),
        ),
      ],
    );*/
