import 'package:flutter/material.dart';
import 'dart:math' as mat;

class CollapsableToolbarOrnek extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: Custom Scroll View
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          title: Text("Sliver App Bar"),
          backgroundColor: Colors.lightGreen,
          expandedHeight: 200,
          pinned: true,
          //Toolbarı yukarı sabitleme
          floating: true,
          //Aşağı scroll yaptığımızda toolbar kaybolması
          snap: false,
          //toolbarı yukarı kaydırdığında ekrana yerleşmesi
          flexibleSpace: FlexibleSpaceBar(
            background: Image.asset(
              "assets/image/jsapi.png",
              fit: BoxFit.cover,
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.all(4),
          sliver: SliverList(
            delegate: SliverChildListDelegate(
              staticValues(),
            ),
          ),
        ),

        //Grid View  Statik liste
        SliverGrid(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),//Satırda oömak istediğin kadar yaz
          delegate: SliverChildListDelegate(staticValues()),
        ),
      //GridView Dinamik liste
        SliverGrid(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),//Eleman Sayısı
          delegate: SliverChildBuilderDelegate(_dinamicValue, childCount: 6),
        ),

        //GridView Dinamik liste max genişlik verdiğimi tür
        SliverGrid(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 200),
          delegate: SliverChildBuilderDelegate(_dinamicValue, childCount: 6),
        ),

        SliverPadding(
          padding: EdgeInsets.all(10),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(_dinamicValue,
                childCount: 6), //Oluşacak eleman sayısı kadar parametre ile bildiriyoruz
          ),
        ),
//        SliverPadding(
//          padding: EdgeInsets.all(15),
//          sliver: SliverFixedExtentList(delegate: null, itemExtent: null),
//        ),
        SliverFixedExtentList(
          itemExtent: 150,
          delegate: SliverChildListDelegate(
            staticValues(),
          ),
        ),
        SliverFixedExtentList(
          delegate: SliverChildBuilderDelegate(_dinamicValue, childCount: 10),
          itemExtent: 50,
        ),
      ],
    );
  }
  List<Widget> staticValues() {
    return [
      Container(
        height: 100,
        child: Text(
          "Sabit Eleman 1",
          style: TextStyle(fontSize: 16),
          textAlign: TextAlign.center,
        ),
        alignment: Alignment.center,
        color: Colors.amberAccent,
      ),
      Container(
        height: 100,
        child: Text(
          "Sabit Eleman 2",
          style: TextStyle(fontSize: 16),
          textAlign: TextAlign.center,
        ),
        alignment: Alignment.center,
        color: Colors.orangeAccent,
      ),
      Container(
        height: 100,
        child: Text(
          "Sabit Eleman 3",
          style: TextStyle(fontSize: 16),
          textAlign: TextAlign.center,
        ),
        alignment: Alignment.center,
        color: Colors.tealAccent,
      ),
      Container(
        height: 100,
        child: Text(
          "Sabit Eleman 4",
          style: TextStyle(fontSize: 16),
          textAlign: TextAlign.center,
        ),
        alignment: Alignment.center,
        color: Colors.purpleAccent,
      ),
      Container(
        height: 100,
        child: Text(
          "Sabit Eleman 5",
          style: TextStyle(fontSize: 16),
          textAlign: TextAlign.center,
        ),
        alignment: Alignment.center,
        color: Colors.blueAccent,
      ),
      Container(
        height: 100,
        child: Text(
          "Sabit Eleman 6",
          style: TextStyle(fontSize: 16),
          textAlign: TextAlign.center,
        ),
        alignment: Alignment.center,
        color: Colors.blueGrey,
      ),
      Container(
        height: 100,
        child: Text(
          "Sabit Eleman 4",
          style: TextStyle(fontSize: 16),
          textAlign: TextAlign.center,
        ),
        alignment: Alignment.center,
        color: Colors.purpleAccent,
      ),
      Container(
        height: 100,
        child: Text(
          "Sabit Eleman 5",
          style: TextStyle(fontSize: 16),
          textAlign: TextAlign.center,
        ),
        alignment: Alignment.center,
        color: Colors.blueAccent,
      ),
      Container(
        height: 100,
        child: Text(
          "Sabit Eleman 6",
          style: TextStyle(fontSize: 16),
          textAlign: TextAlign.center,
        ),
        alignment: Alignment.center,
        color: Colors.blueGrey,
      ),
      Container(
        height: 100,
        child: Text(
          "Sabit Eleman 4",
          style: TextStyle(fontSize: 16),
          textAlign: TextAlign.center,
        ),
        alignment: Alignment.center,
        color: Colors.purpleAccent,
      ),
      Container(
        height: 100,
        child: Text(
          "Sabit Eleman 5",
          style: TextStyle(fontSize: 16),
          textAlign: TextAlign.center,
        ),
        alignment: Alignment.center,
        color: Colors.blueAccent,
      ),
      Container(
        height: 100,
        child: Text(
          "Sabit Eleman 6",
          style: TextStyle(fontSize: 16),
          textAlign: TextAlign.center,
        ),
        alignment: Alignment.center,
        color: Colors.blueGrey,
      ),
    ];
  }

  Widget _dinamicValue(BuildContext context, int index) {
    return Container(
      color: _ColorGenerate(),
      height: 100,
      child: Text(
        "Dinamik değer ${index + 1}",
        style: TextStyle(fontSize: 16),
        textAlign: TextAlign.center,
      ),
    );
  }

  Color _ColorGenerate() {
    return Color.fromARGB(
        mat.Random().nextInt(255),
        mat.Random().nextInt(255),
        mat.Random().nextInt(255),
        mat.Random().nextInt(
            255)); //255 e kadar olan renk aralığın içine farklı renkler atayarak çalıştıracak
  }
}
