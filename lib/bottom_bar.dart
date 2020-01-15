import 'package:cookies_app/Ui/home.dart';
import 'package:cookies_app/Ui/cart.dart';
import 'package:cookies_app/Ui/profile.dart';
import 'package:cookies_app/Ui/search.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
          return BottomAppBar(
              shape: CircularNotchedRectangle(),
              notchMargin: 6.0,
              color: Colors.transparent,
              elevation: 9.0,
              clipBehavior: Clip.antiAlias,
              child: Container(
                  height: 50.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25.0),
                          topRight: Radius.circular(25.0)
                      ),
                      color: Colors.white
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            height: 50.0,
                            width: MediaQuery
                                .of(context)
                                .size
                                .width / 2 - 40.0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                IconButton(icon: Icon(Icons.home),
                                    color: Color(0xFFEF7532),
                                    onPressed: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) => MyHomePage()
                                          ));
                                    }),
                                IconButton(icon: Icon(Icons.person),
                                    color: Color(0xFFEF7532),
                                    onPressed: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) => Profile()
                                          ));
                                    })
                              ],
                            )
                        ),
                        Container(
                            height: 50.0,
                            width: MediaQuery
                                .of(context)
                                .size
                                .width / 2 - 40.0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                IconButton(icon: Icon(Icons.search),
                                    color: Color(0xFFEF7532),
                                    onPressed: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) => Search()
                                          ));
                                    }),
                                IconButton(icon: Icon(Icons.shopping_basket),
                                    color: Color(0xFFEF7532),
                                    onPressed: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) => Cart()
                                          ));
                                    }),
                              ],
                            )
                        ),
                      ]
                  )
              )
          );
        }
}
