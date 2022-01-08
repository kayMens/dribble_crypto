//Author: TheBoringDeveloper, Edited

import 'package:flutter/material.dart';
class CircleTabIndicator extends Decoration {
  final BoxPainter _painter;

  CircleTabIndicator({required Color color, required double radius})
      : _painter = _CirclePainter(color, radius);

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) => _painter;
}

class _CirclePainter extends BoxPainter {
  final Paint _paint;
  final double radius;

  _CirclePainter(Color color, this.radius)
      : _paint = Paint()
    ..color = color
    ..isAntiAlias = true
    ..style = PaintingStyle.fill
    .. strokeWidth = 3;

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration cfg) {
    double xAxisPos = offset.dx + cfg.size!.width / 2;
    double yAxisPos =
        offset.dy + cfg.size!.height / 2 + 8;
    canvas.drawCircle(Offset(xAxisPos, yAxisPos), radius, _paint);
  }
}