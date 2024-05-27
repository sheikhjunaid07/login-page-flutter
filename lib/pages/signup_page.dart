import 'package:flutter/material.dart';
import 'package:login_second/utils/routes.dart';

class SignupPage extends StatefulWidget{
  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool animateButton = false;

  final _signFormKey = GlobalKey<FormState>();

  moveToAfterSignup(BuildContext context) async {
    if(_signFormKey.currentState!.validate()) {
      setState(() {
        animateButton = true;
      });
      await Future.delayed(Duration(milliseconds: 800));
      await Navigator.pushNamed(context, MyRoutes.aftersignupRoute);
      setState(() {
        animateButton = false;
      });
    }
  }

  Widget build(BuildContext context){
    return Material(
      child: SingleChildScrollView(
        child: Form(
          key: _signFormKey,
          child: Column(
            children: [
              Image.asset("assets/images/signup.png", height: 320, width: 320,),
              Text("Sign Up", style: TextStyle(
                fontSize: 40
              ),),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 32.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter Your Name",
                        labelText: "Username"
                      ),
                      validator: (value){
                        if(value!.isEmpty){
                          return "Username cannot be empty";
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,  //for number inputs only
                      decoration: InputDecoration(
                        hintText: "Enter Mobile Number",
                        labelText: "Mobile"
                      ),
                      validator: (value){
                        if(value!.isEmpty){
                          return "Mobile number cannot be empty";
                        } else if (value.length > 10){
                          return "Mobile number must have 10 digits";
                        } else if (value.length < 10){
                          return "Mobile number must have 10 digits";
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter Your City",
                        labelText: "City"
                      ),
                      validator: (value){
                        if(value!.isEmpty){
                          return "City cannot be empty";
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Create Your Password",
                        labelText: "Create Password"
                      ),
                      validator: (value){
                        if(value!.isEmpty){
                          return "Password cannot be empty";
                        } else if (value.length < 6){
                          return "Password should have 6 letters";
                        }
                        return null;
                      },
                    ),
                  ],
                ),
              ),

              //Signup button Container
              // I changed the simple login button container to Animated Container
              InkWell(
                onTap: () => moveToAfterSignup(context),
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 800),
                  width: animateButton ? 50 : 200,
                  height: 40,
                  alignment: Alignment.center,
                  child: animateButton ? Icon(Icons.done, color: Colors.white,) : Text("Sign Up", style: TextStyle(
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