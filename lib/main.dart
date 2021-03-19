import 'package:flutter/material.dart';
import 'package:neet2buy/pages/home_page.dart';
import 'package:neet2buy/pages/item_page.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/item': (context) => ItemPage(),
      },
    ),
  );
}
