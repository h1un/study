import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AppBar',
      theme: ThemeData(
          primarySwatch: Colors.red
      ),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appbar icon menu'),
        centerTitle: true,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            print("menu Button is clicked");
          },
        ),
        actions: [
          IconButton(
              onPressed: () {
                print('shoping cart bittom is clicked');
              },
              icon: Icon
                (Icons.shopping_cart)),
        IconButton(onPressed: (){print("search button is clicked");},
            icon: Icon(Icons.search))],
      ),
    );
  }
}

