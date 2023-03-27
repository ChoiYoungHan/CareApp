import 'package:care_application/main.dart';
import 'package:flutter/material.dart';

class input_diary extends StatelessWidget {
  const input_diary({Key? key, required this.selectedDate}) : super(key: key);

  final DateTime selectedDate;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // 우측 상단에 출력되는 Debug 리본을 제거
      home: inputdiary_Page(selectedDate: selectedDate)
    );
  }
}

class inputdiary_Page extends StatefulWidget {
  const inputdiary_Page({Key? key, required this.selectedDate}) : super(key: key);
  final DateTime selectedDate;

  @override
  State<inputdiary_Page> createState() => _inputdiary_PageState();
}

class _inputdiary_PageState extends State<inputdiary_Page> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => Calendar_Page()));
          },
          icon: Icon(Icons.arrow_back, color: Colors.grey)
        ),
        title: Text(
          '${widget.selectedDate.year}년 ${widget.selectedDate.month}월 ${widget.selectedDate.day}일', style: TextStyle(color: Colors.grey)
        )
      ),
    );
  }
}

