import 'package:flutter/material.dart';

class ListeDersleri extends StatelessWidget {
  //List Data
  List<int> listeNumarasi = List.generate(300, (index) => index);
  List<String> altBaslik =
      List.generate(300, (index) => "Alt başlık liste elemanları $index");

  @override
  Widget build(BuildContext context) {
    // TODO: Liste Dersleri Body
    return ListView(
        children: listeNumarasi
            .map(
              (anlikEleman) => Column(
                children: <Widget>[
                  Container(
                    child: Card(
                      color: Colors.lightGreen,
                      margin: EdgeInsets.only(
                          right: 20, left: 20, bottom: 5, top: 10),
                      elevation: 15,
                      child: Column(
                        children: <Widget>[
                          ListTile(
                            leading: CircleAvatar(
                              child: Icon(
                                Icons.android,
                              ),
                            ),
                            title: Text("ListeBaşlığı $anlikEleman"),
                            subtitle: Text(altBaslik[anlikEleman]),
                            trailing: Icon(Icons.android),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    color: Colors.black,
                    height: 2,
                    indent: 20,
                    endIndent: 20,
                  ),
                ],
              ),
            )
            .toList(),);
  }
}
