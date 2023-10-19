import 'package:dark/presentation/views/contratame.dart';
import 'package:dark/presentation/views/vida.dart';
import 'package:flutter/material.dart';
import 'package:dark/presentation/views/acerca.dart';
import 'package:dark/presentation/views/momentos.dart';
import 'package:dark/presentation/views/personajes.dart';
import 'package:dark/presentation/views/portada.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final screens = [
      const Portada(),
      const Personajes(),
      const Momentos(),
      const Acerca(),
      const Vida(),
      const Contratame(),
    ];

    return Scaffold(
      body: IndexedStack(
        index: selectedIndex,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        backgroundColor: Colors.black, 
        selectedItemColor: Colors.white, 
        unselectedItemColor: Colors.grey, 
        type: BottomNavigationBarType.fixed, 
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.home),
            activeIcon: const Icon(Icons.home_outlined),
            label: 'Portada',
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.people),
            activeIcon: const Icon(Icons.people_outlined),
            label: 'Personajes',
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.video_library),
            activeIcon: const Icon(Icons.video_library_outlined),
            label: 'Momentos',
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.info),
            activeIcon: const Icon(Icons.info_outline),
            label: 'Acerca',
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.account_circle),
            activeIcon: const Icon(Icons.account_circle_outlined),
            label: 'En mi vida',
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.work),
            activeIcon: const Icon(Icons.work_outline),
            label: 'Contratame',
          ),
        ],
      ),
    );
  }
}
