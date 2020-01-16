
import 'package:cookies_app/base/base_model.dart';
import 'package:cookies_app/repository.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_maps_webservice/places.dart';


class SearchViewModel extends BaseModel{
  Repository _repository =Repository();
  GoogleMapController googleMapController;
  LatLng currentPosition,selectedPosition;
  List<Prediction> predictionL;
  Set<Marker>markers =Set();

  TextEditingController _formFieldController= TextEditingController();


  TextEditingController get formFieldController => _formFieldController;

  set formFieldController(TextEditingController value) {
    _formFieldController = value;
    notifyListeners();
  }

  void onMapCreated(GoogleMapController controller) {
    googleMapController = controller;
    Geolocator().getCurrentPosition(desiredAccuracy: LocationAccuracy.high).then((position){
      currentPosition = LatLng(position.latitude, position.longitude);
      selectedPosition = currentPosition;
      googleMapController
          .animateCamera(CameraUpdate.newLatLngZoom(currentPosition, 19));
// markers.add(Marker(markerId: MarkerId("markerid"),position: selectedPosition));
      notifyListeners();
    });
  }

  void onSubmitForm(String value) async {
    if (value.isEmpty) {
      selectedPosition = null;
    } else {
      print('ONSUBMIT CALLED');
      await _repository.getAutocompleteResponse(value).then((data) {
        print("PREDICTIONS ARE: ${data.predictions.toList().toString()}");
        updateDestinationSuggestions(data.predictions);
      });
    }
    notifyListeners();
  }

  Future updateDestinationSuggestions(List<Prediction> predictions) async {
    predictionL = predictions;
    notifyListeners();
  }

  void onPredictionItemClick(Prediction prediction) async {
    updateDestinationSuggestions(null);
    formFieldController.text = prediction.description;
    selectedPosition =
    await _repository.getLatLngfromAddress(prediction.description);
    markers.add(Marker(markerId: MarkerId("markerid"),position: selectedPosition));
    onSelectedPostionChanged();
    notifyListeners();
  }

  void onSelectedPostionChanged() {
    if (selectedPosition != null) {
      googleMapController
          .animateCamera(CameraUpdate.newLatLngZoom(selectedPosition, 20));
      notifyListeners();
    }
  }

  clearAllModels(){
_formFieldController=TextEditingController(text: '');
  }
}