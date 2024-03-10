import 'package:fastdelivery/presentation/widgets/font/kcolor.dart';
import 'package:flutter/material.dart';

class WavyBorderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..shader = const LinearGradient(
        colors: [
          kredsale,
          kredsale,
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ).createShader(Rect.fromLTWH(0, 0, size.width, size.height))
      ..style = PaintingStyle.fill;

    Path path = Path()
      ..moveTo(0, 0)
      ..lineTo(0, 20)
      ..quadraticBezierTo(0, size.height - 20, -100, size.height - 20)
      ..quadraticBezierTo(0, size.height - 20, size.width, size.height - 20)
      ..lineTo(size.width, 0)
      ..lineTo(20, 0)
      ..quadraticBezierTo(0, 0, 0, 0)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
