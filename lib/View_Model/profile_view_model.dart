
import 'package:cookies_app/base/base_model.dart';
import 'package:flutter/material.dart';


class ProfileViewModel extends BaseModel {
  bool _profileAutoValidate=false;


  TextEditingController _regNameController =TextEditingController();

  TextEditingController _regEmailController =TextEditingController();

  TextEditingController _regLoginIdContoller =TextEditingController();

  TextEditingController _regPasswordController =TextEditingController();

  TextEditingController _regMobileController =TextEditingController();

  TextEditingController _regTitleController= TextEditingController();

  TextEditingController get regTitleController => _regTitleController;

  set regTitleController(TextEditingController value) {
    _regTitleController = value;
    notifyListeners();
  }

  TextEditingController get regMobileController => _regMobileController;

  set regMobileController(TextEditingController value) {
    _regMobileController = value;
    notifyListeners();
  }

  TextEditingController get regPasswordController => _regPasswordController;

  set regPasswordController(TextEditingController value) {
    _regPasswordController = value;
    notifyListeners();
  }

  TextEditingController get regLoginIdContoller => _regLoginIdContoller;

  set regLoginIdContoller(TextEditingController value) {
    _regLoginIdContoller = value;
    notifyListeners();
  }

  TextEditingController get regEmailController => _regEmailController;

  set regEmailController(TextEditingController value) {
    _regEmailController = value;
    notifyListeners();
  }

  TextEditingController get regNameController => _regNameController;

  set regNameController(TextEditingController value) {
    _regNameController = value;
    notifyListeners();
  }

  bool get profileAutoValidate => _profileAutoValidate;
  set profileAutoValidate(bool value) {
    _profileAutoValidate = value;
    notifyListeners();
  }



  clearAllModels(){
    _profileAutoValidate=false;
    _regEmailController=TextEditingController();
    _regLoginIdContoller=TextEditingController();
    _regMobileController=TextEditingController();
    _regNameController=TextEditingController();
    _regPasswordController=TextEditingController();

  }

}