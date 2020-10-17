import 'package:flutter/material.dart';
import 'package:world_time/Pages/chooseLocation.dart';
import 'package:world_time/Pages/homeScreen.dart';
import 'package:world_time/Pages/loadingScreen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/LoadingScreen',
      routes: {
        './': (context) => HomeScreen(),
        '/LoadingScreen': (context) => LoadingScreen(),
        '/ChooseLocation': (context) => ChooseLocation(),
      },
    ),
  );
}
