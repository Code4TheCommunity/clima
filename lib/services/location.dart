import 'package:geolocator/geolocator.dart';

class Location {
  late double latitude;
  late double longitude;

  Future<void> getCurrentLocation() async {
    try {
      // Here we ask the user to give permission
      LocationPermission permission = await Geolocator.requestPermission();

      // Check if the user has indeed given permission to access location
      if (permission != LocationPermission.denied ||
          permission != LocationPermission.deniedForever) {
        Position position = await Geolocator.getCurrentPosition(
            desiredAccuracy: LocationAccuracy.low);
        latitude = position.latitude;
        longitude = position.longitude;
      }
    } catch (e) {
      print(e);
    }
  }
}
