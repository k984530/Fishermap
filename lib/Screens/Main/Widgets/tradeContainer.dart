import 'dart:math';

import 'package:fishermap/Screens/Main/Widgets/Custom/eyes.dart';
import 'package:fishermap/Screens/Main/Widgets/Custom/mouse.dart';
import 'package:flutter/material.dart';
import 'package:zwidget/zwidget.dart';

class TradeContainer extends StatelessWidget {
  TradeContainer({super.key});
  final Text txt = Text(
    "어선",
    style: TextStyle(
      fontSize: 24,
      color: Colors.white,
    ),
  );
  final Text buyTxt = Text(
    "삽니다",
    style: TextStyle(
      fontSize: 24,
      color: const Color.fromARGB(255, 90, 181, 255),
    ),
  );
  final Text sellTxt = Text(
    "팝니다",
    style: TextStyle(
      fontSize: 24,
      color: Colors.red,
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topCenter,
      children: [
        Container(
          margin: EdgeInsets.only(
            top: 15,
            bottom: 15,
          ),
          width: 140,
          height: 210,
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
          top: 95,
          left: 20,
          child: ZWidget.forwards(
            midChild: buyTxt,
            midToTopChild: buyTxt,
            topChild: buyTxt,
            rotationX: -pi / 22,
            layers: 2,
            depth: 10,
          ),
        ),
        Positioned(
          left: 0,
          bottom: 0,
          child: ZWidget.forwards(
            midChild: sellTxt,
            midToTopChild: sellTxt,
            topChild: sellTxt,
            rotationX: -pi / 22,
            layers: 2,
            depth: 10,
          ),
        ),
        Positioned(
          top: 5,
          right: 25,
          child: Image.asset(
            'assets/ship.png',
            width: 50,
          ),
        ),
        Positioned(
          top: 45,
          left: 10,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 120,
                child: Row(
                  children: [
                    Text(
                      '무게 : 6톤 급',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_drop_down,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Row(
                  children: [
                    Text(
                      '허가 : 연합복합',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_drop_down,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 140,
          left: 15,
          child: Column(
            children: [
              Text(
                "2500만원\n\n2700만원",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 35,
          right: 10,
          child: Text(
            "더보기 >>",
            style: TextStyle(
              fontSize: 10,
              color: Colors.white,
            ),
          ),
        ),
        Positioned(
          top: 105,
          right: 20,
          child: Container(
            width: 20,
            height: 20,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.5),
              border: Border.all(
                color: Colors.white,
                width: 2,
              ),
            ),
            child: Icon(
              Icons.question_mark_sharp,
              color: Colors.white,
              size: 13,
            ),
          ),
        ),
      ],
    );
  }
}