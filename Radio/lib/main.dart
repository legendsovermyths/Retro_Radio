import 'package:flutter/material.dart';
import 'AlbumCover.dart';

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
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Container(
                              height: 300,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                physics: NeverScrollableScrollPhysics(),
                                children: [
                                  // CircularAlbumCover(),
                                  CircularAlbumCover(),
                                  // CircularAlbumCover(),
                                ],
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
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Icon(
                      Icons.favorite_rounded,
                      color: Colors.black,
                      size: 30,
                    ),
                    CircleAvatar(
                      radius: 40,
                      backgroundColor: Color.fromRGBO(238, 137, 80, 1),
                      child: Icon(
                        Icons.play_arrow_rounded,
                        color: Colors.black,
                        size: 40,
                      ),
                    ),
                    Icon(
                      Icons.skip_next_rounded,
                      color: Colors.black,
                      size: 40,
                    )
                  ]),
            ),
          )
        ],
      ),
    );
  }
}
