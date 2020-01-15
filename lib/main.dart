
import 'package:cookies_app/View_Model/home_view_model.dart';
import 'package:cookies_app/View_Model/login_view_model.dart';
import 'package:cookies_app/View_Model/profile_view_model.dart';
import 'package:cookies_app/locator.dart';
import 'package:cookies_app/prefer.dart';
import 'package:cookies_app/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

/*
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}
*/

void main() {
  Prefs.init();
  setLocator();
  runApp(MultiProvider(child: MyApp(), providers: [
    ChangeNotifierProvider<HomeViewModel>(
      builder: (_) => HomeViewModel(),
    ),
  ],));}

class MyApp extends StatefulWidget{
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Locale locale;
  bool localeLoaded = false;

  @override
  void initState() {
    super.initState();
    print('initState()');

    //MyApp.setLocale(context, locale);
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.grey[400],
//        statusBarColor: Styles.blueColor,
        statusBarIconBrightness:
        Brightness.light //or set color with: Color(0xFF0000FF)
    ));
    return ChangeNotifierProvider<UserLoginViewModel>(
      builder: (_) => UserLoginViewModel(),
      child: Center(
        child: MaterialApp(
          initialRoute: '/',
          debugShowCheckedModeBanner: false,
          onGenerateRoute: Routes.onGenerateRoute,

          theme: ThemeData(
            primaryColor:  Color(0xFFC88D67),

            fontFamily: 'FA',

          ),
        ),
      ),
    );
  }
}
