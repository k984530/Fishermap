import 'dart:math';

import 'package:flutter/material.dart';

class WaveWidget extends StatefulWidget {
  @override
  _WaveWidgetState createState() => _WaveWidgetState();
}

class _WaveWidgetState extends State<WaveWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    // TODO: implement initState
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 800,
      ),
    );
    _animation =
        Tween<double>(begin: 0, end: 2 * pi).animate(_animationController);

    _animationController.addListener(() {
      setState(() {});
    });
    _animationController.repeat();
    super.initState();
  }

  final double waveHeight = 40;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: waveHeight,
      child: Stack(
        children: [
          Positioned.fill(
            child: ClipPath(
              clipper: WaveClipper(_animation.value),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.blue,
                      const Color.fromARGB(255, 9, 54, 122),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class WaveClipper extends CustomClipper<Path> {
  WaveClipper(this.animationValue);
  final double animationValue;

  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    var p = Path();
    var points = <Offset>[];
    for (var x = 0; x < size.width; x++)
      points
          .add(Offset(x.toDouble(), WaveClipper.getYWithX(x, animationValue)));

    p.moveTo(0, WaveClipper.getYWithX(0, animationValue));
    p.addPolygon(points, false);
    p.lineTo(size.width, size.height);
    p.lineTo(0, size.height);
    return p;
  }

  static const double waveHeight = 25;
  static const double bottleSize = 0;
  static const double waveDouble = 0.05;

  static double getYWithX(int x, double animationValue,
      {double topMargin = bottleSize / 1.5}) {
    // 0 ~ 2pi
    var y = ((sin(animationValue + x * waveDouble) + 1) / 2) * waveHeight +
        topMargin; // 0 ~ 1
    return y;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}
