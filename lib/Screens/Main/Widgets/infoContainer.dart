import 'dart:math';

import 'package:fishermap/Palate.dart';
import 'package:fishermap/Screens/Main/Widgets/Custom/leftEye.dart';
import 'package:fishermap/Screens/Main/Widgets/Custom/leftMouse.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zwidget/zwidget.dart';

class InfoContainer extends StatelessWidget {
  InfoContainer({super.key});
  final Text txt = Text(
    "정보",
    style: TextStyle(
      fontSize: 24,
      color: Colors.white,
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
          ),
          width: 230,
          height: 210,
          decoration: BoxDecoration(
            color: Palate.ContainerColor,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              bottomRight: Radius.circular(20),
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
          left: 25,
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
          right: 2,
          bottom: 25,
          child: CustomPaint(
            size: Size(22, 10),
            painter: leftMousePainter(),
          ),
        ),
        Positioned(
          right: 2,
          bottom: 55,
          child: CustomPaint(
            size: Size(22, 10),
            painter: leftEyePainter(),
          ),
        ),
        Positioned(
          left: 10,
          top: 35,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 35,
                width: 190,
                alignment: Alignment.center,
                child: Text(
                  "2023년 정기교육(주말) 6기(오프라인)",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Container(
                width: 170,
                height: 1,
                color: Colors.white,
              ),
              Container(
                height: 35,
                width: 190,
                alignment: Alignment.center,
                child: Text(
                  "어촌체험휴양마을 숙박시설 귀어귀촌인 제공",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Container(
                width: 170,
                height: 1,
                color: Colors.white,
              ),
              Container(
                height: 35,
                width: 190,
                alignment: Alignment.center,
                child: Text(
                  "2023년 어선청년임대사업 임대용어선 모집공고",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Container(
                width: 170,
                height: 1,
                color: Colors.white,
              ),
              Container(
                height: 35,
                width: 190,
                alignment: Alignment.center,
                child: Text(
                  "2023년 경기도 귀어·귀촌 정착지원(3차) 공고",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Container(
                width: 170,
                height: 1,
                color: Colors.white,
              ),
              Container(
                height: 35,
                width: 190,
                alignment: Alignment.center,
                child: Text(
                  "청년어업인 및 임대용어선 모집공고",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 10,
          right: 10,
          child: GestureDetector(
            onTap: () {
              Get.toNamed('/Information');
            },
            child: Text(
              "더보기",
              style: TextStyle(
                fontSize: 10,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
