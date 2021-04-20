import 'package:flutter/material.dart';

class CircularAlbumCover extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                blurRadius: 10,
                color: Color.fromRGBO(217, 114, 56, 1),
                spreadRadius: 5)
          ]),
      child: CircleAvatar(
        radius: 130,
        backgroundColor: Color.fromRGBO(228, 138, 87, 1),
        child: CircleAvatar(
          backgroundColor: Color.fromRGBO(57, 57, 57, 1),
          radius: 120,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: CircleAvatar(
              radius: 80,
              backgroundImage: NetworkImage(
                  'https://99designs-blog.imgix.net/blog/wp-content/uploads/2017/12/attachment_75094405.jpg?auto=format&q=60&fit=max&w=930'),
              child: Container(
                child: CustomPaint(
                  painter: OpenPainter(),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class OpenPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint1 = Paint()
      ..color = Color.fromRGBO(64, 64, 64, 1)
      ..style = PaintingStyle.stroke;

    //a circle
    paint1.strokeWidth = 2;
    canvas.drawCircle(Offset(0, 0), 100, paint1);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
