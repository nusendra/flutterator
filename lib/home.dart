import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  @override
  State createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {
  var angka1 = 0, angka2 = 0, hasil = 0;
  final TextEditingController t1 = new TextEditingController(text: "0");
  final TextEditingController t2 = new TextEditingController(text: "0");

  void tambah() {
    setState(() {
      angka1 = int.parse(t1.text);
      angka2 = int.parse(t2.text);
      hasil = angka1 + angka2;
    });
  }

  void kurang() {
    setState(() {
      angka1 = int.parse(t1.text);
      angka2 = int.parse(t2.text);
      hasil = angka1 - angka2;
    });
  }

  void kali() {
    setState(() {
      angka1 = int.parse(t1.text);
      angka2 = int.parse(t2.text);
      hasil = angka1 * angka2;
    });
  }

  void bagi() {
    setState(() {
      angka1 = int.parse(t1.text);
      angka2 = int.parse(t2.text);
      hasil = angka1 ~/ angka2;
    });
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Flutterator"),
      ),
      body: new Container(
        padding: const EdgeInsets.all(20.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text("Hasil : $hasil",
            style: new TextStyle(
              fontSize: 30.0
            ),),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                hintText: "Enter number 1"
              ),
              controller: t1,
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                hintText: "Enter number 2"
              ),
              controller: t2,
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 20.0)
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new RaisedButton(
                  child: new Text("+"),
                  color: Colors.amberAccent,
                  onPressed: tambah,
                ),
                new RaisedButton(
                  child: new Text("-"),
                  color: Colors.blueAccent,
                  onPressed: kurang,
                )
              ],
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 20.0)
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new RaisedButton(
                  child: new Text("*"),
                  color: Colors.deepOrangeAccent,
                  onPressed: kali,
                ),
                new RaisedButton(
                  child: new Text("/"),
                  color: Colors.yellowAccent,
                  onPressed: bagi,
                )
              ],
            )
          ],
        )
      )
    );
  }
}