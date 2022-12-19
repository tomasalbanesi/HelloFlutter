import 'dart:ui';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int counter = 10;

  @override
  Widget build(BuildContext context) {
    TextStyle fontSize30 = const TextStyle(fontSize: 30);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Home Screen"),
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Numero de clicks",
              style: fontSize30,
            ),
            Text(
              "$counter",
              style: fontSize30,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            child: const Icon(Icons.exposure_plus_1_outlined),
            onPressed: () {
              counter++;
              setState(() {});
            },
          ),
          const SizedBox(
            width: 50,
          ),
          FloatingActionButton(
            child: const Icon(Icons.exposure_outlined),
            onPressed: () {
              counter = 0;
              setState(() {});
            },
          ),
          const SizedBox(
            width: 50,
          ),
          FloatingActionButton(
            child: const Icon(Icons.exposure_minus_1_outlined),
            onPressed: () {
              counter--;
              setState(() {});
            },
          ),
        ],
      ),
    );
  }
}
