import 'package:flutter/material.dart';
import 'package:health_app/Pages/signIn.dart';

void main() {
  runApp(MaterialApp(
    title: 'Health App',
    theme: ThemeData(
      fontFamily: 'Poppins',
    ),
    initialRoute: '/',
    routes: {
      '/': (context) => const SignIn(),
      //'/second': (context) => const SecondScreen(),
    },
  ));
}

