import 'package:flutter/material.dart';
import 'package:mouse_follower/mouse_follower.dart';
import 'package:portfolio/Paths/Home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromRGBO(239, 235, 229, 1),
          primary: const Color.fromARGB(255, 0, 0, 0),
        ),
        primaryColor: Colors.black,
      ),
      home: MouseFollower(
        mouseStylesStack: [
          MouseStyle(
            size: const Size(20, 20),
            latency: const Duration(milliseconds: 70),
            decoration: BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle,
            ),
          ),
        ],
        child: const Home(title: 'Ankit Savaliya'),
      ),
    );
  }
}
