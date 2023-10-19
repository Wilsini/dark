import 'package:flutter/material.dart';

class Vida extends StatefulWidget {
  const Vida({super.key});

  @override
  State<Vida> createState() => _VidaState();
}

class _VidaState extends State<Vida> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('current vida: $count'),
        FilledButton.tonal(
            onPressed: () {
              setState(() {
                count++;
              });
            },
            child: const Icon(Icons.add))
      ],
    ));
  }
}