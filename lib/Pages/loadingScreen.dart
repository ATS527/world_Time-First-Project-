import 'package:flutter/material.dart';
import 'package:world_time/Services/showDate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  String time = 'Loading..';
  void setupLocationTime() async {
    ShowDate instance = ShowDate(
        flagImage: null, location: 'Kolkata', locationUrl: 'Asia/Kolkata');

    await instance.getTime();
    setState(() {
      time = instance.time;
      Navigator.pushReplacementNamed(context, './', arguments: {
        'location': instance.location,
        'flag': instance.flagImage,
        'time': instance.time,
        'isDayTime': instance.isDayTime,
      });
      // print(instance.isDayTime); //debug
    });
  }

  @override
  void initState() {
    super.initState();
    setupLocationTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: SpinKitHourGlass(
                color: Colors.amber,
                size: 50.0,
              ),
            )
          ],
        ),
      ),
    );
  }
}
