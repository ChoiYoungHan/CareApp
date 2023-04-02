import 'package:care_application/main.dart';
import 'package:flutter/material.dart';

class Home_Page extends StatelessWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // 우측 상단의 debug 리본 제거
      home: HomePage()
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int exist = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold( // 상 중 하를 나누는 위젯
      body: SafeArea( // MediaQuery를 통해 앱의 실제 화면 크기를 계산하고 이를 영역으로 삼아 내용을 표시
        child: GestureDetector( // Container와 같이 Gesture를 감지할 수 없는 위젯들에게 Gesture 기능을 부여할 수 있는 위젯
          child: Column( // 세로 정렬
            children: [
              exist == 1 ?
              Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.95,
                  height: MediaQuery.of(context).size.height * 0.3,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 2)
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max, // 남은 영역을 모두 사용
                    children: [
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: Image.asset('assets/newborn.png',
                          width: MediaQuery.of(context).size.width * 0.38,
                          height: MediaQuery.of(context).size.height * 0.45
                        )
                      ),
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.422,
                          child: Padding(
                            padding: EdgeInsets.all(5),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('메리의', style: TextStyle(color: Colors.grey, fontSize: 25)),
                                SizedBox(height: 5),
                                Text('출산까지', style: TextStyle(color: Colors.grey, fontSize: 25)),
                                SizedBox(height: 5),
                                Text('56일', style: TextStyle(color: Colors.blue, fontSize: 30)),
                                SizedBox(height: 5),
                                Text('남았습니다.', style: TextStyle(color: Colors.grey, fontSize: 25)),
                              ]
                            ),
                          )
                        ),
                      )
                    ]
                  )
                ),
              ) : 
              Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.95,
                  height: MediaQuery.of(context).size.width * 0.5,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 2)
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Image.asset('assets/baby.png',
                          width: MediaQuery.of(context).size.width * 0.38,
                          height: MediaQuery.of(context).size.height * 0.2,
                          color: Colors.grey
                        ),
                      ),
                      Text('아기 등록하기', style: TextStyle(color: Colors.grey, fontSize: 20, fontWeight: FontWeight.bold))
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.45,
                      height: MediaQuery.of(context).size.height * 0.25,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 2)
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Image.asset('assets/week_baby.png',
                              width: MediaQuery.of(context).size.width * 0.35,
                              height: MediaQuery.of(context).size.height * 0.15,
                              color: Colors.grey
                            )
                          ),
                          Text('이번주 아기는?', style: TextStyle(color: Colors.grey, fontSize: 20, fontWeight: FontWeight.bold))
                        ]
                      )
                    )
                  ),
                  Padding(
                      padding: EdgeInsets.all(10),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.45,
                        height: MediaQuery.of(context).size.height * 0.25,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 2)
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: Image.asset('assets/week_mother.png',
                                width: MediaQuery.of(context).size.width * 0.35,
                                height: MediaQuery.of(context).size.height * 0.15,
                                color: Colors.grey
                              )
                            ),
                            Text('이번주 엄마는?', style: TextStyle(color: Colors.grey, fontSize: 20, fontWeight: FontWeight.bold))
                          ]
                        )
                      )
                  )
                ]
              )
            ]
          )
        )
      ),
      bottomNavigationBar: BottomAppBar( // 하단 바
        height: 60, // 높이 60
        child: Row( // 가로 정렬
          mainAxisAlignment: MainAxisAlignment.spaceEvenly, // 일정 간격을 두고 정렬
          children: [
            IconButton(
              onPressed: (){

              },
              icon: Icon(Icons.home_outlined, color: Colors.blue)
            ),
            IconButton(
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyApp()));
                },
                icon: Icon(Icons.event_note_outlined)
            ),
            IconButton(
                onPressed: (){

                },
                icon: Icon(Icons.chat_outlined)
            ),
            IconButton(
                onPressed: (){

                },
                icon: Icon(Icons.list_alt_outlined)
            )
          ]
        )
      )
    );
  }
}
