import 'dart:math';
import 'package:flutter/material.dart';

class HoneyminingDiagramTool {
  static List<Offset> diagramDataPoints({Size size}) {
    final radius = size.width * 0.5;
    final p1 = Offset(
      radius,
      radius - radius * datas[0],
    );
    final p2 = Offset(
      radius + cos(pi / 4) * radius * datas[1],
      radius - sin(pi / 4) * radius * datas[1],
    );
    final p3 = Offset(
      radius + radius * datas[2],
      radius,
    );
    final p4 = Offset(
      radius + cos(pi / 4) * radius * datas[3],
      radius + sin(pi / 4) * radius * datas[3],
    );
    final p5 = Offset(
      radius,
      radius + radius * datas[4],
    );
    final p6 = Offset(
      radius - cos(pi / 4) * radius * datas[5],
      radius + sin(pi / 4) * radius * datas[5],
    );
    final p7 = Offset(
      radius - radius * datas[6],
      radius,
    );
    final p8 = Offset(
      radius - cos(pi / 4) * radius * datas[7],
      radius - sin(pi / 4) * radius * datas[7],
    );

    return [p1, p2, p3, p4, p5, p6, p7, p8];
  }

  static List<Offset> generatePoints({Size size}) {
    final radius = size.width * 0.5;
    final p1 = Offset(radius, 0);
    final p2 = Offset((1 + cos(pi / 4)) * radius, (1 - sin(pi / 4)) * radius);
    final p3 = Offset(size.width, radius);
    final p4 = Offset((1 + cos(pi / 4)) * radius, (1 + sin(pi / 4)) * radius);
    final p5 = Offset(radius, size.height);
    final p6 = Offset((1 - cos(pi / 4)) * radius, (1 + sin(pi / 4)) * radius);
    final p7 = Offset(0, radius);
    final p8 = Offset((1 - cos(pi / 4)) * radius, (1 - sin(pi / 4)) * radius);

    return [p1, p2, p3, p4, p5, p6, p7, p8];
  }
}

final List<double> datas = [0.4, 0.9, 0.58, 0.4, 0.7, 0.66, 0.68, 0.7];
