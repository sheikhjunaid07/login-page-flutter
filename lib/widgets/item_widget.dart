import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_second/models/catalog.dart';

class ItemWidget extends StatelessWidget{
  final Item item;

  const ItemWidget({super.key, required this.item});
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Card(
            child: ListTile(
              leading: Image.network(item.imgUrl),
              title: Text(item.name),
              subtitle: Text(item.city),
              trailing: Icon(CupertinoIcons.check_mark_circled_solid),
            ),
          ),
        ],
      ),
    );
  }
}