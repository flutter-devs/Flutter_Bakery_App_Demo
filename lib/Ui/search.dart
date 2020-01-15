import 'package:cookies_app/View_Model/search_view_model.dart';
import 'package:cookies_app/base/base_view.dart';
import 'package:cookies_app/Ui/bottom_bar.dart';
import 'package:cookies_app/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geolocator/geolocator.dart';


class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search>{
  final Geolocator geolocator = Geolocator()..forceAndroidLocationManager;

  Position _currentPosition;
  String _currentAddress;

  @override
  Widget build(BuildContext context) {
    return BaseView<SearchViewModel>(
        onModelReady: (model) {},
        builder: (context, model, build) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 0.0,
              centerTitle: true,
              bottom: PreferredSize(child: Padding(
                padding: const EdgeInsets.only(left: 28.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text("Find My location", style: TextStyle(
                        fontSize: 28, fontWeight: FontWeight.bold),),
                  ],
                ),
              ), preferredSize: Size.fromHeight(30.0)),
              leading: IconButton(
                icon: Icon(Icons.arrow_back, color: Color(0xFF545D68)),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => MyApp()
                  ));
                },
              ),
              title:
              Text('Location',
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
            body: Container(
              color: Color(0xFFFBFAF8),
              child: ListView(
                padding: EdgeInsets.only(left: 20.0, right: 20),
                children: <Widget>[
                  SizedBox(height: 15.0),
                  /*TextFormField(
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFF473D3A),
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                  hintText: "Location",
                  suffixIcon: IconButton(icon: Icon(Icons.search), onPressed:(){ _getCurrentLocation();})
            ),
              cursorColor: Colors.black,
            ),*/
                  InkWell(
                      onTap: () {
                        _getCurrentLocation();
                      },
                      child: Container(
                          height: 50.0,
                          width: 225.0,
                          decoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.circular(25.0),
                              color: Colors.white70),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0, right: 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text('Get Location',
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        color: Colors.grey)),
                                Icon(Icons.search),
                              ],
                            ),
                          ))),
                  SizedBox(height: 20,),
                  Center(
                    child: Column(
                      children: <Widget>[
                        Icon(Icons.location_on),
                        if (_currentPosition != null) Text(
                          _currentAddress, style: TextStyle(fontSize: 18),),

                      ],
                    ),
                  )

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

  _getCurrentLocation() {
    geolocator
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.best)
        .then((Position position) {
      setState(() {
        _currentPosition = position;
      });

      _getAddressFromLatLng();
    }).catchError((e) {
      print(e);
    });
  }

  _getAddressFromLatLng() async {
    try {
      List<Placemark> p = await geolocator.placemarkFromCoordinates(
          _currentPosition.latitude, _currentPosition.longitude);

      Placemark place = p[0];

      setState(() {
        _currentAddress =
        "${place.locality}, ${place.postalCode}, ${place.country}";
      });
    } catch (e) {
      print(e);
    }
  }
}
