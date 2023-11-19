import 'package:fishermap/Palate.dart';
import 'package:flutter/material.dart';

class TownScreen extends StatelessWidget {
  const TownScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Palate.ContainerColor,
      ),
      body: Stack(
        children: [
          Container(
            color: Palate.ContainerColor,
            alignment: Alignment.center,
            child: Image.asset(
              'assets/heatmap.png',
              fit: BoxFit.fill,
              height: MediaQuery.of(context).size.height - 350,
              width: MediaQuery.of(context).size.width - 20,
            ),
          ),
          Positioned(
            left: 60,
            bottom: 330,
            child: Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(23),
              ),
              child: Image.asset('assets/fish1.png'),
            ),
          ),
          Positioned(
            right: 60,
            bottom: 280,
            child: Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(23),
              ),
              child: Image.asset('assets/fish2.png'),
            ),
          ),
          Positioned(
            left: 180,
            bottom: 180,
            child: Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(23),
              ),
              child: Image.asset('assets/fish3.png'),
            ),
          ),
          Positioned(
            right: 50,
            top: 250,
            child: Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(23),
              ),
              child: Image.asset('assets/fish5.png'),
            ),
          ),
          Positioned(
            right: 0,
            left: 0,
            top: 50,
            child: Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(23),
              ),
              alignment: Alignment.center,
              child: Text(
                "구역별 어종 예측 A.I. 서비스",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
