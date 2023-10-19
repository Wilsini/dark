import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Portada extends StatefulWidget {
  const Portada({Key? key}) : super(key: key);

  @override
  State<Portada> createState() => _PortadaState();
}

class _PortadaState extends State<Portada> {
  List<String> imageUrls = [
    'images/dark4.png',
    'images/dark.jpg',
    'images/dark2.jpg',
    'images/dark3.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height; 
    return Scaffold(
      body: CarouselSlider(
        options: CarouselOptions(
          height: screenHeight, 
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 2), 
          enlargeCenterPage: true,
          viewportFraction: 1.0, 
        ),
        items: imageUrls.map((imageUrl) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                width: double.infinity,
                child: Image.asset(
                  imageUrl,
                  fit: BoxFit.cover, 
                  height: screenHeight, 
                ),
              );
            },
          );
        }).toList(),
      ),
    );
  }
}
