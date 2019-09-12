import 'package:flutter/material.dart';

import 'home.dart';
import 'list.dart';
import 'account.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return MyAppState();
  }
}

class MyAppState extends State<MyApp>{
  int _selectedPage = 0;
  final _pageOptions = [
    HomePage(),
    ListPage(),
    AccountPage(),

  ];
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.pink,
        fontFamily: 'Lato',
      ),
      home: Scaffold(

        body: _pageOptions[_selectedPage],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedPage,
          onTap: (int index){
            setState(() {
             _selectedPage = index; 
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Beranda')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              title: Text('List Antrian')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Akun')
            )
          ],
        ),
      ),
    );
  }
}