import 'package:cookies_app/View_Model/home_view_model.dart';
import 'package:cookies_app/base/base_view.dart';
import 'package:cookies_app/Ui/bottom_bar.dart';
import 'package:cookies_app/Ui/cookie_cake.dart';
import 'package:cookies_app/Ui/cookie_icecream.dart';
import 'package:cookies_app/Ui/cookie_page.dart';
import 'package:flutter/material.dart';


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return BaseView<HomeViewModel>(
        onModelReady: (model) {},
        builder: (context, model, build) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 0.0,
              centerTitle: true,
              leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xFF545D68)),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
              title: Text('Home',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Color(0xFF545D68))),
              actions: <Widget>[
                IconButton(
                  icon: Icon(
                      Icons.notifications_none, color: Color(0xFFC88D67)),
                  onPressed: () {},
                ),
              ],
            ),
            body: ListView(
              padding: EdgeInsets.only(left: 20.0),
              children: <Widget>[
                SizedBox(height: 15.0),
                Text('Categories',
                    style: TextStyle(
                        fontSize: 42.0,
                        fontWeight: FontWeight.bold)),
                SizedBox(height: 15.0),
                TabBar(
                    controller: _tabController,
                    indicatorColor: Colors.transparent,
                    labelColor: Color(0xFFC88D67),
                    isScrollable: true,
                    labelPadding: EdgeInsets.only(right: 45.0),
                    unselectedLabelColor: Color(0xFFCDCDCD),
                    tabs: [
                      Tab(
                        child: Text('Cookies',
                            style: TextStyle(
                              fontSize: 21.0,
                            )),
                      ),
                      Tab(
                        child: Text('Cookie cake',
                            style: TextStyle(
                              fontSize: 21.0,
                            )),
                      ),
                      Tab(
                        child: Text('Ice cream',
                            style: TextStyle(
                              fontSize: 21.0,
                            )),
                      )
                    ]),
                Container(
                    height: MediaQuery
                        .of(context)
                        .size
                        .height - 50.0,
                    width: double.infinity,
                    child: TabBarView(
                        controller: _tabController,
                        children: [
                          CookiePage(),
                          CookieCake(),
                          CookieIceCream(),
                        ]
                    )
                )
              ],
            ),
            floatingActionButton: FloatingActionButton(onPressed: () {},
              backgroundColor: Color(0xFFF17532),
              child: Icon(Icons.fastfood),
            ),
            floatingActionButtonLocation: FloatingActionButtonLocation
                .centerDocked,
            bottomNavigationBar: BottomBar(),
          );
        }
    );
  }
}
