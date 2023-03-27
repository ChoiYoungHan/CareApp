import 'package:care_application/input_diary.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // 우측 상단에 출력되는 Debug 리본을 제거
      home: Calendar_Page()
    );
  }
}

class Calendar_Page extends StatefulWidget {
  const Calendar_Page({Key? key}) : super(key: key);

  @override
  State<Calendar_Page> createState() => _Calendar_PageState();
}

class _Calendar_PageState extends State<Calendar_Page> {

  late DateTime selectedDate; // 선택한 날짜를 저장할 변수

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white, // 배경색: 흰색
        leading: Icon(Icons.arrow_back, color: Colors.grey), // 상단바의 좌측에 뒤로가기 아이콘 추가, 색상은 회색
        title: Text('캘린더', style: TextStyle(color: Colors.grey)) // 제목을 '캘린더'로 한다. 색상은 회색
      ),
      body: SafeArea( // MediaQuery를 통해 앱의 실제 화면 크기를 계산하고 이를 영역으로 삼아 내용을 표시
        child: InkWell( // 터치 이벤트를 처리할 수 있는 위젯
          child: TableCalendar(
            firstDay: DateTime.utc(2020, 01, 01), // 달력에서 사용할 수 있는 첫 번째 날짜
            lastDay: DateTime.utc(2123, 12, 31), // 달력에서 사용할 수 있는 마지막 날짜
            focusedDay: DateTime.now(), // 달력에서 현재 표시되어야 하는 월을 결정하는 현재 목표 날짜

            // 선택한 날짜 정보를 selectedDate 필드에 저장한다.
            onDaySelected: (selectedDay, focusedDay) {
              setState(() {
                selectedDate = selectedDay;
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => input_diary(selectedDate: selectedDay),
                  ),
                );
              });
            },

          ),
        )
      ),
      bottomNavigationBar: BottomAppBar(

      )
    );
  }
}
