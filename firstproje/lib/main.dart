import 'package:firstproje/screen/ApiCall.dart';
import 'package:firstproje/screen/FormIslemleri.dart';
import 'package:firstproje/screen/Liste_dersleri.dart';
import 'package:firstproje/screen/custom_scroll_cview.dart';
import 'package:firstproje/screen/etkin_liste.dart';
import 'package:firstproje/screen/form_elemanlari.dart';
import 'package:firstproje/screen/grid_view.dart';
import 'package:firstproje/screen/input_form.dart';
import 'package:firstproje/screen/navigation.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Liste Örnekler",

    initialRoute: "/ApiCall",

    routes: {
      '/'       : (context) => Navigation(),
      '/Sayfa3' : (context) => Sayfa3(),
      '/formIslemleri' : (context) => FormIslemleri(),
      '/InputForm' : (context) => InputForm(),
      '/ApiCall' : (context) => ApiCall(),
      '/FormElemanlari' : (context) => FormElemanlari(),
      '/ListPage' : (context) => ListPage(),
      '/Sayfa4' : (context) => Sayfa4(),
      '/Sayfa5' : (context) => Sayfa5(),
      '/Sayfa2/Sayfa3/Sayfa4/Sayfa5' : (context) => Sayfa5(),
      '/Sayfa2/Sayfa3/Sayfa4' : (context) => Sayfa4(),
      '/Sayfa2/Sayfa3' : (context) => Sayfa3(),
      '/Sayfa2' : (context) => Sayfa2("Fucukur"),
    },

    onGenerateRoute: (RouteSettings settings) {
      debugPrint("onGenerate tetiklendi");
      List<String> pathElemanlari = settings.name.split("/"); //detay/$index

      if(pathElemanlari[1] == 'detay') {
        return MaterialPageRoute(builder: (BuildContext context) => ListDetail(int.parse(pathElemanlari[2])));
      }


//      if (pathElemanlari[0] == 'urun') {
//        if (pathElemanlari[2] == 'detay') {
//          // Yeni sayfa generate ederken sayfanın yolunda farklı kelimeler var ise if ile kontrol edilerek açılacak sayfaya kadar kontrol edilmeli
//        }
//      }

      return null;
    },

    onUnknownRoute: (RouteSettings settings) => MaterialPageRoute(builder: (BuildContext context) => BozukSayfa()),

    theme: ThemeData(
      brightness: Brightness.dark,
    ),
//    home: Scaffold(
//      //appBar: AppBar(title: Text("List ders"),),
//      //body: Navigation(),
//    ),
  ));
}

