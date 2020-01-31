import 'package:cookies_app/Ui/home.dart';
import 'package:cookies_app/View_Model/search_view_model.dart';
import 'package:cookies_app/autoComplete.dart';
import 'package:cookies_app/base/base_view.dart';
import 'package:cookies_app/splash.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search>{
  final Geolocator geolocator = Geolocator()..forceAndroidLocationManager;
  static final CameraPosition _myLocation =
  CameraPosition(target: LatLng(0.0,0.0));


  @override
  Widget build(BuildContext context) {
    return BaseView<SearchViewModel>(
        onModelReady: (model) {},
        builder: (context, model, build) {
          return WillPopScope(
            child: SafeArea(
              child: Scaffold(
                resizeToAvoidBottomPadding: false,
                resizeToAvoidBottomInset: true,
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
                          builder: (context) => Home()
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
                body: Stack(

                  children: <Widget>[
                    Container(
                      child: GoogleMap(
                        initialCameraPosition: _myLocation,
                        mapType: MapType.normal,myLocationEnabled: true,
// onMapCreated: (GoogleMapController controller) {
////// _controller.complete(controller);
////// },
                        onMapCreated: model.onMapCreated,
                        markers: model.markers,
                        compassEnabled: false,
                        myLocationButtonEnabled: false,
                      ),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: PredictionListAutoComplete(
                      data: model.predictionL,
                      textField: TextField(
// textAlign: TextAlign.center,
                          cursorColor: Colors.black,
                          onSubmitted: model.onSubmitForm,
//onChanged: mapModel.onPickupTextFieldChanged, not using it for now
                          controller: model.formFieldController,
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color:Colors.black
                              ),
                              borderRadius:
                              BorderRadius.all(
                                Radius.circular(12),
                              ),
                            ),
                            hintStyle: TextStyle(color: Colors.grey[500],),
                            hintText: "Your location", suffixIcon: Icon(Icons.search,color: Colors.grey[500],),
                            border: new OutlineInputBorder(
                                borderSide: new BorderSide(color: Colors.black),
                                borderRadius: BorderRadius
                                    .all(
                                    Radius.circular(12))
                            ),

                          ),
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.go
                      ),
                      itemTap: model.onPredictionItemClick,
                    ),
                      ),


                  ],
                )
              ),
            ),
            onWillPop: () async {
              print('WILLPOPCSOPE');
              model.clearAllModels();
              return true;
            },
          );
        }
    );
  }

}
