
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// Provider class
class CounterProvider extends ChangeNotifier {
  int count = 0;

  void increment() {
    count++;
    notifyListeners();
  }
}

// Main function
void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CounterProvider(),
      child: MyApp(),
    ),
  );
}

// Stateless Widget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterScreen(),
    );
  }
}

// Stateful Widget
class CounterScreen extends StatefulWidget {
  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int localCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('State Management'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Using setState()'),
            Text(
              '$localCount',
              style: TextStyle(fontSize: 30),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  localCount++;
                });
              },
              child: Text('Increment Local'),
            ),
            SizedBox(height: 30),
            Text('Using Provider'),
            Consumer<CounterProvider>(
              builder: (context, counter, child) {
                return Text(
                  '${counter.count}',
                  style: TextStyle(fontSize: 30),
                );
              },
            ),
            ElevatedButton(
              onPressed: () {
                context.read<CounterProvider>().increment();
              },
              child: Text('Increment Provider'),
            ),
          ],
        ),
      ),
    );
  }
}
