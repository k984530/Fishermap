import 'dart:math';

import 'package:flutter/material.dart';
import 'package:zwidget/zwidget.dart';

class TownContainer extends StatelessWidget {
  TownContainer({super.key});
  final Text txt = Text(
    "어촌 마을",
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
          width: 160,
          height: 265,
          margin: EdgeInsets.only(
            top: 15,
          ),
          decoration: BoxDecoration(
            color: Color.fromARGB(238, 0, 3, 10),
            borderRadius: BorderRadius.circular(20),
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
          left: 16,
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
        Text(
          "어촌 체험, 안내 \n어획량 예측, 어종 예측",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        Positioned(
          top: 50,
          child: Container(
            width: 150,
            height: 150,
            child: Image.asset(
              'assets/village.png',
            ),
          ),
        ),
      ],
    );
  }
}
