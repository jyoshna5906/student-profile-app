import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Unit Testing'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to Flutter',
              key: Key('welcomeText'),
              style: TextStyle(fontSize: 22),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              key: Key('testButton'),
              onPressed: () {},
              child: Text('Click Me'),
            ),
          ],
        ),
      ),
    );
  }
}