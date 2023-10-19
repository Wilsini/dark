import 'package:flutter/material.dart';

class Acerca extends StatefulWidget {
  const Acerca({super.key});

  @override
  State<Acerca> createState() => _AcercaState();
}

class _AcercaState extends State<Acerca> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: [
              _info(),
              _autores()
              
              ],
          ),
        ),
      ),
    );
  }

  Widget _info() {
    return Card(
      color: Colors.grey,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),

      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Text('Dark', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),),
            SizedBox(height: 20,),
            Text('Dark es una serie de televisión web alemana de suspenso y ciencia ficción creada por Baran bo Odar y Jantje Friese.​​​ Situada en la ficticia ciudad de Winden (Alemania), Dark sigue las secuelas de la desaparición de un niño que expone los secretos y las conexiones ocultas entre cuatro familias mientras desentrañan lentamente una siniestra conspiración de viaje en el tiempo que abarca tres generaciones.',
            textAlign: TextAlign.justify,
            style: TextStyle(color: Colors.black, fontSize: 14),
            )
          ],
          )
        ),
    );
  }
  
Widget _autores() {
return Card(
      color: Colors.black,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),

      child: Container(
        
        child: Column(
          children: [

            
          ClipRRect(
            borderRadius: BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20), bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
            child: FadeInImage(placeholder: AssetImage('images/creador.jpg'),
            image: AssetImage('images/creador.jpg'),
          
            ),
          ),
          Padding(padding: const EdgeInsets.all(8.0),
          child: Text('Baran bo Odar y Jantje Friese', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.white),),
          )
          ],
          )
        ),
    );
  }
}

