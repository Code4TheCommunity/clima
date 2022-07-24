# clima

The completed Clima App project for the [Flutter Course](https://www.udemy.com/course/flutter-bootcamp-with-dart/)

*This is an open-source initiative for the community*

## Notes
- Kindly follow the README guide before proceeding to copy-paste code from this project
- The README contains the changes and hints to the updates required in code and can be followed alongside the video tutorials

## Index
- [Video 140](#Video-140)
- [Video 144](#Video-144)
- [Video 146](#Video-146)

## Video-140
- Add the geolocator dependency to the flutter pubspec.yaml and follow the platform specific instructions for plugin usage
- **FOR ANDROID** Be sure to change the compileSdkVersion to 33 (or whatever is specified in the plugin instruction) in the android\app\build.gradle file
- The getCurrentPosition method is now a static method, so call it accordingly
- You also need to add code to ask the user to provide permission for accessing location


## Video-144
- The 2 class variables latitude and longitude of ```Location``` class need initial values or have to be marked with the keyword late, according to newer Dart syntax. Add the ```late``` keyword in front of ```double``` datatype.

## Video-146
- The ```get``` method of http package no longer takes in a string. It takes in a Uri. So instead of using ```get('yourUrl')``` , use ```get(Uri.parse('yourUrl'))``` .