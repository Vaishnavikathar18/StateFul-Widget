import 'package:flutter/material.dart';

void main() {
  runApp(const AppbarColorApp());
}

class AppbarColorApp extends StatefulWidget {
  const AppbarColorApp({super.key});

  @override
  State<AppbarColorApp> createState() => _AppbarColorAppState();
}

class _AppbarColorAppState extends State<AppbarColorApp> {
  bool colorChange = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Appbar Color App", // Fixed title
      debugShowCheckedModeBanner: false, // Corrected property spelling
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Appbar Color App"),
          backgroundColor: colorChange ? Colors.amber : Colors.blue, // Fixed colorChange logic and syntax
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Change Appbar color"),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              colorChange = !colorChange; // Toggle color
            });
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
