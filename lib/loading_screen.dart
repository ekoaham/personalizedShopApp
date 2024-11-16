import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:personalized_shop_app/navigation_screen.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  bool? _serviceEnabled;
  PermissionStatus? _permissionGranted;
  LocationData? _locationData;
  void getCurrentLocation() async {
    Location location = new Location();
    _serviceEnabled = await location.serviceEnabled();
    if (!(_serviceEnabled!)) {
      _serviceEnabled = await location.requestService();
    }
    _permissionGranted = await location.hasPermission();
    _locationData = await location.getLocation();
    // return _locationData;
    print(_locationData);
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return NavigationPanel(_locationData?.latitude, _locationData?.longitude);
    }));
  }
 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCurrentLocation();
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: SpinKitWaveSpinner(
          color: Colors.white,
          size: 65,
        ),
      ),
    );
  }
}
