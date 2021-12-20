import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget{
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context){
  /*
    배포되는 기기의 크기 상관 없이 위젯의 크기 & 비율이 일정하게 보여지는 반응형 UI로 작성
    MediaQuery를 사용하여 해당 기기의 상태 정보를 알 수 있음
  */        
    Size screenSize = MediaQuery.of(context).size;
    double width = screenSize.width;
    double height = screenSize.height;
    
    return SafeArea( // 상단의 노치나 하단의 화면에 영향을 줄 수 있는 부분을 제외한 곳에 그려줌
        child: Scaffold(
          appBar: AppBar(
            title: Text('Test Quiz App'),
            backgroundColor: Colors.deepPurple,
            leading: Container(), // 앱바에 자동으로 생길 수 있는 (뒤로가기) 페이지 이동 버튼 등을 지우는 효과
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Center(child: Image.asset(
                'images/testLogoImg.png', width: width * 0.8,
              ),
              ),
              Padding(padding: EdgeInsets.all(width * 0.024),
              ),
              Text(
                '플러터 퀴즈 앱',
                style: TextStyle(
                  fontSize: width * 0.065,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '퀴즈를 풀기 전 안내사항입니다.\n꼼꼼히 읽고 퀴즈 풀기를 눌러주세요.',
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: EdgeInsets.all(width * 0.048),
              ),
            ],
          ),
        ),
    );

  }

  // 하단 안내 사항 출력 함수
  Widget _buildStep(double width, String title) {
    return Container(
      
    );
  }
}