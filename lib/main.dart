
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsivePage(),
    );
  }
}

class ResponsivePage extends StatelessWidget {
  const ResponsivePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Responsive UI"),
        backgroundColor: Colors.blue,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          bool isWide = constraints.maxWidth > 600;

          return Center(
            child: isWide
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.person,
                          size: 100, color: Colors.blue),
                      const SizedBox(width: 20),
                      profileDetails(),
                    ],
                  )
                : Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.person,
                          size: 100, color: Colors.blue),
                      const SizedBox(height: 20),
                      profileDetails(),
                    ],
                  ),
          );
        },
      ),
    );
  }

  Widget profileDetails() {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text("Jyoshna",
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold)),
        Text("CSE - 3rd Year"),
        Text("Responsive Flutter Application"),
      ],
    );
  }
}
