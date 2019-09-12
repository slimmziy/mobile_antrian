import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'list.dart';

class AmbilAntrian extends StatefulWidget {
  AmbilAntrian({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<AmbilAntrian> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  final headerAppBarstyle = TextStyle(
      color: Colors.white,
      fontFamily: 'Bebas',
      fontWeight: FontWeight.bold,
      fontSize: 20.0,
      letterSpacing: 1);

  final headerstyle = TextStyle(
      color: Colors.pink[200],
      fontFamily: 'Bebas',
      fontWeight: FontWeight.bold,
      fontSize: 16.0,
      letterSpacing: 0.5);

  final header2style = TextStyle(
      color: Colors.black,
      fontFamily: 'Bebas',
      fontWeight: FontWeight.bold,
      fontSize: 16.0,
      letterSpacing: 0.5);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'AMBIL ANTRIAN',
                style: headerAppBarstyle,
              )),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(20.0),
                child: Column(
                  children: <Widget>[
                    Text(
                      'Pilih Tanggal',
                      style: header2style,
                    ),
                    TextField(
                      cursorColor: Colors.white,
                      onChanged: (value) {},
                      // controller: editingController,
                      decoration: InputDecoration(
                          labelStyle: TextStyle(color: Colors.white),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15.0)))),
                    ),
                  ],
                ),
              ),

              Container(
                margin: EdgeInsets.all(20.0),
                child: Column(
                  children: <Widget>[
                    Text(
                      'Pilih Jam',
                      style: header2style,
                    ),
                    TextField(
                      cursorColor: Colors.white,
                      onChanged: (value) {},
                      // controller: editingController,
                      decoration: InputDecoration(
                          labelStyle: TextStyle(color: Colors.white),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15.0)))),
                    ),
                Container(
                  margin: EdgeInsets.all(20.0),
                  child: RaisedButton(
                          color: Colors.pink[100],
                          child: Text(
                            'Ambil antrian',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.black),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ListPage()));
                          },
                        ),
                )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
