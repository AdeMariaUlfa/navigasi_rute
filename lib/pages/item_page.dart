import 'package:flutter/material.dart';
import 'package:neet2buy/models/item.dart';
import 'package:flutter/widgets.dart';

class ItemPage extends StatelessWidget {
  final Item newItem;
  const ItemPage({Key key, this.newItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Container(
          alignment: Alignment.center,
          child: Text("Title : " +
              newItem.name +
              "\n" +
              "Author : " +
              newItem.author +
              "\n" +
              "Price : " +
              newItem.price.toString())),
    ));
  }
}
