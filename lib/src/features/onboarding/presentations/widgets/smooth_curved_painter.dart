import 'package:flutter/material.dart';

class SmoothCurvedPainter extends CustomPainter {
  final Color color;

  SmoothCurvedPainter({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    var path = Path();
    path.moveTo(0, 0);
    path.lineTo(0, size.height - 50);
    path.quadraticBezierTo(size.width / 2, size.height, size.width, size.height - 50);
    path.lineTo(size.width, 0);
    path.close();

    canvas.drawPath(path, paint);

    // Dessiner le texte
    var textPainter = TextPainter(
      text: const TextSpan(
        text: 'FITMETRICS',
        style: TextStyle(
          color: Colors.white,
          fontSize: 24,
        ),
      ),
      textDirection: TextDirection.ltr,
    );
    textPainter.layout(minWidth: 0, maxWidth: size.width);

    var textOffset = Offset(
      (size.width - textPainter.width) / 2,
      (size.height - textPainter.height) / 2,
    );

    textPainter.paint(canvas, textOffset);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
