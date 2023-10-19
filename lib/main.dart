import 'package:dark/presentation/screens/main_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const tarea());

class tarea extends StatelessWidget {
  const tarea({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Color.fromARGB(255, 0, 0, 0), 
      ),
      home: const MainScreen(),
    );
  }
}

