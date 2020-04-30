import 'package:flutter/material.dart';
import 'dart:math' as math;

class Smile extends StatelessWidget{

  final isNice;

  Smile({this.isNice});

  @override
  Widget build(BuildContext context) => CustomPaint(
    painter: SmilePainter(isNice: isNice),
    size: Size(300, 300),
  );
}


class SmilePainter extends CustomPainter {
  bool isNice;

  SmilePainter({this.isNice});

  @override
  void paint(Canvas canvas, Size size) {
    final radius = math.min(size.width, size.height) / 2;
    final center = Offset(size.width / 2, size.height / 2);

    final paint = Paint()..color = isNice ? Colors.green : Colors.red;
    canvas.drawCircle(center, radius, paint);

    final smilePaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10;
    canvas.drawArc(
        Rect.fromCircle(
            center: Offset(center.dx, center.dy + (isNice ? radius / 4 : radius / 2)),
            radius: radius / 3),
        isNice ? math.pi / 12 : 13 * math.pi / 12,
        5 * math.pi / 6,
        false,
        smilePaint);

    final eyePaint = Paint()..color = Colors.black;

    canvas.drawCircle(Offset(center.dx - radius / 3, center.dy - radius / 3), 20, eyePaint);
    canvas.drawCircle(Offset(center.dx + radius / 3, center.dy - radius / 3), 20, eyePaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
