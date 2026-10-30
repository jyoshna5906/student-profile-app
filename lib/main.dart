
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
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 20),

                // Stack and Container widgets
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Container(
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                        color: Colors.blue.shade100,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.person,
                        size: 90,
                        color: Colors.blue,
                      ),
                    ),
                    const CircleAvatar(
                      radius: 18,
                      backgroundColor: Colors.green,
                      child: Icon(
                        Icons.check,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 15),

                const Text(
                  'Jyoshna',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const Text(
                  'Computer Science Engineering',
                  textAlign: TextAlign.center,
                ),

                const SizedBox(height: 25),

                // Container, Column, Row and Icon widgets
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade50,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.school, color: Colors.blue),
                          SizedBox(width: 12),
                          Text('Year: 3rd Year'),
                        ],
                      ),
                      SizedBox(height: 15),
                      Row(
                        children: [
                          Icon(Icons.computer, color: Colors.blue),
                          SizedBox(width: 12),
                          Text('Branch: CSE'),
                        ],
                      ),
                      SizedBox(height: 15),
                      Row(
                        children: [
                          Icon(Icons.email, color: Colors.blue),
                          SizedBox(width: 12),
                          Text('Email: student@example.com'),
                        ],
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 25),

                ClipRRect(
  borderRadius: BorderRadius.circular(12),
  child: Image.asset(
    'assets/profile.png',
    width: 120,
    height: 120,
    fit: BoxFit.cover,
  ),
),

                const SizedBox(height: 20),

                const Text(
                  'Welcome to My Profile!',
                  style: TextStyle(fontSize: 18),
                ),

                const SizedBox(height: 25),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
