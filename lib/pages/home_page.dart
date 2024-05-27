import 'package:flutter/material.dart';
import 'package:login_second/utils/routes.dart';

class HomePage extends StatefulWidget{
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget build(BuildContext context){
    return Material(
      child: Column(
        children: [
          Image.asset("assets/images/home.png", width: 320, height: 320,),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 48.0),
            child: Column(
              children: [
                Text("Hello Folks...",
                  style:TextStyle(
                    fontSize: 42
                  ) ),
                SizedBox(
                  height: 10,
                ),
                const Text("Please Login or Sign Up in our Application to connect people in all over the world.",
                style: TextStyle(
                  fontSize: 20
                ),),
                SizedBox(
                  height: 40,
                ),
                InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, MyRoutes.loginRoute);
                  },
                  child: Container(
                    width: 200, height: 40,
                    child: Text("Log In", style: TextStyle(
                      color: Colors.white,
                    ),),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular((20)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, MyRoutes.signupRoute);
                  },
                  child: Container(
                    width: 200, height: 40,
                    alignment: Alignment.center,
                    child: Text("Sign Up", style: TextStyle(

                    ),),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                      borderRadius: BorderRadius.circular((20))
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      )
    );
  }
}