import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  void getLocation() async {
    // Here we ask the user to give permission
    LocationPermission permission = await Geolocator.requestPermission();

    // Check if the user has indeed given permission to access location
    if (permission != LocationPermission.denied ||
        permission != LocationPermission.deniedForever) {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      print(position);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        /*
        The RaisedButton shown in the video has been deprecated and
        TextButton widget can be used in its place.
        */
        child: TextButton(
          onPressed: () {
            getLocation();
          },
          child: Text('Get Location'),
        ),
      ),
    );
  }
}
