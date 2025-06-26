import 'package:flutter/material.dart';

class DashedDivider extends StatelessWidget {
  final double height;
  final Color color;

  const DashedDivider({Key? key, this.height = 1, this.color = Colors.grey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(double.infinity, height),
      painter: _DashedLinePainter(color: color, height: height),
    );
  }
}

class _DashedLinePainter extends CustomPainter {
  final double height;
  final Color color;

  _DashedLinePainter({required this.color, required this.height});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = height;

    const dashWidth = 5;
    const dashSpace = 3;
    double startX = 0;

    while (startX < size.width) {
      canvas.drawLine(Offset(startX, 0), Offset(startX + dashWidth, 0), paint);
      startX += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
