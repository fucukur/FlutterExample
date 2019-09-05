import 'package:flutter/material.dart';

class InputForm extends StatefulWidget {
  @override
  _InputFormState createState() => _InputFormState();
}

class _InputFormState extends State<InputForm> {
  String _fullName, _password, _emailAdress;
  final formKey = GlobalKey<FormState>();
  bool otoControl = false;

  @override
  Widget build(BuildContext context) {
    return Theme(
        data: Theme.of(context).copyWith(
          accentColor: Colors.green,
          hintColor: Colors.lightBlueAccent,
          errorColor: Colors.orangeAccent,
        ),
        child: Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.save),
          ),
          appBar: AppBar(
            title: Text("İnput form işlemleri"),
          ),
          body: Padding(
            padding: EdgeInsets.all(30),
            child: Form(
              key: formKey,
              autovalidate: otoControl,
              child: ListView(
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.account_circle,
                        color: Colors.red,
                      ),
                      hintText: "Adı ve Soyadı Giriniz",
                      labelText: "Ad Soyad",
                      border: OutlineInputBorder(),
                    ),
                    validator: (String girilenData) {
                      if (girilenData.length < 5) {
                        return "Adınız yanlış";
                      } else
                        return null;
                    },
                    onSaved: (deger) {
                      _fullName = deger;
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    //obscureText: true,//Şifre gizlenmesi
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.account_circle),
                      hintText: "Şifre giriniz",
                      labelText: "Şifre",
                      border: OutlineInputBorder(),
                    ),
                    validator: (String girilenData) {
                      if(girilenData.length < 6) {
                        return "En az 6 karakter gerekli";
                      }
                      else return null;
                    },
                    onSaved: (deger){
                      _password = deger;
                    },
                    //initialValue: "furkan",//sayfa açıldığında kutuda yazılı olan metin
                  ),
                  SizedBox(
                    height: 10,
                  ),



                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    validator: _emailKontrol,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.mail),
                      hintText: "Mail Adresi Giriniz",
                      labelText: "Mail Adresi",
                      border: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(color: Colors.lightBlueAccent)),
                    ),
                    onSaved: (deger) {
                      _emailAdress = deger;
                    },
//                    validator: (String girilenData) {
//                      if (!girilenData.contains("@")){
//                        return "Geçersiz Mail";
//                      }
//                      else
//                        return null;
//                    },
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 100,
                    //MediaQuery.of(context).size.height * 4
                  ),
                  RaisedButton.icon(
                    onPressed: () {
                      _girisBilgileriOnayla();
                    },
                    icon: Icon(Icons.android),
                    label: Text("Android"),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
//CurrentState Formkey e atadığın tüm değerler
  void _girisBilgileriOnayla() {

    if (formKey.currentState.validate()) {
        formKey.currentState.save();

        debugPrint("Ad : $_fullName E-Mail: $_emailAdress Şifre : $_password");
    }
    else {
      setState(() {
        otoControl == true;
      });
    }
  }

  String _emailKontrol(String mail) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(mail))
      return 'Geçersiz mail adresi';
    else
      return null;
  }
}
