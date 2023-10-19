import 'package:flutter/material.dart';

class BartoszPage extends StatefulWidget {
  const BartoszPage({super.key});

  @override
  State<BartoszPage> createState() => _BartoszPageState();
}

class _BartoszPageState extends State<BartoszPage> {
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
              _bartosz(),
              _info(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _bartosz() {
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
                placeholder: AssetImage('images/b2.png'),
                image: AssetImage('images/b2.png'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Bartosz Tiedemann',
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
              'Bartosz Tiedemann Nació en el Año 2003 Siendo el Único Hijo de Regina y Aleksander Tiedemann, Es un estudiante de la escuela Integral de Winden y el mejor amigo del protagonista Jonas Kahnwald, Bartosz al igual que muchos en esta serie también fue un viajante, pero con la diferencia de que ese siempre estuvo al tanto que estaba siendo manipulado, y aun así nunca logro tener el coraje suficiente para salir de su situación.',
              textAlign: TextAlign.justify,
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
