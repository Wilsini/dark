import 'package:flutter/material.dart';

class MikkelPage extends StatefulWidget {
  const MikkelPage({super.key});

  @override
  State<MikkelPage> createState() => _MikkelPageState();
}

class _MikkelPageState extends State<MikkelPage> {
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
              _mikkel(),
              _info(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _mikkel() {
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
                placeholder: AssetImage('images/m2.jpg'),
                image: AssetImage('images/m2.jpg'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Mikkel Nielsen',
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
              'Mikkel es el hermano pequeño de Martha e hijo de Ulrich y Katharina, que termina viajando en el tiempo en los 80 después de entrar por el agujero de gusano en una cueva en el bosque. Ahí, Mikkel es adoptado por Ines Kahnwald y conoce a Hannah, la mamá de Jonas. Mikkel se convierte en Michael, se casa con Hanna y tienen a Jonas. En 2019, Michael es visitado por el jonas del futuro, quien le cuenta lo que va a pasar y le muestra la carta de suicidio que escribió.',
              textAlign: TextAlign.justify,
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}