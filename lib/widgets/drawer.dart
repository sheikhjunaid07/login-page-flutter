import 'package:flutter/material.dart';
import 'package:login_second/utils/routes.dart';

class MyDrawer extends StatefulWidget{
  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  Widget build(BuildContext context){
    final imageUrl = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHuQG3EP3Sh3Iq2j7cgSkq1cmHcP3bmUO1CpVPtBfnHg&s";
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                decoration: BoxDecoration(
                  color: Colors.black
                ),
                accountName: Text("Sheikh Junaid"),
                accountEmail: Text("sheikh@gmail.com"),
                // currentAccountPicture: Image.network(imageUrl), //for square image
                // for circular image
               currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(imageUrl),
              ),
              )
          ),
          ListTile(
            onTap: (){
              Navigator.pushNamed(context, MyRoutes.homeRoute);
            },
            leading: Icon(Icons.home),
            title: Text("Home", style: TextStyle(
              fontSize: 20
            ),),
          ),
          ListTile(
            onTap: (){
              Navigator.pushNamed(context, MyRoutes.profileRoute);
            },
           leading: Icon(Icons.account_circle_sharp),
            title: Text("Profile", style: TextStyle(
              fontSize: 20
            ),),
          ),
          ListTile(
            onTap: (){
              Navigator.pushNamed(context, MyRoutes.loginRoute);
            },
            leading: Icon(Icons.logout),
            title: Text("Logout", style: TextStyle(
              fontSize: 20
            ),),
          )
        ],
      ),
    );
  }
}