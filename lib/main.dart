import 'package:flutter/material.dart';

void main() => runApp(MyApp());
//runApp() 최상의 함수
// MyApp() 최상의 위젯(클래스)

//함수의 이름은 소문자
//클래스 이름은 대문자
class MyApp extends StatelessWidget {
  // 자동 완성 stl
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'First app', //앱을 총칭하는 이름
        theme: ThemeData(
            // 디자인
            primarySwatch: Colors.lightBlue),
        home: const MyHomePage() // 앱이 정상적으로 실행되었을때 가장 먼저 화면에 보여주는 경로
        );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 빈도화지 같은 위젯
      appBar: AppBar(
        title: Text('First App'), // 앱바에 표시되는 이름
      ),
      body: Center(
        child: Column(
          children: [Text('Hello'), Text('Future')],
        ), // 모든 위젯을 세로로 배치
      ),
    );
  }
}
