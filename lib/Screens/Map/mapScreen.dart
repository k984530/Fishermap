import 'dart:math';

import 'package:fishermap/Palate.dart';
import 'package:fishermap/Screens/Map/Function/aping.dart';
import 'package:fishermap/Screens/Map/Function/crawling.dart';
import 'package:flutter/material.dart';

import '../Main/Widgets/Custom/waveWidget.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Palate.ContainerColor,
      ),
      backgroundColor: Palate.ContainerColor,
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                // GestureDetector(
                //   onTap: () => Aper.test(),
                //   child: Container(
                //     padding: EdgeInsets.all(15),
                //     margin: EdgeInsets.all(20),
                //     height: 460,
                //     decoration: BoxDecoration(
                //       color: Colors.white10,
                //       borderRadius: BorderRadius.circular(
                //         25,
                //       ),
                //     ),
                //     child: Column(
                //       children: [
                //         Text(
                //           "실시간 상황",
                //           style: TextStyle(
                //             color: Colors.white,
                //             fontSize: 20,
                //           ),
                //         ),
                //         SizedBox(
                //           height: 10,
                //         ),
                //         SizedBox(
                //           width: MediaQuery.of(context).size.width - 100,
                //           child: Row(
                //             mainAxisAlignment: MainAxisAlignment.center,
                //             children: [
                //               Column(
                //                 crossAxisAlignment: CrossAxisAlignment.start,
                //                 children: [
                //                   Container(
                //                     height: 80,
                //                     width: 80,
                //                     margin: EdgeInsets.only(bottom: 30),
                //                     child: Transform.rotate(
                //                       angle: 55 * pi / 180,
                //                       child: Image.asset(
                //                         'assets/arrow.png',
                //                         width: 80,
                //                         height: 80,
                //                         fit: BoxFit.fill,
                //                       ),
                //                     ),
                //                   ),
                //                   Text(
                //                     "풍향 : 북북동",
                //                     style: TextStyle(
                //                       color: Colors.white,
                //                     ),
                //                   ),
                //                   Text(
                //                     "풍속 : 3m/s",
                //                     style: TextStyle(
                //                       color: Colors.white,
                //                     ),
                //                   ),
                //                 ],
                //               ),
                //               SizedBox(
                //                 width: 30,
                //               ),
                //               Column(
                //                 crossAxisAlignment: CrossAxisAlignment.start,
                //                 children: [
                //                   Container(
                //                     margin:
                //                         EdgeInsets.only(top: 20, bottom: 30),
                //                     width: 80,
                //                     height: 60,
                //                     child: WaveWidget(),
                //                   ),
                //                   Text(
                //                     "파향 : 북북동",
                //                     style: TextStyle(
                //                       color: Colors.white,
                //                     ),
                //                   ),
                //                   Text(
                //                     "파속 : 3m/s",
                //                     style: TextStyle(
                //                       color: Colors.white,
                //                     ),
                //                   ),
                //                   Text(
                //                     "파고 : 4m",
                //                     style: TextStyle(
                //                       color: Colors.white,
                //                     ),
                //                   ),
                //                   Text(
                //                     '수온 : 9 °',
                //                     style: TextStyle(
                //                       color: Colors.white,
                //                     ),
                //                   ),
                //                 ],
                //               ),
                //             ],
                //           ),
                //         ),
                //         SizedBox(
                //           height: 15,
                //         ),
                //         Text(
                //           "test",
                //           style: TextStyle(
                //             color: Colors.white,
                //           ),
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
                Container(
                  padding: EdgeInsets.all(15),
                  margin: EdgeInsets.all(20),
                  height: 460,
                  decoration: BoxDecoration(
                      color: Colors.white10,
                      borderRadius: BorderRadius.circular(25)),
                  child: Column(
                    children: [
                      Text(
                        "오늘의 수온",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width - 100,
                        height: 385,
                        child: Image.asset(
                          'assets/temperature.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  margin: EdgeInsets.all(20),
                  height: 460,
                  decoration: BoxDecoration(
                      color: Colors.white10,
                      borderRadius: BorderRadius.circular(25)),
                  child: Column(
                    children: [
                      Text(
                        "주간 어획 정보",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width - 100,
                        height: 385,
                        child: Image.asset(
                          'assets/fishAmount.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(15),
            margin: EdgeInsets.all(20),
            height: 150,
            width: MediaQuery.of(context).size.width - 50,
            decoration: BoxDecoration(
                color: Colors.white10, borderRadius: BorderRadius.circular(25)),
            child: Column(
              children: [
                Text(
                  "적조 속보 : 유",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Text(
                  "패류독소 속보 : 무",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Text(
                  "해파리 속보 : 무",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Text(
                  "고수온 속보 : 무",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Text(
                  "산소부족 물덩어리 속보 : 무",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
