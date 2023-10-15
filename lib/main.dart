import 'package:e_app/data/service/login_service.dart';
import 'package:flutter/material.dart';
import 'app/material.dart';

void main() {
  runApp(const MyApp());
  Service.init();
  Service.getService(path: "getHelp");
}

//?@MahmoudElSayed96
// TODO:
//! splash x
//! login  !
//! otp    x
//! help   !
//! home page !
//! product info !
//TODO:
//? bottom navigation bar
//? sherdprefs
//? refactor ui
//? increment api endpoints
//? payment method

//*git add .
//*git commit -m "Last Update Mahmoud"
//*git push
