import 'package:flutter/material.dart';

class FormIslemleri extends StatefulWidget {
  @override
  _FormIslemleriState createState() => _FormIslemleriState();
}

class _FormIslemleriState extends State<FormIslemleri> {
  String entryValue = "";
  String buttonValue = "";
  String kucukButton = "Android Tiklandı";
  String editingButton = "Düzenleme butonu tıklandı";
  FocusNode _focusNode;
  int maxLine = 1;
  TextEditingController usernameController;

  @override
  //initState uygulama çalıştığı anda ilk tetiklenen yapı
  void initState() {
    // TODO: Build den önce constructor dan sonra çalışan method
    super.initState();
    _focusNode = FocusNode();
    usernameController = TextEditingController(text: "Varsayilan");

    _focusNode.addListener(() {
      // TODO: State içerisinde yapılan değişiklik || değer değişikliğinde setState içerisine alınması gerekir. Değişiklik algılanmayacaktır.
      setState(() {
        if (_focusNode.hasFocus) {
          maxLine = 3;
        } else {
          maxLine = 1;
        }
      });
    });
  }

  @override
  void dispose() {
    // TODO: Oluşturulan nesne sayesinde focus durumu yönetilebilecek
    _focusNode.dispose();
    usernameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("İnput işlemleri"),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
            width: 24,
            height: 24,
            child: FloatingActionButton(
              onPressed: () {
                debugPrint("En Kucuk icondan gelen veri");
                FocusScope.of(context).requestFocus(_focusNode);
              },
              child: Icon(
                Icons.done,
                size: 12,
              ),
              mini: true,
            ),
          ),
          FloatingActionButton(
            //onChanged: (String yazi) => debugPrint("yazi girildi $yazi"),
            onPressed: () {
              debugPrint("Kucuk Androidden gelen veri : " + entryValue);
              FocusScope.of(context).requestFocus(_focusNode);
            },
            child: Icon(Icons.android),
            mini: true,
          ),
          FloatingActionButton(
            onPressed: () {
              debugPrint(usernameController.text.toString());
              usernameController.text = "Controller ile geldim";
              FocusScope.of(context).requestFocus(_focusNode);
            },
            child: Icon(Icons.edit_attributes),
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.done,
              autofocus: false,
              //ekran ilk açıldığında kutuya odaklanmasını kapatır
              focusNode: _focusNode,
              controller: usernameController,
              maxLines: 1,
              maxLength: 11,
              maxLengthEnforced: true,
              decoration: InputDecoration(
                hintText: "Girilecek Değer",
                labelText: "Baslik",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                icon: Icon(Icons.android),
                prefixIcon: Icon(Icons.done),
                suffixIcon: Icon(Icons.add_to_home_screen),
                filled: true,
                fillColor: Colors.lightBlueAccent,
              ),
              onChanged: (String yazi) => debugPrint("yazi girildi $yazi"),
              //Her hareketinde tetiklenir
              //onSubmitted: (String s) => debugPrint("Submitted tetiklendi $s"),  //done ile tıklandığında tetiklenir
              onSubmitted: (String yaziAta) => {
                entryValue = yaziAta,
              },
              cursorColor: Colors.redAccent,
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            color: Colors.blueGrey,
            width: double.infinity,
            height: 200,
            //height: MediaQuery.of(context).size.height * 4,
            child: Align(
              alignment: Alignment.center,
              child: Text(
                entryValue,
                style: TextStyle(
                color: Colors.blueAccent, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
