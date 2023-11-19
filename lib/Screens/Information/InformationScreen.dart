import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InformationScreen extends StatelessWidget {
  InformationScreen({super.key});

  final List<String> entry = <String>[
    "귀어귀촌 캐릭터 '귀어해'를 소개합니다.",
    "2023년 정기교육(주말) 6기(오프라인,부산) 교육생 모집 안내(강의일시 : 11월 25일 토요일)",
    "2023년 정기교육(평일) 15기(오프라인,부산) 교육생 모집 안내(강의일시 : 11월 24일 금요일)",
    "2023년 귀어귀촌 정기교육 14기(평일, 11.10.) 교육안내(접속방법 등 안내)",
    "2023년 귀어귀촌 정기교육 13기(평일, 11.9.) 교육안내(접속방법 등 안내)",
    "귀어귀촌 정기교육(주말) 5기 교육 안내",
    "귀어귀촌 정기교육(평일) 12기 교육 안내",
    "2023년 귀어귀촌 정기교육(평일) 14기 교육생 모집 안내(강의일시 : 11월 10일 금요일)",
    "2023년 귀어귀촌 정기교육(평일) 13기 교육생 모집 안내(강의 일시: 11월 9일 목요일)",
    "2023년 정기교육(주말) 5기 교육생 모집 안내(강의 일시 : 10월 28일 토요일)",
  ];

  final List<String> homePage = <String>[
    "귀어귀촌 종합센터",
    "귀어귀촌 종합센터",
    "귀어귀촌 종합센터",
    "귀어귀촌 종합센터",
    "귀어귀촌 종합센터",
    "귀어귀촌 종합센터",
    "귀어귀촌 종합센터",
    "귀어귀촌 종합센터",
    "귀어귀촌 종합센터",
    "귀어귀촌 종합센터",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(238, 0, 3, 10),
        iconTheme: const IconThemeData(color: Colors.white),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.search_outlined,
              color: Colors.white,
              size: 30,
            ),
            onPressed: null,
          ),
        ],
      ),
      body: Container(
        child: ListView.builder(
          padding: EdgeInsets.all(10),
          itemCount: entry.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                Container(
                  padding:
                      EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 15),
                  height: 125,
                  width: double.infinity,
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '${entry[index]}',
                          style: TextStyle(
                            fontSize: 16,
                            letterSpacing: 2.0,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          '${homePage[index]}',
                          style: TextStyle(
                            fontSize: 14,
                            letterSpacing: 2.0,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blueGrey,
                        offset: Offset(0, 3),
                        blurRadius: 2,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 10,
                ),
              ],
            );
          },
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              const Color.fromARGB(255, 9, 54, 122),
              const Color.fromARGB(238, 0, 3, 10),
            ],
          ),
        ),
      ),
    );
  }
}
