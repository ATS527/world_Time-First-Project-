import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  void getData() async {
    Response response =
        await get('https://jsonplaceholder.typicode.com/todos/1');
    print(response.body);

    Map data = jsonDecode(response.body);

    print(data);
    print(data["userId"]);
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Center(
              child: Text("Loading Screen"),
            ),
          ],
        ),
      ),
    );
  }
}
