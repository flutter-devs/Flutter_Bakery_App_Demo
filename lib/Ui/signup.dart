import 'package:cookies_app/Ui/home.dart';
import 'package:cookies_app/Ui/login.dart';
import 'package:cookies_app/View_Model/profile_view_model.dart';
import 'package:cookies_app/base/base_view.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';


class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp>{

  @override
  Widget build(BuildContext context) {
    return BaseView<ProfileViewModel>(
        onModelReady: (model) {},
        builder: (context, model, build) {
          return SafeArea(
            child: Scaffold(
              body: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(left:20.0,right: 20,top: 20),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                                borderRadius:
                                BorderRadius.circular(30),
                                color: Color(0xFFF17532),
                            ),
                            child: IconButton(
                              icon: Icon(Icons.arrow_back, color: Colors.white),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:28.0),
                        child: Text("Sign up",style: TextStyle(color:  Color(0xFFC88D67),fontSize: 30,fontWeight: FontWeight.bold),),
                      ),
                      SizedBox(height: 25.0),
                      TextFormField(
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          labelText: "Name",
                          labelStyle:
                          TextStyle(color: Colors.grey, fontSize: 18),),
                        cursorColor: Color(0xFFC88D67),
                      ),
                      SizedBox(height: 15.0),

                      TextFormField(
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          labelText: "Email",
                          labelStyle:
                          TextStyle(color: Colors.grey, fontSize: 18),),
                        cursorColor: Color(0xFFC88D67),
                      ),
                      SizedBox(height: 15.0),
                      TextFormField(
                        style: TextStyle(color: Colors.black),
                        keyboardType: TextInputType.number,
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: "Password",
                          labelStyle:
                          TextStyle(color: Colors.grey, fontSize: 18),),
                        cursorColor: Color(0xFFC88D67),
                      ),
                      SizedBox(height: 15.0),
                      TextFormField(
                        style: TextStyle(color: Colors.black),
                        keyboardType: TextInputType.number,
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: "Confirm password",
                          labelStyle:
                          TextStyle(color: Colors.grey, fontSize: 18),),
                        cursorColor: Color(0xFFC88D67),
                      ),
                      SizedBox(height: 25.0),

                      Center(child: Text("Do you have an account?",style: TextStyle(color:  Color(0xFFC88D67)),)),
                      SizedBox(height: 5.0),
                      Center(
                        child: InkWell(
                          child: Text("login",style: TextStyle(color:  Color(0xFFC88D67),fontSize: 20,fontWeight: FontWeight.bold),),
                          onTap: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext
                                    context) =>
                                        Login()));
                          },
                        ),
                      ),
                      SizedBox(height: 55.0),
                      Center(
                          child: GestureDetector(
                            child: Container(
                                width: MediaQuery
                                    .of(context)
                                    .size
                                    .width - 50.0,
                                height: 50.0,
                                margin: EdgeInsets.only(top: 10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25.0),
                                    color: Color(0xFFF17532)
                                ),
                                child: Center(
                                    child: Text('Sign up',
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
                                  builder: (context) => Login()
                              ));
                            },
                          )
                      ),
                    ],
                  ),
                ),
              ),

            ),
          );
        }
    );
  }
}
