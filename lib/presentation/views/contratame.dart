import 'package:flutter/material.dart';

class Contratame extends StatefulWidget {
  const Contratame({super.key});

  @override
  State<Contratame> createState() => _ContratameState();
}

class _ContratameState extends State<Contratame> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const CircleAvatar(
            radius: 75,
            backgroundImage: AssetImage('images/a.jpg'),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 3.0), 
            child: const Text(
              'Wilson Paniagua Rafael',
              style: TextStyle(fontSize: 15, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 3.0), 
            child: const Text(
              'Wilsonm1346@gmail.com',
              style: TextStyle(fontSize: 15, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 3.0), 
            child: const Text(
              'Contrátenme que uno e duro de vez en cuando',
              style: TextStyle(fontSize: 15, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
