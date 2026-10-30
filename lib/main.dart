import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Student Profile'),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome to My Profile',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              SizedBox(height: 20),
              Text('Name: Jyoshna', style: TextStyle(fontSize: 20)),
              Text(
                'Branch: Computer Science Engineering',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18),
              ),
              Text('Year: 3rd Year', style: TextStyle(fontSize: 18)),
            ],
          ),
        ),
      ),
    );
  }
}
