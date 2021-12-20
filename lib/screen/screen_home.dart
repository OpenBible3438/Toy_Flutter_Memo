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
              
              // _buildStep(설명문) 함수 추가
              _buildStep(width, '1. 첫 번째 설명 TEST'),
              _buildStep(width, '2. 두 번째 설명 TEST'),
              Padding(
                  padding: EdgeInsets.all(width * 0.048),
              ),

              // 퀴즈 풀기 버튼 추가
              Container(
                padding: EdgeInsets.only(bottom: width * 0.036),
                child: Center(
                  child: ButtonTheme(
                    minWidth: width * 0.8,
                    height: height * 0.05,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: RaisedButton(
                      child: Text(
                        '지금 퀴즈 풀기',
                        style: TextStyle(color: Colors.white),
                      ),
                      color: Colors.deepPurple,
                      onPressed: (){},
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
    );

  }

  // 하단 안내 사항 출력 함수
  Widget _buildStep(double width, String title) {
    return Container(
      padding: EdgeInsets.fromLTRB(
          width * 0.048,
          width * 0.024,
          width * 0.048,
          width * 0.024
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Icon(
            Icons.check_box,
            size: width * 0.04,
          ),
          Padding(
            padding: EdgeInsets.only(right: width * 0.024),
          ),
          Text(title),
        ],
      ),
    );
  }
}