import 'package:flutter/material.dart';

class MarthaPage extends StatefulWidget {
  const MarthaPage({super.key});

  @override
  State<MarthaPage> createState() => _MarthaPageState();
}

class _MarthaPageState extends State<MarthaPage> {
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
              _martha(),
              _info(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _martha() {
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
              child: Image.asset('images/ma2.png'), 
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Martha Nielsen',
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
              'Martha Nielsen, Nació en el Año 2003, siendo la Segunda Hija que Ulrich Nielsen tuvo con Katharina, se crio junto a sus hermanos Magnus y Mikkel en la casa de la Familia Nielsen, la cual fue la misma casa de la infancia de su Padre.',
              textAlign: TextAlign.justify,
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
