import 'package:firstproje/models/araba.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiCall extends StatefulWidget {
  @override
  _ApiCallState createState() => _ApiCallState();
}

class _ApiCallState extends State<ApiCall> {
  Post post;

  Future<Post> _dataCall() async {
    var response = await http.get("https://jsonplaceholder.typicode.com/posts/1");
    if (response.statusCode == 200 || response.statusCode == 201) {
      return Post.fromJsonMap(json.decode(response.body));
    } else {
      throw Exception("Bağanltı yok ${response.statusCode})");
    }
  }

  @override
  void initState() {
    // TODO:api
    super.initState();
    _dataCall().then((okunanGonderi) {
      post = okunanGonderi;
      debugPrint("Apiden gelen başlık: " + okunanGonderi.title);
      debugPrint("Apiden gelen body: " + okunanGonderi.body);
      debugPrint("Apiden gelen id: " + okunanGonderi.id.toString());
      debugPrint("Apiden gelen user id : " + okunanGonderi.userId.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("APi"),
      ),
      body: FutureBuilder(
        future: _dataCall(),
        builder: (BuildContext context, AsyncSnapshot<Post> snapshot) {
          if (snapshot.hasData) {
            return ListTile(
              title: Text(snapshot.data.title),
              subtitle: Text(snapshot.data.body),
              leading: CircleAvatar(
                child: Text(snapshot.data.id.toString()),
              ),
            );
          } else {
            Center(
              child: CircularProgressIndicator(),
            );
          }
          return Container();
        },

      ),
    );
  }
}

//Future<List<Araba>> veriKaynaginiOku() async {
/* Future<String> jsonOku = DefaultAssetBundle.of(context).loadString("assets/data/araba.json");
    jsonOku.then((okunanJson){
      debugPrint("gelen json :"+okunanJson);
      return okunanJson;
    });*/

//  var gelenJson = await DefaultAssetBundle.of(context)
//      .loadString("models/araba");
//  debugPrint(gelenJson);
//
//  List<Araba> arabaListesi = (json.decode(gelenJson) as List).map((mapYapisi) => Araba.fromJsonMap(mapYapisi)).toList();
//
//  debugPrint("toplam araba sayısı :" + arabaListesi.length.toString());
//  for (int i = 0; i < arabaListesi.length; i++) {
//    debugPrint("Marka : " + arabaListesi[i].araba_adi.toString());
//    debugPrint("Ülkesi : " + arabaListesi[i].ulke.toString());
//  }
//  return arabaListesi;
//}
