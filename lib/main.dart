
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// Main Theme
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: HomePage(),
    );
  }
}

// Custom Widget
class ProfileCard extends StatelessWidget {
  final String name;
  final String course;
  final IconData icon;

  ProfileCard({
    required this.name,
    required this.course,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      elevation: 4,
      child: ListTile(
        leading: Icon(icon, color: Colors.blue, size: 35),
        title: Text(
          name,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(course),
      ),
    );
  }
}

// Home Screen
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Widgets'),
      ),
      body: Column(
        children: [
          ProfileCard(
            name: 'Jyoshna',
            course: 'B.Tech CSE',
            icon: Icons.person,
          ),
          ProfileCard(
            name: 'Student',
            course: 'Flutter Development',
            icon: Icons.school,
          ),
        ],
      ),
    );
  }
}
