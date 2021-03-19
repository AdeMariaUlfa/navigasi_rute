// import 'dart:js';
import 'package:flutter/material.dart';
import 'package:neet2buy/pages/item_page.dart';
import 'package:neet2buy/models/item.dart';
import 'item_page.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(
        name: 'Harry Potter',
        author: 'J.K Rowling',
        year: '2003',
        price: 350000),
    Item(
        name: 'Sebuah Seni Untuk Bersikap Bodo Amat',
        author: 'Mark Manson',
        year: '2016',
        price: 280000),
    Item(
        name: 'The Hunger Games',
        author: 'Suzanne Collins',
        year: '2008',
        price: 325000),
    Item(
        name: 'Divergent',
        author: 'Veronica Roth',
        year: '2011',
        price: 298000),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                return InkWell(
                  onTap: () {
                    // Navigator.pushNamed(context, '/item');
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ItemPage(newItem: item)));
                  },
                  child: Card(
                    child: Row(
                      children: [
                        Expanded(flex: 1, child: Text(item.name)),
                        Expanded(flex: 1, child: Text(item.author)),
                        Expanded(flex: 1, child: Text(item.year)),
                      ],
                    ),
                  ),
                );
              })),
    );
  }
}
