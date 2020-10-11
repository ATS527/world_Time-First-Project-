import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SafeArea(child: Text("Home Screen")),
            FlatButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/ChooseLocation');
              },
              icon: Icon(Icons.add_location),
              label: Text("Choose your Location!"),
            ),
          ],
        ),
      ),
    );
  }
}
