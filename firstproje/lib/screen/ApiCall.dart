import 'package:firstproje/models/araba.dart';
import 'package:firstproje/services/services.dart';
import 'package:flutter/material.dart';

class ApiCall extends StatefulWidget {
  @override
  _ApiCallState createState() => _ApiCallState();
}

class _ApiCallState extends State<ApiCall> {
  Post post;
  //ListTile dataList;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("APi"),
      ),
      body: FutureBuilder(
        future: dataCall(),
        builder: (BuildContext context, AsyncSnapshot<Post> snapshot) {
          if (snapshot.hasData) {
            return GestureDetector(
              onTap: _clicklist(),
              onDoubleTap: _oncelik(),
              child: Container(
                child: ListTile(
                  key: Key("dataList"),
                  title: Text(snapshot.data.title),
                  subtitle: Text(snapshot.data.body),
                  leading: CircleAvatar(
                    child: Text(snapshot.data.id.toString()),
                  ),
                ),
              ),
            );
          } else {
            Center(
              child: CircularProgressIndicator(
                backgroundColor: Colors.grey,
              ),
            );
          }
          return Container();
        },

      ),
    );

  }
  _clicklist() {
    _oncelik();
    debugPrint("data list tıklandı");
    debugPrint("");
  }
  _oncelik() {
    debugPrint("oncelik methoddan tetiklendi");
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
