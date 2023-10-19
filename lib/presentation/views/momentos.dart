import 'package:dark/presentation/views/michaelclip.dart';
import 'package:dark/presentation/views/mikkelclip.dart';
import 'package:flutter/material.dart';
import 'jonasclip.dart'; // Importa la página JonasClip.dart

class Momentos extends StatefulWidget {
  const Momentos({super.key});

  @override
  State<Momentos> createState() => _MomentosState();
}

class _MomentosState extends State<Momentos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: [
              _momentoCard(
                AssetImage('images/1.jpg'),
                'Mikkel del futuro conoce a Hannah del pasado',
                () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => MikkelClip(),
                    ),
                  );
                },
              ),
              _momentoCard(
                AssetImage('images/2.jpg'),
                'Michael se encuentra con Mikkel (son la misma persona)',
                () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => MichaelClip(),
                    ),
                  );
                },
              ),
              _momentoCard(
                AssetImage('images/3.jpg'),
                'Jonas descubre la verdad acerca de su padre',
                () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => JonasClip(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _momentoCard(
    ImageProvider image,
    String description,
    VoidCallback onTap,
  ) {
    return Card(
      color: Colors.black,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: InkWell(
        onTap: onTap,
        child: Container(
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                child: Image(image: image),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  color: Colors.black.withOpacity(0.7),
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    description,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
