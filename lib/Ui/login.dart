import 'package:cookies_app/Ui/home.dart';
import 'package:cookies_app/Ui/signup.dart';
import 'package:cookies_app/View_Model/profile_view_model.dart';
import 'package:cookies_app/base/base_view.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';


class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login>{

  @override
  Widget build(BuildContext context) {
    return BaseView<ProfileViewModel>(
        onModelReady: (model) {},
        builder: (context, model, build) {
          return SafeArea(
            child: Scaffold(
              body: Container(
                margin: EdgeInsets.only(top: 100),
                height: MediaQuery
                    .of(context)
                    .size
                    .height,
                child: ListView(
                  padding: EdgeInsets.only(left: 20.0, right: 20),
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top:28.0),
                      child: Text("Log in",style: TextStyle(color:  Color(0xFFC88D67),fontSize: 30,fontWeight: FontWeight.bold),),
                    ),
                    SizedBox(height: 25.0),
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
                    SizedBox(height: 25.0),

                    Center(child: Text("Don't have an account?",style: TextStyle(color:  Color(0xFFC88D67)),)),
                    SizedBox(height: 5.0),
                    Center(
                      child: InkWell(
                        child: Text("create a new account",style: TextStyle(color:  Color(0xFFC88D67),fontSize: 20),),
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => SignUp()
                          ));
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
                              margin: EdgeInsets.only(top: 60),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25.0),
                                  color: Color(0xFFF17532)
                              ),
                              child: Center(
                                  child: Text('Login',
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

            ),
          );
        }
    );
  }
}
