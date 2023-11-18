import 'dart:math';

import 'package:fishermap/Screens/Main/Widgets/Custom/rightEye.dart';
import 'package:fishermap/Screens/Main/Widgets/Custom/rightMouse.dart';
import 'package:fishermap/Screens/Main/Widgets/Custom/waveWidget.dart';
import 'package:flutter/material.dart';
import 'package:zwidget/zwidget.dart';

import '../../../Palate.dart';

class AIContainer extends StatelessWidget {
  AIContainer({super.key});

  final Text txt = Text(
    "지역별 해안 정보",
    style: TextStyle(
      fontSize: 24,
      color: Colors.white,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          width: 210,
          height: 265,
          margin: EdgeInsets.only(top: 15),
          decoration: BoxDecoration(
            color: Palate.ContainerColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              bottomLeft: Radius.circular(20),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.blueGrey,
                offset: Offset(0, 5),
                blurRadius: 2,
              ),
            ],
          ),
        ),
        Positioned(
          left: 24,
          bottom: 25,
          child: CustomPaint(
            size: Size(22, 10),
            painter: rightMousePainter(),
          ),
        ),
        Positioned(
          left: 22,
          bottom: 55,
          child: CustomPaint(
            size: Size(22, 10),
            painter: rightEyePainter(),
          ),
        ),
        Positioned(
          right: 15,
          top: 0,
          child: ZWidget.forwards(
            midChild: txt,
            midToTopChild: txt,
            topChild: txt,
            rotationX: -pi / 22,
            layers: 2,
            depth: 10,
          ),
        ),
        Positioned(
          top: 45,
          left: 25,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Transform.rotate(
                angle: 55 * pi / 180,
                child: Image.asset(
                  'assets/arrow.png',
                  width: 60,
                  height: 60,
                ),
              ),
              Text(
                "풍향 : 북북동",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              Text(
                "풍속 : 3m/s",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 45,
          right: 25,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 80,
                height: 60,
                child: WaveWidget(),
              ),
              Text(
                "파향 : 북북동",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              Text(
                "파속 : 3m/s",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              Text(
                "파고 : 4m",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              Text(
                '수온 : 9 °',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          right: 10,
          bottom: 10,
          child: Text(
            "더보기 >>",
            style: TextStyle(
              color: Colors.white,
              fontSize: 10,
            ),
          ),
        ),
        // Text(
        //   "풍향, 풍속, 파향, 파속, 파고\n라니냐 엘니뇨 적조 알림",
        //   style: TextStyle(
        //     color: Colors.white,
        //   ),
        // ),
      ],
    );
  }
}
