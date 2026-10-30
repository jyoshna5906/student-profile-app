
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimationPage(),
    );
  }
}

class AnimationPage extends StatefulWidget {
  @override
  State<AnimationPage> createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage> {
  bool showBox = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Animations'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              opacity: showBox ? 1.0 : 0.0,
              duration: Duration(seconds: 1),
              child: Container(
                height: 100,
                width: 100,
                color: Colors.blue,
                child: Center(
                  child: Text(
                    'Hello',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            AnimatedSlide(
              offset: showBox ? Offset(0, 0) : Offset(1, 0),
              duration: Duration(seconds: 1),
              child: Container(
                height: 80,
                width: 80,
                color: Colors.orange,
                child: Icon(Icons.star, color: Colors.white, size: 40),
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  showBox = !showBox;
                });
              },
              child: Text('Start Animation'),
            ),
          ],
        ),
      ),
    );
  }
}
