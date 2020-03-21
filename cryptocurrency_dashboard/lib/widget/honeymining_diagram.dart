import 'dart:ui';

import 'package:cryptocurrency_dashboard/model/CoinStatic.dart';
import 'package:flutter/material.dart';
import 'package:cryptocurrency_dashboard/model/honeymining_diagram_tool.dart';
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
      // color: Colors.redAccent,
      height: 560,
      child: Container(
        alignment: Alignment.bottomCenter,
        child: CustomPaint(
          painter: HoneyMiningTextPainter(),
          child: Container(
            padding: EdgeInsets.all(4.0),
            margin: EdgeInsets.symmetric(vertical: 48, horizontal: 40),
            child: CustomPaint(
              painter: HoneyMiningBGPainter(),
              child: CustomPaint(
                size: Size(436, 436),
                painter: HoneyMiningPainter(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class HoneyMiningTextPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..isAntiAlias = true
      ..style = PaintingStyle.fill
      ..color = Colors.white;
    canvas.drawRect(Offset.zero & size, paint);

    final List<Offset> points =
        HoneyminingDiagramTool.generatePoints(size: size);

    // Draw vertical texts
    _drawText(
      canvas,
      data: coinStatics[0],
      point: Offset(points[0].dx - 50, points[0].dy),
    );
    _drawText(
      canvas,
      data: coinStatics[4],
      point: Offset(points[4].dx - 50, points[4].dy - 20),
    );

    // Draw horizontal texts
    final dy = (size.width - size.height) / 2;
    _drawText(canvas,
        data: coinStatics[2],
        point: Offset(points[2].dx - 10, points[2].dy - dy - 10),
        align: TextAlign.right);
    _drawText(
      canvas,
      data: coinStatics[6],
      point: Offset(points[6].dx - 90, points[6].dy - dy - 10),
      align: TextAlign.left,
    );

    for (var i = 0; i < points.length; i++) {
      if (i % 2 == 0) continue;
      final dx = i < 4 ? 10 : 90;
      _drawText(
        canvas,
        data: coinStatics[i],
        point: Offset(points[i].dx - dx, points[i].dy),
      );
    }
  }

  void _drawText(
    Canvas canvas, {
    CoinStatic data,
    Offset point,
    TextAlign align = TextAlign.center,
  }) {
    TextPainter(
      text: TextSpan(
        text: data.name,
        style: TextStyle(
          color: data.color,
          fontSize: 11.0,
          fontWeight: FontWeight.w600,
        ),
      ),
      textAlign: align,
      textDirection: TextDirection.ltr,
    )
      ..layout(minWidth: 100)
      ..paint(canvas, point);
  }

  @override
  bool shouldRepaint(HoneyMiningTextPainter oldDelegate) => false;
}

class HoneyMiningBGPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final radius = size.width * 0.5;

    final center = Offset(radius, radius);
    var paint = Paint()
      ..isAntiAlias = true
      ..style = PaintingStyle.fill
      ..color = AppColors.grey.withOpacity(0.15);
    canvas.drawCircle(center, radius, paint);

    paint
      ..style = PaintingStyle.stroke
      ..color = AppColors.grey.withOpacity(0.6);
    canvas.drawCircle(center, radius - 2, paint);
    canvas.drawCircle(center, radius - 58, paint);
    canvas.drawCircle(center, radius - 126, paint);
    canvas.drawCircle(center, radius - 192, paint);

    final List<Offset> points =
        HoneyminingDiagramTool.generatePoints(size: size);
    canvas.drawLine(points[0], points[4], paint);
    canvas.drawLine(points[1], points[5], paint);
    canvas.drawLine(points[2], points[6], paint);
    canvas.drawLine(points[3], points[7], paint);

    final colors = coinStatics.map((e) => e.color).toList();
    paint.style = PaintingStyle.fill;

    for (var i = 0; i < colors.length; i++) {
      paint.color = colors[i];
      canvas.drawCircle(points[i], 4, paint);
    }
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
      ..lineTo(points[7].dx, points[7].dy)
      ..lineTo(points[8].dx, points[8].dy);
    canvas.drawPath(path, paint);

    //渐变线条
    paint
      ..color = AppColors.purple
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
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
    canvas.drawLine(points[7], points[8], paint);
    canvas.drawLine(points[8], points[0], paint);
  }

  @override
  bool shouldRepaint(HoneyMiningPainter oldDelegate) => false;
}
