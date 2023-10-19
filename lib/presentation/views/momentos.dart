import 'package:flutter/material.dart';

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
              _mikkel(),
              _michael(),
              _jonas(),
              
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
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              topLeft: Radius.circular(20),
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            child: FadeInImage(
              placeholder: AssetImage('images/1.jpg'),
              image: AssetImage('images/1.jpg'),
            ),
          ),
          Positioned(
            bottom: 0, 
            left: 0, 
            right: 0, 
            child: Container(
              color: Colors.black.withOpacity(0.7), 
              padding: EdgeInsets.all(8.0),
              child: Text(
                'mikkel del futuro conoce a hannah del pasado(que es su hijastro del futuro y a la vez su esposo y a la misma vez tatara nieto)',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    ),
  );

}
  
Widget  _michael() {

  return Card(
    color: Colors.black,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
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
            child: FadeInImage(
              placeholder: AssetImage('images/2.jpg'),
              image: AssetImage('images/2.jpg'),
            ),
          ),
          Positioned(
            bottom: 0, 
            left: 0, 
            right: 0, 
            child: Container(
              color: Colors.black.withOpacity(0.7), 
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Michael se encuentra con mikkel(son la misma persona)',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    ),
  );

}
  
Widget  _jonas() {

  return Card(
    color: Colors.black,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
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
            child: FadeInImage(
              placeholder: AssetImage('images/3.jpg'),
              image: AssetImage('images/3.jpg'),
            ),
          ),
          Positioned(
            bottom: 0, 
            left: 0, 
            right: 0, 
            child: Container(
              color: Colors.black.withOpacity(0.7), 
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Michael se encuentra con mikkel(son la misma persona)',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    ),
  );

}
}
