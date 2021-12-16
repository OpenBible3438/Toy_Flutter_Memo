import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()); // 앱을 구동시키는 부분. 메인 페이지인 MyApp() 구동
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: Text('안녕')

      // 기본적으로 flutter에서 제공해주는 icon들이 있고 flutter 홈페이지에서 확인 가능
      //home:Icon(Icons.shop)
      //home:Icon(Icons.star)

      // 괄호 안에 이미지의 경로 넣어주기
      // assets 폴더를 만들어서 그 안에 이미지를 넣으면 됨.
      // 이미지는 pubspac.yaml 등록 해야 됨
      //home:Image.asset('testImage.jpg')

      // 박스
      //home:Container()
      //home:Container(width:50, height: 50, color:Colors.blue) // 그냥 숫자 넣으면 단위는 lp
      home:Center(
        child: Container(width:50, height: 50, color:Colors.blue)
      )
    );
  }
}
