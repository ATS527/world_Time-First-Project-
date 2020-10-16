import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class ShowDate {
  String location; //TO DO accept from the constructer
  String locationUrl; //TO DO accept from the constructer
  String flagImage; //flag image url
  String time; //To return
  bool isDayTime; //to change background image

  ShowDate({this.location, this.flagImage, this.locationUrl});

  Future<void> getTime() async {
    try {
      Response response =
          await get('http://worldtimeapi.org/api/timezone/$locationUrl');

      Map timeData = jsonDecode(response.body);
      //print(timeData);

      String dateTime = timeData['datetime'];
      //print(dateTime);
      String offset = timeData['utc_offset'].substring(1, 3);
      //print(offset);

      DateTime dateTimeObject = DateTime.parse(dateTime);
      // print(dateTimeObject);

      dateTimeObject = dateTimeObject.add(
        Duration(
          hours: int.parse(offset),
          minutes: 30,
        ),
      );
      isDayTime =
          (dateTimeObject.hour > 6 && dateTimeObject.hour < 18) ? true : false;
      time = DateFormat.jm().format(dateTimeObject); //final time variable
    } catch (e) {
      print("Error handled!");
      time = 'Error getting time';
    }
  }
}
