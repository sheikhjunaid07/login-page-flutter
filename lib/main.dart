import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_second/pages/afterlogin_page.dart';
import 'package:login_second/pages/aftersignup.dart';
import 'package:login_second/pages/forgetpassword_page.dart';
import 'package:login_second/pages/home_page.dart';
import 'package:login_second/pages/login_page.dart';
import 'package:login_second/pages/main_page.dart';
import 'package:login_second/pages/profile_page.dart';
import 'package:login_second/pages/signup_page.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      initialRoute: "/home",
      routes: {
        "/home": (context)=> HomePage(),
        "/login": (context)=> LoginPage(),
        "/signup": (context)=> SignupPage(),
        "/afterlogin": (context)=> AfterLoginPage(),
        "/aftersignup": (context)=> AfterSignupPage(),
        "/forgetpassword": (context) => ForgetPassword(),
        "/profile": (context)=> ProfilePage()
      },
    );
  }
}