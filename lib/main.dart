import 'package:flutter/material.dart';
import 'screens/joke_types.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Random Jokes App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const JokeTypesScreen(),
    );
  }
}