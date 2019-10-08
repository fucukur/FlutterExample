import 'package:firstproje/models/araba.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;


Future<Post> dataCall() async {
  Post pst;
  var response = await http.get("https://jsonplaceholder.typicode.com/posts/1");
  if (response.statusCode == 200 || response.statusCode == 201) {
    return Post.fromJsonMap(json.decode(response.body));
  } else {
    throw Exception("Bağanltı yok ${response.statusCode})");
  }

}













//  @override
//  void initState() {
//    super.initState();
//    dataCall().then((okunanGonderi) {
//      post = okunanGonderi;
//      debugPrint("Apiden gelen başlık: " + okunanGonderi.title);
//      debugPrint("Apiden gelen body: " + okunanGonderi.body);
//      debugPrint("Apiden gelen id: " + okunanGonderi.id.toString());
//      debugPrint("Apiden gelen user id : " + okunanGonderi.userId.toString());
//    });
//  }
