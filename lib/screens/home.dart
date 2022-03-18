import 'package:flutter/material.dart';
import 'package:test_app/components/drawer.dart';
import 'package:test_app/components/exercices/exercice_1.dart';
// import 'package:test_app/components/exercices/exercice_2.dart';
// import 'package:test_app/components/list.dart';
import 'package:test_app/components/profil.dart';
import 'package:test_app/components/carousel/index.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int index = 0;

  List<Widget> list = [
    const Exercice1(),
    // const Exercice2(),
    const CarouselImages(),
    // const CustomList(),
    const ProfileView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD4D4D4),
      appBar: AppBar(
        title: const Text('Flutter'),
      ),
      drawer: const CustomDrawer(),
      body: ClipRRect(
        borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(24), bottomRight: Radius.circular(24)),
        child: Container(
          constraints: const BoxConstraints.tightFor(height: 1000),
          color: Colors.white,
          child: SingleChildScrollView(
            child: list[index],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: (int i) {
          setState(() {
            index = i;
          });
        },
        backgroundColor: const Color(0xFFD4D4D4),
        selectedItemColor: Colors.white,
        iconSize: 48,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'List'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'User'),
        ],
      ),
    );
  }
}
