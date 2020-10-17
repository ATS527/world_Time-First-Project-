import 'package:flutter/material.dart';
import 'package:world_time/Services/showDate.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  List<ShowDate> locations = [
    ShowDate(
        locationUrl: 'Europe/London', location: 'London', flagImage: 'uk.png'),
    ShowDate(
        locationUrl: 'Europe/Berlin',
        location: 'Athens',
        flagImage: 'greece.png'),
    ShowDate(
        locationUrl: 'Africa/Cairo', location: 'Cairo', flagImage: 'egypt.png'),
    ShowDate(
        locationUrl: 'Africa/Nairobi',
        location: 'Nairobi',
        flagImage: 'kenya.png'),
    ShowDate(
        locationUrl: 'America/Chicago',
        location: 'Chicago',
        flagImage: 'usa.png'),
    ShowDate(
        locationUrl: 'America/New_York',
        location: 'New York',
        flagImage: 'usa.png'),
    ShowDate(
        locationUrl: 'Asia/Seoul',
        location: 'Seoul',
        flagImage: 'south_korea.png'),
    ShowDate(
        locationUrl: 'Asia/Jakarta',
        location: 'Jakarta',
        flagImage: 'indonesia.png'),
    ShowDate(
        locationUrl: 'Asia/Kolkata', location: "India", flagImage: 'india.png'),
  ];

  void updateTime(index) async {
    ShowDate instance = locations[index];
    await instance.getTime();
    Navigator.pop(context, {
      'location': instance.location,
      'flag': instance.flagImage,
      'time': instance.time,
      'isDayTime': instance.isDayTime,
    });
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
        body: ListView.builder(
            itemCount: locations.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 1.5, horizontal: 4.0),
                child: Card(
                  child: ListTile(
                    onTap: () {
                      updateTime(index);
                    },
                    title: Text(locations[index].location),
                    leading: CircleAvatar(
                      backgroundImage:
                          AssetImage("assets/${locations[index].flagImage}"),
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
