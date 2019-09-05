import 'package:firstproje/screen/input_form.dart';
import 'package:flutter/material.dart';

import 'ApiCall.dart';
import 'FormIslemleri.dart';
import 'form_elemanlari.dart';

class Navigation extends StatelessWidget {
  String title = "Parametre";

  @override
  Widget build(BuildContext context) {
    // TODO: Navigation
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Navigation Title",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text("2 ye git Sayfaya Git"),
                color: Colors.blueGrey,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Sayfa2(title),
                    ),
                  );
                },
              ),
              RaisedButton(
                child: Text("3 e git "),
                color: Colors.blueGrey,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Sayfa3(),
                    ),
                  );
                },
              ),
              RaisedButton(
                child: Text("Api"),
                color: Colors.blueGrey,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ApiCall(),
                    ),
                  );
                },
              ),
              RaisedButton(
                child: Text("InputForm a git"),
                color: Colors.blueGrey,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => InputForm(),
                    ),
                  );
                },
              ),
              RaisedButton(
                child: Text("Form Elemanlarına git"),
                color: Colors.blueGrey,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FormElemanlari(),
                    ),
                  );
                },
              ),
              RaisedButton(
                child: Text("Form İşlemlerine Git "),
                color: Colors.blueGrey,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FormIslemleri(),
                    ),
                  );
                },
              ),
              RaisedButton(
                child: Text("4 e git "),
                color: Colors.amberAccent,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Sayfa4(),
                    ),
                  );
                },
              ),
              RaisedButton(
                child: Text("5 e git geri gelme"),
                color: Colors.amberAccent,
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Sayfa5()));
                },
              ),
              RaisedButton(
                child: Text("İsimlendirme ile rota"),
                color: Colors.amberAccent,
                onPressed: () {
                  Navigator.pushReplacementNamed(context, "/Sayfa3");
                },
              ),
              RaisedButton(
                child: Text("bozuk rota"),
                color: Colors.redAccent,
                onPressed: () {
                  Navigator.pushReplacementNamed(context, "/Sadsyfa3");
                },
              ),
              RaisedButton(
                child: Text("Parametre ile rota"),
                color: Colors.amberAccent,
                onPressed: () {
                  Navigator.pushReplacementNamed(context, "/Sayfa2");
                },
              ),
              RaisedButton(
                child: Text("Liste Sayfasına Git"),
                color: Colors.amberAccent,
                onPressed: () {
                  Navigator.pushReplacementNamed(context, "/ListPage");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Liste Sayfası",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, "/detay/$index");
              },
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(child: Text("Liste Elemanı $index")),
                ),
              ),
            );
          },
          itemCount: 60,
        ));
  }
}

class ListDetail extends StatelessWidget {
  int clickedIndex = 1;

  ListDetail(this.clickedIndex);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Liste Detay Sayfası  $clickedIndex"
          "",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Text("Liste elemanı $clickedIndex"),
        ),
      ),
    );
  }
}

class Sayfa1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int pageNumber = 1;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Navigation Title",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(pageNumber.toString()),
            RaisedButton(
              child: Text("Sayfaya Giiit"),
              color: Colors.blueGrey,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Sayfa1(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Sayfa2 extends StatelessWidget {
  String responseTitle;

  Sayfa2(this.responseTitle);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          responseTitle,
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(responseTitle),
            RaisedButton(
              child: Text("Sayfaya Git"),
              color: Colors.blueGrey,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class Sayfa3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "3. Sayfa",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("3. Sayfa"),
            RaisedButton(
              child: Text("Geri gel"),
              color: Colors.orangeAccent,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            RaisedButton(
              child: Text("D Sayfasına Git ve Gelirken Veri Getir"),
              color: Colors.pink,
              onPressed: () {
                Navigator.push<bool>(
                  context,
                  MaterialPageRoute(builder: (context) => Sayfa4()),
                ).then((responseValue) {
                  debugPrint("Pop işleminden gelen değer $responseValue");
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Sayfa4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        debugPrint("onWillPop calisti");
        Navigator.pop(context, false);

        return Future.value(true);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "4. Sayfa",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("4. Sayfa"),
              RaisedButton(
                child: Text("Sayfaya Giiit"),
                color: Colors.blueGrey,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Sayfa3(),
                    ),
                  );
                },
              ),
              RaisedButton(
                child: Text("Geri Dön"),
                color: Colors.orangeAccent,
                onPressed: () {
                  Navigator.pop(context,
                      true); //admin sayfası true kullanıcı sayfası false
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Sayfa5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int pageNumber = 1;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sayfa 5",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(pageNumber.toString()),
            RaisedButton(
              child: Text("Anasayfaya git"),
              color: Colors.blueGrey,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Navigation(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Sayfa6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int pageNumber = 1;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "e",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(pageNumber.toString()),
            RaisedButton(
              child: Text("Anasayfaya git"),
              color: Colors.blueGrey,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Navigation(),
                  ),
                );
              },
            ),
            RaisedButton(
              child: Text("Anasayfaya git"),
              color: Colors.blueGrey,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Sayfa7(),
                  ),
                );
              },
            ),
            RaisedButton(
              child: Text("F Sayfasına git"),
              color: Colors.blueGrey,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Navigation(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Sayfa7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int pageNumber = 1;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "F",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(pageNumber.toString()),
            RaisedButton(
              child: Text("Anasayfaya git"),
              color: Colors.blueGrey,
              onPressed: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => Sayfa6()));
              },
            ),
          ],
        ),
      ),
    );
  }
}

class BozukSayfa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "404 Not Found",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Aradığınız sayfa bulunamadı. "),
            RaisedButton(
              child: Text("Anasayfaya dönmek için tıklayın"),
              color: Colors.blueGrey,
              onPressed: () {
                Navigator.pushReplacementNamed(context, "/");
              },
            ),
          ],
        ),
      ),
    );
  }
}
