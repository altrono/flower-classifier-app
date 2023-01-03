import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

import 'home_screen.dart';

class MySplash extends StatefulWidget {
  const MySplash({Key? key}) : super(key: key);

  @override
  State<MySplash> createState() => _MySplashState();
}

class _MySplashState extends State<MySplash> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 2,
      navigateAfterSeconds: HomeScreen(),
      title: const Text(
        'Flower Recognizer',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30,
          color: Colors.white
        ),
      ),
      image: Image.asset('assets/flower.png'),
      gradientBackground: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        stops: [0.004, 1],
        colors: [
          Color(0xFFa8e063),
          Color(0xFF56ab2f),
        ]
      ),
      loaderColor: Color(0xFFA3BB98),
      photoSize: 100.0,
    );
  }
}
