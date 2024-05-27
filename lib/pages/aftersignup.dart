import 'package:flutter/material.dart';
import 'package:login_second/utils/routes.dart';

class AfterSignupPage extends StatefulWidget{
  @override
  State<AfterSignupPage> createState() => _AfterSignupPageState();
}

class _AfterSignupPageState extends State<AfterSignupPage> {
  Widget build(BuildContext context){
    return Material(
      child: Column(
        children: [
          SizedBox(
            height: 200,
          ),
          Text("You Have Successfully Sign Up.", style: TextStyle(
            fontSize: 28
          ),),
          SizedBox(
            height: 40,
          ),
          Text("Please Go to Login Page to Login Yourself.", style: TextStyle(
            fontSize: 16
          ),),
          SizedBox(
            height: 40,
          ),
          //Back to login button
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, MyRoutes.loginRoute);
            },
            child: Container(
              width: 200, height: 40,
              alignment: Alignment.center,
              child: Text("Go to Login", style: TextStyle(
                color: Colors.white
              ),),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular((20)),
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Text("Or Click Back to Home Button to go Home Page.", style: TextStyle(
            fontSize: 16
          ),),
          SizedBox(
            height: 40,
          ),
          //Go to Home Page  Button Container
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, MyRoutes.homeRoute);
            },
            child: Container(
              width: 200, height: 40,
              alignment: Alignment.center,
              child: Text("Go to Home", style: TextStyle(
                color: Colors.white,
              ),),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular((20))
              ),
            ),
          )
        ],
      ),
    );
  }
}