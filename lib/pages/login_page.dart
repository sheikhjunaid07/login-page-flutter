import 'package:flutter/material.dart';
import 'package:login_second/utils/routes.dart';

class LoginPage extends StatefulWidget{
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool changeButton = false;

  final _formKey = GlobalKey<FormState>();

  moveToAfterLogin(BuildContext context) async {
    if(_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(milliseconds: 800));
      await Navigator.pushNamed(context, MyRoutes.afterloginRoute);
      setState(() {
        changeButton = false;
      });
    }
  }
  
  Widget build(BuildContext context){
    return Material(
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
           children: [
             Image.asset("assets/images/login.png", width: 320, height: 320,),
             Text("Login Page", style: TextStyle(
               fontSize: 40
             ),),
             Padding(
               padding: const EdgeInsets.symmetric(vertical: 32.0, horizontal: 32.0),
               child: Column(
                 children: [
                   TextFormField(
                     decoration: InputDecoration(
                       hintText: "Enter Your Name",
                       labelText: "Username",
                     ),
                     validator: (value){
                       if(value!.isEmpty){
                         return "Username cannot be empty";
                       }
                       return null;
                     },
                   ),
                   TextFormField(
                     obscureText: true,
                     decoration: InputDecoration(
                       hintText: "Enter Your Password",
                       labelText: "Password"
                     ),
                     validator: (value){
                       if(value!.isEmpty){
                         return "Password can not be empty";
                       }
                       else if(value.length < 6){
                         return "Password should have 6 latters.";
                       }
                       return null;
                   },
                     ),
                 ],
               ),
             ),
          
             //login button container
             // I changed the simple login button container to Animated Container
           InkWell(
               onTap: () => moveToAfterLogin(context),
               child: AnimatedContainer(
                 duration: Duration(milliseconds: 800),
                 height: 40,
                 width: changeButton ? 50 : 200,
                 alignment: Alignment.center,
                 child: changeButton ? Icon(Icons.done, color: Colors.white) :  Text("Login", style: TextStyle(
                   color: Colors.white
                 ),),
                 decoration: BoxDecoration(
                   color: Colors.black,
                   borderRadius: BorderRadius.circular((20))
                 ),
               ),
             ),
             SizedBox(
               height: 10,
             ),
          
             //Forget Password Container
             InkWell(
               onTap:(){
                 Navigator.pushNamed(context, MyRoutes.forgetpasswordRoute);
               },
               child: Container(
                 alignment: Alignment.bottomRight,
                 child: Text("Forget Password", style: TextStyle(
                   color: Colors.black ,
                 ),),
               ),
             )
           ],
          ),
        ),
      ),
    );
  }
}