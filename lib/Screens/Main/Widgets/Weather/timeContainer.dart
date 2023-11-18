import 'package:fishermap/Screens/Main/Widgets/Custom/diagonal.dart';
import 'package:flutter/material.dart';

class timeContainer extends StatelessWidget {
  const timeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      decoration: BoxDecoration(
        color: Colors.white24,
        borderRadius: BorderRadius.circular(45),
      ),
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      '오후 9시',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Image.asset(
                      'assets/wheather.png',
                      width: 80,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '9 ° / 12 물',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      '오후 12시',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Image.asset(
                      'assets/sunny3.png',
                      width: 80,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '9 ° / 12 물',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      '오전 3시',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Image.asset(
                      'assets/wheather.png',
                      width: 80,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '9 ° / 12 물',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      '오전 6시',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Image.asset(
                      'assets/sunny2.png',
                      width: 80,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '9 ° / 12 물',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Spacer(),
                Column(
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "목",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      child: Stack(
                        children: [
                          Positioned(
                            top: 0,
                            left: -5,
                            child: Image.asset(
                              'assets/wheather.png',
                              width: 35,
                            ),
                          ),
                          CustomPaint(
                            size: Size(55, 65),
                            painter: diagonalPainter(),
                          ),
                          Positioned(
                            right: -2,
                            bottom: 0,
                            child: Image.asset(
                              'assets/wheather.png',
                              width: 35,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      '9 ° / 12 물',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Column(
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "금",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      child: Stack(
                        children: [
                          Positioned(
                            top: 0,
                            left: -5,
                            child: Image.asset(
                              'assets/wheather.png',
                              width: 35,
                            ),
                          ),
                          CustomPaint(
                            size: Size(55, 65),
                            painter: diagonalPainter(),
                          ),
                          Positioned(
                            right: -2,
                            bottom: 0,
                            child: Image.asset(
                              'assets/sunny1.png',
                              width: 35,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      '9 ° / 12 물',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Column(
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "토",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      child: Stack(
                        children: [
                          Positioned(
                            top: 0,
                            left: -5,
                            child: Image.asset(
                              'assets/sunny2.png',
                              width: 35,
                            ),
                          ),
                          CustomPaint(
                            size: Size(55, 65),
                            painter: diagonalPainter(),
                          ),
                          Positioned(
                            right: -2,
                            bottom: 0,
                            child: Image.asset(
                              'assets/wheather.png',
                              width: 35,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      '9 ° / 12 물',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Column(
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "일",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      child: Stack(
                        children: [
                          Positioned(
                            top: 0,
                            left: 0,
                            child: Image.asset(
                              'assets/sunny.png',
                              width: 35,
                            ),
                          ),
                          CustomPaint(
                            size: Size(55, 65),
                            painter: diagonalPainter(),
                          ),
                          Positioned(
                            right: -0,
                            bottom: 0,
                            child: Image.asset(
                              'assets/sunny.png',
                              width: 35,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      '9 ° / 12 물',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                Spacer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
