import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InformationScreen extends StatelessWidget {
  InformationScreen({super.key});

  final List<String> entry = <String>[
    "2023년 정기교육(주말) 6기(오프라인)",
    "어촌체험휴양마을 숙박시설 귀어귀촌인 제공",
    "2023년 어선청년임대사업 임대용어선 모집공고",
    "2023년 경기도 귀어·귀촌 정착지원(3차) 공고",
    "청년어업인 및 임대용어선 모집공고",
    "1",
    "2",
    "3",
    "4",
    "5",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView.builder(
          padding: EdgeInsets.all(10),
          itemCount: entry.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                Container(
                  height: 100,
                  width: double.infinity,
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      '${entry[index]}',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(196, 4, 2, 27),
                      ),
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
