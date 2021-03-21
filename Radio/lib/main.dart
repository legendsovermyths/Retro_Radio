import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Radio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 239, 231, 1),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 26,
            child: Container(
              decoration: BoxDecoration(
                  color: Color.fromRGBO(57, 57, 57, 1),
                  border: Border.all(
                    width: 4,
                    color: Color.fromRGBO(238, 137, 80, 1),
                  ),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30))),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 450,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(238, 137, 80, 1),
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(30),
                            bottomLeft: Radius.circular(30))),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "FM",
                                style: TextStyle(
                                    fontFamily: "TitilliumWeb",
                                    fontSize: 32,
                                    fontWeight: FontWeight.w900,
                                    color: Colors.white),
                              ),
                              Icon(
                                Icons.music_note,
                                size: 32,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ),
                        Center(
                          child: Container(
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
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text("Hi")
                ],
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Container(
              decoration:
                  BoxDecoration(color: Color.fromRGBO(244, 239, 231, 1)),
            ),
          )
        ],
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
