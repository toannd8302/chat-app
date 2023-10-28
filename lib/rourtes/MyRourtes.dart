


import 'package:chat_mobile_app/pages/home_page.dart';
import 'package:chat_mobile_app/pages/login_page.dart';
import 'package:chat_mobile_app/pages/register_page.dart';

var myRourtes = {
  "/": (context) => LoginPage(),
  "/home": (context) => HomePage(),
  "/register": (context) => RegisterPage(),
};