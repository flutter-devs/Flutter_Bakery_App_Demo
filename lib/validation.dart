import 'package:flutter/material.dart';

class Validator{
  // BuildContext context;
  String validateName(String value, BuildContext context) {
    String pattern = r'(^[a-zA-Z ]*$)';
    RegExp regExp = new RegExp(pattern);

    if (value.length == 0) {
      return "Name Required";
    } else if (!regExp.hasMatch(value)) {
      return "Must have characters only";
    }
    return null;
  }
  String validateDesignation(String value, BuildContext context) {
    String pattern = r'(^[a-zA-Z ]*$)';
    RegExp regExp = new RegExp(pattern);
    if (value.length == 0) {
      return "Designation Required";
    } else if (!regExp.hasMatch(value)) {
      return "Must have characters only";
    }
    return null;
  }
  String validateIdentityCardAndNumber(String value, BuildContext context) {
    String pattern = r'(^[a-zA-Z ]*$)';
    RegExp regExp = new RegExp(pattern);
    if (value.length == 0) {
      return "Identity Card And Number Required";
    } else if (!regExp.hasMatch(value)) {
      return "Must have characters only";
    }
    return null;
  }

  String validateMobile(String value, BuildContext context) {
    String pattern = r'(^[0-9]*$)';
    RegExp regExp = new RegExp(pattern);
    if (value.length == 0) {
      return "Mobile number is Required";
    } else if (value.length != 10) {
      return "Mobile number must 10 digits";
    } else if (!regExp.hasMatch(value)) {
      return "Mobile number must be digits";
    }
    return null;
  }
  String validateTelephone(String value, BuildContext context) {
    String pattern = r'(^[0-9]*$)';
    RegExp regExp = new RegExp(pattern);
    if (value.length == 0) {
      return "Telephone number is Required";
    } else if (value.length != 10) {
      return "Telephone number must 10 digits";
    } else if (!regExp.hasMatch(value)) {
      return "Telephone number must be digits";
    }
    return null;
  }

  String validateMobileNo(String value, BuildContext context) {
    String pattern = r'(^[0-9]*$)';
    RegExp regExp = new RegExp(pattern);
    if (value.trim().length >= 2) {
      if (value.substring(0, 2) != '05') {
        //return "Mobile number must be start with 05";
        return "Please enter a local no: 05XXXXXXXXX";
      }
      if (value.trim().length != 11) {
        //return "Mobile number must be 11 digits";
        return "Mobile number must be 11 digits";
      }
      if (!regExp.hasMatch(value)) {
        return "Enter valid number";
      }
    } else if (!regExp.hasMatch(value)) {
      return "Enter valid number";
    } else if (value.length == 0) {
      return "Mobile phone should be required";
    }

    return null;
  }


  String validateEmail(String value, BuildContext context) {
    String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = new RegExp(pattern);
    if (value.length == 0) {
      return "Email is Required";
    } else if (!regExp.hasMatch(value)) {
      return "Invalid Email";
    } else {
      return null;
    }
  }

  String validatePassword(String value, BuildContext context) {
    if (value.length < 8) {
      return "Password must contain atleast 8 letters";
    } else {
      return null;
    }
  }

  String validateComment(String value, BuildContext context){
    if (value.length<5 && value.length>=1 ){
      return "Comment must have atleast 5 letters";
    }
    else if(value.length==0){
      return "Comment cannot be empty";
    } else {
      return null;
    }
  }

  String validateAddress(String value, BuildContext context) {
    if (value.length == 0) {
      return "Address Can't Be Empty!";
    } else {
      return null;
    }
  }

  String validatePinCode(String value, BuildContext context) {
    if (value.length < 6) {
      return "Enter Valid Pin Code!";
    } else {
      return null;
    }
  }
  String validateOTP(String value, BuildContext context) {
    if (value.length < 4) {
      return "Enter Valid OTP!";
    } else {
      return null;
    }
  }

  String validateNonEmptyField(String value, BuildContext context){
    if (value.length ==0) {
      return "Field Can't Be Empty!";
    } else {
      return null;
    }
  }

  String validateDate(String value, BuildContext context) {
    if(value==null){
      return "Field Can't Be Empty!";
    } else {
      return null;
    }
  }


  String validateLogNumber(String value, BuildContext context) {
    if (value.length == 0) {
      return "Log Number Can't Be Empty!";
    } else {
      return null;
    }
  }

  String validateGirth(String value, BuildContext context) {
    if (value.length == 0) {
      return "Girth Can't Be Empty!";
    } else {
      return null;
    }
  }

  String validateLength(String value, BuildContext context) {
    if (value.length == 0) {
      return "Length Can't Be Empty!";
    } else {
      return null;
    }
  }

  String validateVolume(String value, BuildContext context) {
    if (value.length == 0) {
      return "Volume Can't Be Empty!";
    } else {
      return null;
    }
  }
}
