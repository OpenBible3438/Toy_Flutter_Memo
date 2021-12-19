import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()); // 앱을 구동시키는 부분. 메인 페이지인 MyApp() 구동
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: Text('Hello World!')

      // 기본적으로 flutter에서 제공해주는 icon들이 있고 flutter 홈페이지에서 확인 가능
      // https://api.flutter.dev/flutter/material/Icons-class.html
      //home:Icon(Icons.shop)
      //home:Icon(Icons.star)

      // 괄호 안에 이미지의 경로 넣어주기
      // assets 폴더를 만들어서 그 안에 이미지를 넣으면 됨.
      // 이미지는 pubspec.yaml 등록 해야 됨
      //home:Image.asset('assets/testImage.jpg')

      // 박스
      //home:Container()
      //home:Container(width:50, height: 50, color:Colors.blue) // 그냥 숫자 넣으면 단위는 lp
      /*
      home:Center(
        child: Container(width:50, height: 50, color:Colors.blue)
      )
       */

      home:Scaffold(
        appBar: AppBar(title: Text('앱 Title')),
        body: Align( //Center에 감싸면 가운데 정렬, Align 속성으로 자세하게 변경가능
          alignment: Alignment.topLeft,
          child: Container(
            width:double.infinity, height: 100, color:Colors.blue,
          ),
        ),
        /*
        body: Container(
          width:200, height: 100,
          //margin: EdgeInsets.all(20), // 해당 위젯 바깥쪽에 마진 주기
          //margin: EdgeInsets.fromLTRB(0, 30, 0, 0), // 방향에 따라 마진 줌

          //padding: EdgeInsets.all(20),
          //child: Text('padding test text'), // padding으로 인해 안쪽에 여백이 있고 텍스트 써짐

          // 그린 Container에 대한 border, color 등드의 속성을 넣을 수 있음
          decoration: BoxDecoration(
            border: Border.all(color:Colors.black)
          ),

        ),
         */

        /*
        bottomNavigationBar: BottomAppBar( // 하단 앱바
          child: SizedBox(
            height: 50,
            child: Row( // 앱바에 들어가는 요소들
              mainAxisAlignment: MainAxisAlignment.spaceEvenly, // 정렬
              children: [
                Icon(Icons.format_list_bulleted),
                Icon(Icons.add),
              ],
            ),
          ),
        ),
        */
      )

    );
  }
}