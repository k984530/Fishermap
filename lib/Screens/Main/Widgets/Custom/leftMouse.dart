import 'package:flutter/material.dart';

class leftMousePainter extends CustomPainter {
  const leftMousePainter();

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..strokeWidth = 4
      ..color = Colors.white
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke;

    Path getPath(double x, double y) {
      Path path = Path()
        ..arcToPoint(Offset(-x / 2, -y), radius: Radius.circular(20))
        ..moveTo(0, 0)
        ..lineTo(x, 0);

      return path;
    }

    // final path = Path()
    //   ..arcToPoint(Offset(x, y), radius: Radius.circular(20))
    //   ..lineTo(x, y);
    canvas.drawPath(getPath(size.width, size.height), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
