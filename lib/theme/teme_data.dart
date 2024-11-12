import 'package:flutter/material.dart';

final ThemeData myTheme = ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 0, 0, 0)),
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.black,
   appBarTheme: const AppBarTheme(
    backgroundColor: Color.fromARGB(255, 0, 0, 0), // Цвет фона AppBar
    foregroundColor: Color.fromRGBO(255, 238, 0,  1.0), // Цвет текста и иконок в AppBar
    
    //textTheme: TextTheme(
     // headline6: TextStyle(
       // fontSize: 20.0,
       // fontWeight: FontWeight.bold,
     // ),
    //),
  ),
);
