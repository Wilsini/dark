import 'package:flutter/material.dart';

class JonasPage extends StatefulWidget {
  const JonasPage({super.key});

  @override
  State<JonasPage> createState() => _JonasPageState();
}

class _JonasPageState extends State<JonasPage> {
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
              _jonas(),
              _info(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _jonas() {
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
                placeholder: AssetImage('images/j2.jpg'),
                image: AssetImage('images/j2.jpg'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Jonas Kahnwald',
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
              'Jonas Kahnwald, nuestro protagonista de esta historia, lo conocimos como el Hijo de Michael y Hannah Kahnwald, de adolescente siempre fue una persona muy reflexiva, pero la vida lo golpeó con una tragedia que cambiaria su Historia por completo, pues su padre Michael Kahnwald decide terminar con su propia vida, cosa que dejo a Jonas Traumatizado, hasta el punto de necesitar tratamiento psicológico',
              textAlign: TextAlign.justify,
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}