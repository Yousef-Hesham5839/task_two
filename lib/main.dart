import 'package:flutter/material.dart';
import 'package:task_two/views/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.blueAccent)),
      home: const MovieLibrary(),
    );
  }
}

class MovieLibrary extends StatelessWidget {
  const MovieLibrary({super.key});

  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}
