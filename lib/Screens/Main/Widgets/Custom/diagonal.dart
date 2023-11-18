import 'package:flutter/material.dart';

class diagonalPainter extends CustomPainter {
  const diagonalPainter();

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..strokeWidth = 1
      ..color = Colors.white
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke;

    Path getPath(double x, double y) {
      Path path = Path()
        ..moveTo(0, y)
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
