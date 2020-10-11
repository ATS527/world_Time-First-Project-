import 'package:flutter/material.dart';
import 'package:world_time/chooseLocation.dart';
import 'package:world_time/homeScreen.dart';
import 'package:world_time/loadingScreen.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/LoadingScreen',
      routes: {
        './': (context) => HomeScreen(),
        '/LoadingScreen': (context) => LoadingScreen(),
        '/ChooseLocation': (context) => ChooseLocation(),
      },
    ),
  );
}
