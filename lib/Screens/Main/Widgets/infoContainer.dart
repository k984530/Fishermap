import 'dart:math';

import 'package:fishermap/Palate.dart';
import 'package:fishermap/Screens/Main/Widgets/Custom/leftEye.dart';
import 'package:fishermap/Screens/Main/Widgets/Custom/leftMouse.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zwidget/zwidget.dart';

import '../../../Palate.dart';

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
                  "귀어귀촌 캐릭터 '귀어해'를 소개합니다.",
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
                  "[공지] 2023년도 경상남도 귀어학교 제 3기 심화교육(선내·외기) 교육생 모집 공고",
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
                  "[공지] 창원시 어촌에서 살아보기(귀어인의 집) 입주희망자 모집",
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
                  "2023년 정기교육(주말) 6기(오프라인,부산) 교육생 모집 안내(강의일시 : 11월 25일 토요일)",
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
                  "2023년 정기교육(평일) 15기(오프라인,부산) 교육생 모집 안내(강의일시 : 11월 24일 금요일)",
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
