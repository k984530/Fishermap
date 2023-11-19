import 'dart:math';

import 'package:fishermap/Palate.dart';
import 'package:fishermap/Screens/Main/Widgets/Custom/leftEye.dart';
import 'package:fishermap/Screens/Main/Widgets/Custom/leftMouse.dart';
import 'package:flutter/material.dart';
import 'package:zwidget/zwidget.dart';

class TradeContainer extends StatefulWidget {
  TradeContainer({super.key});

  @override
  State<TradeContainer> createState() => _TradeContainerState();
}

class _TradeContainerState extends State<TradeContainer> {
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
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: const Color.fromARGB(255, 90, 181, 255),
    ),
  );

  final Text sellTxt = Text(
    "팝니다",
    style: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
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
            color: Palate.ContainerColor,
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
          top: 100,
          left: 10,
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
          left: 10,
          bottom: 20,
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
                      '무게 : ',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                      child: DropdownButton(
                        iconDisabledColor: Colors.white,
                        iconEnabledColor: Colors.white,
                        underline: SizedBox.shrink(),
                        items: [
                          DropdownMenuItem(
                            child: Text(
                              "6톤급",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
                        onChanged: (value) {},
                        elevation: 0,
                      ),
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
          left: 5,
          child: Column(
            children: [
              Text(
                "2500만원",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
              Container(
                width: 70,
                height: 1,
                color: Colors.white,
              ),
              Text(
                "2600만원",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 25,
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
        Positioned(
          bottom: 60,
          right: 5,
          child: Column(
            children: [
              Text(
                "위치",
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 50,
                child: Row(
                  children: [
                    Text(
                      "무관",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_drop_down,
                      color: Colors.white,
                      size: 23,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
