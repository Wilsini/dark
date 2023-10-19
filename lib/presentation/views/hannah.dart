import 'package:flutter/material.dart';

class HannahPage extends StatefulWidget {
  const HannahPage({super.key});

  @override
  State<HannahPage> createState() => _HannahPageState();
}

class _HannahPageState extends State<HannahPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
          color: Colors.white,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: [
              _hannah(),
              _info(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _hannah() {
    return Card(
      color: Colors.black,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              child: FadeInImage(
                placeholder: AssetImage('images/h2.png'),
                image: AssetImage('images/h2.png'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Hannah Nielsen',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Color.fromARGB(255, 202, 200, 200),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _info() {
    return Card(
      color: Colors.black,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              'Hannah es la madre de nuestro Protagonista Jonas, Nació en el año de 1972 siendo la hija de Sebastián Kruger, pero al crecer se casó con Michael Kahnwald, tomando su apellido y formando junto con él y su hijo una pequeña familia dentro del pueblo de Winden, pero a pesar de ser una familia aparentemente sencilla tuvo en esta serie muchas complicaciones.',
              textAlign: TextAlign.justify,
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}