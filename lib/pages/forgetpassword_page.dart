import 'package:flutter/material.dart';
import 'package:login_second/utils/routes.dart';

class ForgetPassword extends StatefulWidget{
  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  final _forgetFormKey = GlobalKey<FormState>();

  moveToLogin(BuildContext context){
    if(_forgetFormKey.currentState!.validate()) {
      Navigator.pushNamed(context, MyRoutes.loginRoute);
    }
  }
  Widget build(BuildContext context){
    return Material(
      child: Form(
        key: _forgetFormKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 32.0, horizontal: 32.0),
          child: Column(
            children: [
              SizedBox(
                height: 200,
              ),
              Center(child: Text("Enter Your Email to Forget Your Password",
                style: TextStyle(
                fontSize: 22,
              ),)),
              SizedBox(
                height: 40,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter Your Email",
                  labelText: "Email"
                ),
                validator: (value){
                  if(value!.isEmpty){
                    return "Email cannot be empty";
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 40,
              ),
              InkWell(
                onTap: () => moveToLogin(context),
                child: Container(
                  width: 200, height: 40,
                  alignment: Alignment.center,
                  child: Text("Submit", style: TextStyle(
                    color: Colors.white
                  ),),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular((20))
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}