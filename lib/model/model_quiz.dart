class Quiz {
  // 변수 초기화 없이 선언만 하고 나중에 초기화 하고 싶을 때 late 앞에 붙여줌
  late String title;
  late List<String> candidates;
  late int answer;

  // 생성자
  Quiz({required this.title, required this.candidates, required this.answer});

  Quiz.fromMap(Map<String, dynamic> map)
    : title = map['title'],
      candidates = map['candidates'],
      answer = map['answer'];

}