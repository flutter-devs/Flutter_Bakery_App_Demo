import 'package:cookies_app/Ui/cart.dart';
import 'package:cookies_app/Ui/home.dart';
import 'package:cookies_app/Ui/profile.dart';
import 'package:cookies_app/Ui/search.dart';
import 'package:flutter/material.dart';

class Page extends StatefulWidget {
  @override
  _PageState createState() => _PageState();
}

class _PageState extends State<Page> {
  int _currentIndex=0;
  final tabs =[
    Home(),
    Profile(),
    Search(),
    Cart(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs [_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex:_currentIndex,
        type:BottomNavigationBarType.fixed,
        selectedItemColor: Color(0xFFEF7532),
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("Home")
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text("Account")

          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text("Search")

          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_basket),
              title: Text("Cart")

          ),
        ],
        onTap: (index){
          setState(() {
            _currentIndex= index;
          });
        },
      ),
    );
  }
}
