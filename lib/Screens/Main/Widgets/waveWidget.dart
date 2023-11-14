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
        milliseconds: 5000,
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

  final double waveHeight = 600;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: waveHeight,
      child: Stack(
        children: [
          Positioned.fill(
            child: Container(
              child: ClipPath(
                clipper: WaveClipper(_animation.value),
                child: Container(
                  color: Colors.blue[600],
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

  static const double waveHeight = 60;
  static const double bottleSize = 80;
  static const double waveDouble = 0.01;

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
