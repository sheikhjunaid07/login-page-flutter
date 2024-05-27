import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login_second/models/catalog.dart';
import 'package:login_second/widgets/drawer.dart';
import 'package:login_second/widgets/item_widget.dart';

class AfterLoginPage extends StatefulWidget{
  @override
  State<AfterLoginPage> createState() => _AfterLoginPageState();
}

class _AfterLoginPageState extends State<AfterLoginPage> {

  @override
  void initState(){
    super.initState();
    loadData();
  }

  loadData() async{
    await Future.delayed(Duration(seconds: 3));
   final catalogJson = await rootBundle.loadString("assets/file/catalog.json");
   final decodedData = jsonDecode(catalogJson);
   var productsData = decodedData["products"];
   CatalogModel.items = List.from(productsData).map<Item>((item) => Item.fromMap(item)).toList();
   setState(() { });
  }
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Main Page", style: TextStyle(
          color: Colors.white
        ) ),
        
        //for drawer icon
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
         child: (CatalogModel.items != null && CatalogModel.items.isNotEmpty) ?ListView.builder(
           itemCount: CatalogModel.items.length,
           itemBuilder: (context, index){
             return ItemWidget(item: CatalogModel.items[index] );
          }): Center(
           child: CircularProgressIndicator(),
         ),
       ),
       drawer: MyDrawer(),
    );
  }
}