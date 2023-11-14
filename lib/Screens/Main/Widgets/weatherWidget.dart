import 'package:flutter/material.dart';

class WeatherWidget extends StatefulWidget {
  const WeatherWidget({super.key});

  @override
  State<WeatherWidget> createState() => _WeatherWidgetState();
}

class _WeatherWidgetState extends State<WeatherWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 185,
      decoration: BoxDecoration(
        color: Colors.blueGrey[900],
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.blueGrey,
            offset: Offset(0, 5),
            blurRadius: 2,
          ),
        ],
      ),
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          Positioned(
            top: 0,
            bottom: 0,
            left: 10,
            width: 120,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Spacer(),
                Image.asset(
                  'assets/wheather.png',
                  width: 100,
                ),
                Spacer(),
              ],
            ),
          ),
          Positioned(
            top: 0,
            bottom: 0,
            left: 130,
            width: 60,
            child: Center(
              child: Text(
                '9 °',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            bottom: 0,
            left: 190,
            width: 120,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Spacer(),
                Image.asset(
                  'assets/Moon.png',
                  width: 100,
                ),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: "12",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: " 물",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
          Positioned(
            top: 0,
            bottom: 0,
            left: 310,
            width: 70,
            child: Column(
              children: [
                Spacer(),
                Icon(
                  Icons.location_on,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "해안구",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
          Positioned(
            bottom: 10,
            right: 10,
            width: 60,
            child: Text(
              "더보기 >>",
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
