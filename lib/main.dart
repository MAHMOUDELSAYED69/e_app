
import 'package:e_app/data/service/login_service.dart';
import 'package:flutter/material.dart';
import 'app/material.dart';

void main(){
  runApp(const MyApp());
  Service.init();
  Service.getService(path: "getHelp");
}


//?@MahmoudElSayed96
// TODO:
//! splash
//! login
//! otp
//! help
//! home page
//! product info
