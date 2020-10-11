import 'package:flutter/material.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Center(
              child: Text("Loading Screen"),
            ),
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
