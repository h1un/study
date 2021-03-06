import 'package:flutter/material.dart';
import 'Second.dart';
import 'First.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AppBar',
      theme: ThemeData(primarySwatch: Colors.red),
      initialRoute: '/',
      routes: {
        '/' : (context)=>MyPage(),
        '/first' : (context) => FirstPage(),
        '/second' : (context) => FirstPage()
      },
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
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('images/BMO-1.jpg'),
                  backgroundColor: Colors.white,
                ),
                otherAccountsPictures: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('images/버블검-1.jpg'),
                  )
                ],
                accountName: Text('BMO'),
                accountEmail: Text('h1un@naver.com'),
                onDetailsPressed: () {
                  print('arrow is clicked');
                },
                decoration: BoxDecoration(
                    color: Colors.red[200],
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(40)))),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.pink[100],
              ),
              title: Text('HOME'),
              onTap: () {
                print('Home is clicked');
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.pink[100],
              ),
              title: Text('Setting'),
              onTap: () {
                print('Setting is clicked');
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(
                Icons.question_answer,
                color: Colors.pink[100],
              ),
              title: Text('Q&A'),
              onTap: () {
                print('Q&A is clicked');
              },
              trailing: Icon(Icons.add),
            ),
          ],
        ),
      ),
      body: Center(
          child: Column(children: [
        ElevatedButton(
          child: Text('First'),
          onPressed: () {
            Navigator.pushNamed(context, '/first');
          },
        ),
        ElevatedButton(
          child: Text('Second'),
          onPressed: () {
            Navigator.pushNamed(context, '/second');
          },
        ),
      ])),
    );
  }
}
