import 'package:flutter/material.dart';

class WindPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..strokeWidth = 6
      ..color = Colors.white
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke;

    Path getPath(double x, double y) {
      Path path = Path()
        ..lineTo(-x, 0)
        ..moveTo(0, 0)
        ..arcToPoint(
          Offset(-x, y),
          radius: Radius.circular(20),
        );

      return path;
    }

    // final path = Path()
    //   ..arcToPoint(Offset(x, y), radius: Radius.circular(20))
    //   ..lineTo(x, y);
    canvas.drawPath(getPath(size.width, size.height), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    throw UnimplementedError();
  }
}
