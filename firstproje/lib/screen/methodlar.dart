import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData.dark(),
      title: "Material App Title",
      home: MyHomePage(title: "Benim Anasayfam"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  int sayac = 0;
  final String title;

  MyHomePage({this.title}) {
    debugPrint("constructer tetiklendi");
  }

  @override
  State<StatefulWidget> createState() {
    debugPrint("createState tetiklendi");
    // TODO: implement createState
    return MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomePage> {
  MyHomePageState() {
    debugPrint("Myhomepagestate constructer tetiklendi");
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("Build methodu tetiklendi");
    // TODO: Yeni Todo
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            debugPrint("set state tetiklendi");
            sayacc();
          });
        },
        child: Icon(Icons.android),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text("Arttır",),color: Colors.blueGrey,onPressed: (){
              setState(() {
                sayacc();
              });
            },
            ),
            Text("Değeri Değiştir : ",style: Theme.of(context).textTheme.display1.copyWith(
              color: widget.sayac <= 0 ? Colors.red : Colors.green,
            ),),
            RaisedButton(
              child: Text("Azalt"),color: Colors.yellow,onPressed: (){
              _sayacAzalt();
            },
            ),
            Text(
              "${widget.sayac}",
              style: Theme.of(context).textTheme.display1,
            )
          ],
        ),
      ),
    );
  }

  void _sayacAzalt() {
    setState(() {
      widget.sayac--;
    });
  }

  void sayacc() {
    widget.sayac++;
//    for (int i = 0;i < widget.sayac;i++) {
//      if (widget.sayac == 0){
//        widget.sayac++;
//        debugPrint("Sayac degeri : + ${widget.sayac}");
//      }
//      else {
//        widget.sayac--;
//        debugPrint("Sayac degeri : + ${widget.sayac}");
//      }
//    }
  }
}

//void main() {
//  var myApp = new MyApp();
//  runApp(myApp);
//}
