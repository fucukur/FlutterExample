import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class EtkinListe extends StatelessWidget {
  List<Student> allStudent = [];

  @override
  Widget build(BuildContext context) {
    studentGenerate();
    // TODO: Etkin Liste Örnek
    return ListView.separated(
      itemCount: 20,
      itemBuilder: (context, index) => Card(
        elevation: 5,
        color: index % 2 == 0 ? Colors.lightGreen : Colors.blueGrey,
        child: ListTile(
          leading: Icon(Icons.android),
          title: Text(allStudent[index]._adi),
          subtitle: Text(allStudent[index]._soyadi),
          trailing: Icon(Icons.android),
          onTap: () {
            shortToastMessage(index, false);
          },
          onLongPress: () {
            longToastMessage(index, true);

            alertDialog(context,index);
          },
        ),
      ),
      separatorBuilder: (BuildContext context, int index) {
        if (index % 4 == 0 && index != 0) {
          return Container(
            height: 2,
            color: Colors.blueGrey,
            margin: EdgeInsets.all(40),
          );
        } else {
          return Container();
        }
      },
    );
  }

  void studentGenerate() {
    allStudent = List.generate(
        50,
        (data) => Student("Ogrenci Adi : $data", "Ogrenci Aciklamasi: $data",
            data % 2 == 0 ? true : false));
  }

  void shortToastMessage(int index, bool message) {
    Fluttertoast.showToast(
        msg: message
            ? " uzun basıldı : " + allStudent[index].toString()
            : "Tek tıklama " + allStudent[index].toString(),
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIos: 1,
        backgroundColor: Colors.blue,
        textColor: Colors.lightGreen,
        fontSize: 16.0);
  }

  void longToastMessage(int index, bool longMessage) {
    Fluttertoast.showToast(
        msg: allStudent[index].toString(),
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIos: 1,
        backgroundColor: Colors.blue,
        textColor: Colors.lightGreen,
        fontSize: 16.0);
  }

  void alertDialog(BuildContext ctx, int index) {
    showDialog(
      context: ctx,
      barrierDismissible: true, // Menunun bos ekrana tıkladığı anda oluşturulacak dialogu kapatma/açma
      builder: (ctx){
        return AlertDialog(
          backgroundColor: Colors.blueGrey,
          title: Text("Dialog Baslik"),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text("Alert Dialog content içerik \n diger satir \n diger satirAlert Dialog content içerik",style: TextStyle(color: Colors.redAccent),),
                Text("Öğrenci Adı : ${allStudent[index]._adi.toString()}",style: TextStyle(color: Colors.redAccent),),
                Text("Öğrenci Adı : ${allStudent[index]._soyadi.toString()}",style: TextStyle(color: Colors.redAccent),),
              ],
            ),
          ),
          actions: <Widget>[
            ButtonBar(
              children: <Widget>[
                FlatButton(
                  child: Text("Tamamdır"),
                  color: Colors.green,
                  onPressed: (){},
                ),
                RaisedButton(
                  child: Text("Kapa"),
                  color: Colors.lightGreen,
                  onPressed: (){
                    Navigator.of(ctx).pop();//Pop up sayfasını kapatma
                  },
                )
              ],
            ),

          ],
        );
      }

    );
  }
}

class Student {
  String _adi;
  String _soyadi;
  bool _cinsiyet;

  Student(this._adi, this._soyadi, this._cinsiyet);

  @override
  String toString() {
    // TODO: implement toString
    return "Ogrenci adi : $_adi ogrenci numarasi $_soyadi";
  }
}

class _Teacher {
  String _tName;
  String _tSurname;
  String _tTitle;
  String _tTask;
}

/*
* import 'package:flutter/material.dart';

class EtkinListe extends StatelessWidget {
  List<Student> allStudent = [];

  @override
  Widget build(BuildContext context) {
    studentGenerate();
    // TODO: ListView.builder
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) => Card(

        elevation: 5,
        color: index%2 == 0 ? Colors.lightGreen : Colors.blueGrey,
        child: ListTile(
          leading: Icon(Icons.android),
          title: Text(allStudent[index]._adi),
          subtitle: Text(allStudent[index]._soyadi),
          trailing: Icon(Icons.android),
        ),
      ),
    );
  }

  void studentGenerate() {
    allStudent = List.generate(
        50,
        (data) => Student("Ogrenci Adi : $data", "Ogrenci Aciklamasi: $data",
            data % 2 == 0 ? true : false));
  }
}

class Student {
  String _adi;
  String _soyadi;
  bool _cinsiyet;

  Student(this._adi, this._soyadi, this._cinsiyet);
}

* */
