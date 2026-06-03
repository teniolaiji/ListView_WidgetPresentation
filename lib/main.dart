import 'package:flutter/material.dart';
import 'home.dart';

// Entry point of the app.
void main() {
  runApp(const MyApp());
}

// Root widget. Sets up the MaterialApp and points to HomeScreen.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.teal, useMaterial3: true),
      home: const HomeScreen(),
    );
  }
}