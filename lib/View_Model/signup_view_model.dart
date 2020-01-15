
import 'package:cookies_app/base/base_model.dart';
import 'package:flutter/material.dart';


class SignUpViewModel extends BaseModel{



  bool _userLoginAutoValidate=false;

  TextEditingController _passwordController=TextEditingController();

  TextEditingController _userIdController =TextEditingController();
  TextEditingController _nameController =TextEditingController();
  TextEditingController _confirmPasswordController =TextEditingController();

  TextEditingController get confirmPasswordController =>
      _confirmPasswordController;

  set confirmPasswordController(TextEditingController value) {
    _confirmPasswordController = value;
    notifyListeners();
  }

  TextEditingController get nameController => _nameController;

  set nameController(TextEditingController value) {
    _nameController = value;
    notifyListeners();
  }

  bool _passwordVisible=false;

  bool get passwordVisible => _passwordVisible;

  set passwordVisible(bool value) {
    _passwordVisible = value;
    notifyListeners();
  }

  TextEditingController get userIdController => _userIdController;

  set userIdController(TextEditingController value) {
    _userIdController = value;
    notifyListeners();
  }

  TextEditingController get passwordController => _passwordController;

  set passwordController(TextEditingController value) {
    _passwordController = value;
    notifyListeners();
  }

  bool get userLoginAutoValidate => _userLoginAutoValidate;
  set userLoginAutoValidate(bool value) {
    _userLoginAutoValidate = value;
    notifyListeners();
  }



  clearAllModels(){
    _userLoginAutoValidate=false;
    _passwordController=TextEditingController(text: '');
    _userIdController=TextEditingController(text: '');
    _confirmPasswordController=TextEditingController(text: '');
    _nameController=TextEditingController(text: '');
    _passwordVisible=false;
  }
}