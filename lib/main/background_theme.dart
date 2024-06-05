import 'package:flutter/material.dart';
import 'dart:math';

class StarsPainter extends CustomPainter {
  final int numberOfStars;

  StarsPainter({this.numberOfStars = 100});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = Colors.white;
    final random = Random();

    for (int i = 0; i < numberOfStars; i++) {
      final dx = random.nextDouble() * size.width;
      final dy = random.nextDouble() * size.height;
      canvas.drawCircle(Offset(dx, dy), 2, paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
