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
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Column(
                  children: [
                    Text(
                      "목",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
