import 'package:cookies_app/Ui/home.dart';
import 'package:cookies_app/View_Model/profile_view_model.dart';
import 'package:cookies_app/base/base_view.dart';
import 'package:cookies_app/bottom_bar.dart';
import 'package:cookies_app/main.dart';
import 'package:flutter/material.dart';


class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile>{

  @override
  Widget build(BuildContext context) {
    return BaseView<ProfileViewModel>(
        onModelReady: (model) {},
        builder: (context, model, build) {
          return Scaffold(
            appBar: AppBar(
              bottom: PreferredSize(child: Padding(
                padding: const EdgeInsets.only(left: 18.0, right: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("My Profile", style: TextStyle(
                        fontSize: 25, fontWeight: FontWeight.bold),),
                    Container(
                      height: 45.0,
                      width: 40.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          image: DecorationImage(
                              image: AssetImage('assets/man.jpg'),
                              fit: BoxFit.cover
                          )
                      ),
                    )
                  ],
                ),
              ), preferredSize: Size.fromHeight(30.0)),
              backgroundColor: Colors.white,
              elevation: 0.0,
              centerTitle: true,
              leading: IconButton(
                icon: Icon(Icons.arrow_back, color: Color(0xFF545D68)),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => MyApp()
                  ));
                },
              ),
              title:
              Text('My account',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Color(0xFF545D68))),

              actions: <Widget>[
                IconButton(
                  icon: Icon(
                      Icons.notifications_none, color: Color(0xFFC88D67)),
                  onPressed: () {},
                ),
                /*Row(
            mainAxisAlignment:MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text("My Profile"),
              Container(
                height: 45.0,
                width: 40.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    image: DecorationImage(
                        image: AssetImage('assets/man.jpg'),
                        fit: BoxFit.cover
                    )
                ),
              )
            ],
          ),*/
              ],
            ),
            body: Container(
              color: Color(0xFFFBFAF8),
              child: ListView(
                padding: EdgeInsets.only(left: 20.0, right: 20),
                children: <Widget>[
                  SizedBox(height: 15.0),
                  TextFormField(
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      labelText: "Name",
                      labelStyle:
                      TextStyle(color: Colors.grey, fontSize: 18),),
                  ),
                  SizedBox(height: 15.0),
                  TextFormField(
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      labelText: "Email",
                      labelStyle:
                      TextStyle(color: Colors.grey, fontSize: 18),),
                  ),
                  SizedBox(height: 15.0),
                  TextFormField(
                    style: TextStyle(color: Colors.black),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: "Password",
                      labelStyle:
                      TextStyle(color: Colors.grey, fontSize: 18),),
                  ),
                  SizedBox(height: 15.0),
                  TextFormField(
                    style: TextStyle(color: Colors.black),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: "Confirm Password",
                      labelStyle:
                      TextStyle(color: Colors.grey, fontSize: 18),),
                  ),
                  SizedBox(height: 15.0),
                  TextFormField(
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      labelText: "Street Address",
                      labelStyle:
                      TextStyle(color: Colors.grey, fontSize: 18),),
                  ),
                  SizedBox(height: 15.0),
                  TextFormField(
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      labelText: "City",
                      labelStyle:
                      TextStyle(color: Colors.grey, fontSize: 18),),
                  ),
                  SizedBox(height: 15.0),
                  TextFormField(
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      labelText: "State/Province",
                      labelStyle:
                      TextStyle(color: Colors.grey, fontSize: 18),),
                  ),
                  SizedBox(height: 15.0),
                  TextFormField(
                    style: TextStyle(color: Colors.black),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: "Postal Code",
                      labelStyle:
                      TextStyle(color: Colors.grey, fontSize: 18),),
                  ),
                  SizedBox(height: 15.0),
                  TextFormField(
                    style: TextStyle(color: Colors.black),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: "Phone",
                      labelStyle:
                      TextStyle(color: Colors.grey, fontSize: 18),
                    ),
                  ),
                  SizedBox(height: 15.0),
                  Center(
                      child: GestureDetector(
                        child: Container(
                            width: MediaQuery
                                .of(context)
                                .size
                                .width - 50.0,
                            height: 50.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25.0),
                                color: Color(0xFFF17532)
                            ),
                            child: Center(
                                child: Text('Edit Profile',
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white
                                  ),
                                )
                            )
                        ),
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => MyHomePage()
                          ));
                        },
                      )
                  ),
                  SizedBox(height: 35.0),
                ],
              ),
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
