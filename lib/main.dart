import 'package:flutter/material.dart';
import 'package:flutter_memo/screen/screen_home.dart';

void main() {
  runApp(const MyApp()); // 앱을 구동시키는 부분. 메인 페이지인 MyApp() 구동
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test Quiz App',
      home: HomeScreen(),
    );
  }
}