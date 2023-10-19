import 'package:flutter/material.dart';
import 'jonas.dart'; 
import 'martha.dart'; 
import 'mikkel.dart'; 
import 'hannah.dart'; 
import 'ulrich.dart';
import 'bartosz.dart';

class Personajes extends StatefulWidget {
  const Personajes({super.key});

  @override
  State<Personajes> createState() => _PersonajesState();
}

class _PersonajesState extends State<Personajes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: [
              Row(
                children: [
                  _buildCardWithNavigation(_jonas, () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => JonasPage(), 
                      ),
                    );
                  }),
                  _buildCardWithNavigation(_martha, () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => MarthaPage(), 
                      ),
                    );
                  }),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  _buildCardWithNavigation(_mikkel, () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => MikkelPage(), 
                      ),
                    );
                  }),
                  _buildCardWithNavigation(_hannah, () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => HannahPage(), 
                      ),
                    );
                  }),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  _buildCardWithNavigation(_ulrich, () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => UlrichPage(), 
                      ),
                    );
                  }),
                  _buildCardWithNavigation(_bartosz, () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => BartoszPage(), 
                      ),
                    );
                  }),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCard(Widget Function() cardBuilder) {
    return Expanded(
      child: cardBuilder(),
    );
  }

  Widget _buildCardWithNavigation(Widget Function() cardBuilder, VoidCallback onTap) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: cardBuilder(),
      ),
    );
  }

  Widget _jonas() {
    return Card(
      color: Colors.grey,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              width: 220,
              child: AspectRatio(
                aspectRatio: 1.0,
                child: FadeInImage(
                  placeholder: AssetImage('images/jonas.jpg'),
                  image: AssetImage('images/jonas.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(
                  'Jonas Kahnwald',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                SizedBox(height: 5,),
                Text(
                  'Louis Hofmann',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _martha() {
    return Card(
      color: Colors.grey,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              width: 220,
              child: AspectRatio(
                aspectRatio: 1.0,
                child: FadeInImage(
                  placeholder: AssetImage('images/martha.jpg'),
                  image: AssetImage('images/martha.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(
                  'Martha Nielsen',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                SizedBox(height: 5,),
                Text(
                  'Lisa Vicari',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _mikkel() {
    return Card(
      color: Colors.grey,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              width: 220,
              child: AspectRatio(
                aspectRatio: 1.0,
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => MikkelPage(), // Página mikkel.dart
                      ),
                    );
                  },
                  child: FadeInImage(
                    placeholder: AssetImage('images/mikkel.jpg'), 
                    image: AssetImage('images/mikkel.jpg'), 
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text('Mikkel Nielsen', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                SizedBox(height: 5,),
                Text('Daan Lennard Liebrenz',
                style: TextStyle(color: Colors.black, fontSize: 14),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _hannah() {
    return Card(
      color: Colors.grey,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              width: 220,
              child: AspectRatio(
                aspectRatio: 1.0,
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => HannahPage(), // Página hannah.dart
                      ),
                    );
                  },
                  child: FadeInImage(
                    placeholder: AssetImage('images/hannah.jpg'), 
                    image: AssetImage('images/hannah.jpg'), 
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text('Hannah Nielsen', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                SizedBox(height: 5,),
                Text('Maja Schöne',
                style: TextStyle(color: Colors.black, fontSize: 14),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
  
  Widget _ulrich() {
    return Card(
      color: Colors.grey,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              width: 220,
              child: AspectRatio(
                aspectRatio: 1.0,
                child: FadeInImage(
                  placeholder: AssetImage('images/ulrich.jpg'), 
                  image: AssetImage('images/ulrich.jpg'), 
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
            children: [
            Text('Ulrich Nielsen', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
            SizedBox(height: 5,),
            Text('Oliver Masucci',
            style: TextStyle(color: Colors.black, fontSize: 14),
            )
          ],
          )
          ),
        ],
      ),
    );
  }
  
  Widget _bartosz() {
    return Card(
      color: Colors.grey,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              width: 220,
              child: AspectRatio(
                aspectRatio: 1.0,
                child: FadeInImage(
                  placeholder: AssetImage('images/bartosz.jpg'), 
                  image: AssetImage('images/bartosz.jpg'), 
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
            children: [
            Text('Bartosz Tiedemann', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
            SizedBox(height: 5,),
            Text('Roman Knižka',
            style: TextStyle(color: Colors.black, fontSize: 14),
            )
          ],
          )
          ),
        ],
      ),
    );
  }
}






