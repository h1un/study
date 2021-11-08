// ignore_for_file: file_names

import 'package:flutter/material.dart';


class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appbar icon menu'),
        centerTitle: true,
        elevation: 0.0,
        actions: [
          IconButton(
              onPressed: () {
                print('shoping cart bittom is clicked');
              },
              icon: Icon(Icons.shopping_cart)),
          IconButton(
              onPressed: () {
                print("search button is clicked");
              },
              icon: Icon(Icons.search))
        ],
      ),
      body:  const Center(
        child: Text("Second")
      ),
    );
  }
}
