import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back, color: Colors.grey),

      ),
      body: SafeArea(
        child: GestureDetector(

        )
      ),
      bottomNavigationBar: BottomAppBar(

      )
    );
  }
}
