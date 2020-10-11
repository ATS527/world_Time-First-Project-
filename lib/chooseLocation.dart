import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  void getData() async {
    String name = await Future.delayed(Duration(seconds: 3), () {
      return 'Alan';
    });
    String bio = await Future.delayed(Duration(seconds: 2), () {
      return 'i M a coder!';
    });
    print('$name - $bio');
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: Text("Choose Location!"),
          centerTitle: true,
        ),
      ),
    );
  }
}
