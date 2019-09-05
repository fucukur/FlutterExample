import 'package:flutter/material.dart';

class FormElemanlari extends StatefulWidget {
  @override
  _FormElemanlariState createState() => _FormElemanlariState();
}

class _FormElemanlariState extends State<FormElemanlari> {
  bool checkBoxState = true;
  bool radio = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form Elemanlari"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.accessibility),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: <Widget>[
            CheckboxListTile(
                subtitle: Text("Subtitle"),
                title: Text("CheckBox Widget"),
                activeColor: Colors.green,
                value: checkBoxState,
                onChanged: (secildi) {
                  secildi = checkBoxState;
                }),
            Radio(
              materialTapTargetSize: MaterialTapTargetSize.padded,
              activeColor: Colors.red,
              value: checkBoxState,
              groupValue: null,
              onChanged: (selected) {
                selected = radio;
              },
            ),
            RadioListTile<String>(
              value: null,
              groupValue: null,
              onChanged: (radioDeger) {
                radioDeger = null;
              },
            ),
          ],
        ),
      ),
    );
  }
}
