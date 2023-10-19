import 'package:flutter/material.dart';

class UlrichPage extends StatefulWidget {
  const UlrichPage({super.key});

  @override
  State<UlrichPage> createState() => _UlrichPageState();
}

class _UlrichPageState extends State<UlrichPage> {
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
              _ulrich(),
              _info(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _ulrich() {
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
                placeholder: AssetImage('images/u2.jpg'),
                image: AssetImage('images/u2.jpg'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Ulrich Nielsen',
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
              'Ulrich Nielsen es un oficial de policía muy testarudo, Esta Casado con Katharina Nielsen, pero desde el principio mantiene un romance con Hannah Kahnwald, era un hombre de familia despreocupado y amoroso (Aunque muy infiel), pero pese a esto mantiene un fuerte trauma, dado que en su adolescencia experimento la desaparición de su hermano menor, esto provocó que volviera Impudente y muy obsesivo.',
              textAlign: TextAlign.justify,
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
