import 'dart:math';

import 'package:cryptocurrency_dashboard/model/honeymining_diagram_tool.dart';
import 'package:flutter/material.dart';
import 'package:cryptocurrency_dashboard/widget/colors.dart';

class HoneyminingDiagram extends StatefulWidget {
  HoneyminingDiagram({Key key}) : super(key: key);

  @override
  _HoneyminingDiagramState createState() => _HoneyminingDiagramState();
}

class _HoneyminingDiagramState extends State<HoneyminingDiagram> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 560,
      alignment: Alignment.center,
      child: CustomPaint(
        size: Size(438, 438),
        painter: HoneyMiningBGPainter(),
        child: CustomPaint(
          size: Size(438, 438),
          painter: HoneyMiningPainter(),
        ),
      ),
    );
  }
}

class HoneyMiningBGPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final radius = size.width * 0.5 - 2;

    final center = Offset(radius, radius);
    var paint = Paint()
      ..isAntiAlias = true
      ..style = PaintingStyle.fill
      ..color = AppColors.grey.withOpacity(0.15);
    canvas.drawCircle(center, radius, paint);

    paint
      ..style = PaintingStyle.stroke
      ..color = AppColors.grey.withOpacity(0.6);
    canvas.drawCircle(center, radius, paint);
    canvas.drawCircle(center, radius - 58, paint);
    canvas.drawCircle(center, radius - 126, paint);
    canvas.drawCircle(center, radius - 192, paint);

    final List<Offset> points =
        HoneyminingDiagramTool.generatePoints(size: size);
    canvas.drawLine(points[0], points[4], paint);
    canvas.drawLine(points[1], points[5], paint);
    canvas.drawLine(points[2], points[6], paint);
    canvas.drawLine(points[3], points[7], paint);

    paint
      ..color = Colors.orange
      ..style = PaintingStyle.fill;
    points.forEach((c) {
      canvas.drawCircle(c, 4, paint);
    });
  }

  @override
  bool shouldRepaint(HoneyMiningBGPainter oldDelegate) => false;
}

class HoneyMiningPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..isAntiAlias = true
      ..style = PaintingStyle.fill
      ..color = AppColors.purple.withOpacity(0.4);

    final points = HoneyminingDiagramTool.diagramDataPoints(size: size);
    // 背景填充
    var path = Path()
      ..moveTo(points[0].dx, points[0].dy)
      ..lineTo(points[1].dx, points[1].dy)
      ..lineTo(points[2].dx, points[2].dy)
      ..lineTo(points[3].dx, points[3].dy)
      ..lineTo(points[4].dx, points[4].dy)
      ..lineTo(points[5].dx, points[5].dy)
      ..lineTo(points[6].dx, points[6].dy)
      ..lineTo(points[7].dx, points[7].dy);
    canvas.drawPath(path, paint);

    //渐变线条
    paint
      ..color = AppColors.purple
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3
      ..shader = LinearGradient(
        begin: Alignment.centerRight,
        end: Alignment.centerLeft,
        colors: [AppColors.purple, AppColors.orange],
        stops: [0, 1],
      ).createShader(Offset.zero & size);

    canvas.drawLine(points[0], points[1], paint);
    canvas.drawLine(points[1], points[2], paint);
    canvas.drawLine(points[2], points[3], paint);
    canvas.drawLine(points[3], points[4], paint);
    canvas.drawLine(points[4], points[5], paint);
    canvas.drawLine(points[5], points[6], paint);
    canvas.drawLine(points[6], points[7], paint);
    canvas.drawLine(points[7], points[0], paint);
  }

  @override
  bool shouldRepaint(HoneyMiningPainter oldDelegate) => false;
}
