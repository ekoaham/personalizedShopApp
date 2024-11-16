import 'package:flutter/material.dart';
import 'dart:async';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:location/location.dart';

class NavigationPanel extends StatefulWidget {
  NavigationPanel(
      @required this.currentLatitude, @required this.currentLongitude);

  final currentLatitude;
  final currentLongitude;

  @override
  State<NavigationPanel> createState() => _NavigationPanelState();
}

class _NavigationPanelState extends State<NavigationPanel> {
  late LatLng _source = LatLng(widget.currentLatitude, widget.currentLongitude);
  static const LatLng _destination =
      LatLng(28.60004182728109, 77.22677972768054);

  List<LatLng> polyPoints = [];

  void getPolyPoints() async {
    PolylinePoints _polyline = PolylinePoints();
    PolylineResult result = await _polyline.getRouteBetweenCoordinates(
        'AIzaSyBpkVus785sCbC2E9MeXn4ZuPoqAUDzuHk',
        PointLatLng(_source.latitude, _source.longitude),
        PointLatLng(_destination.latitude, _destination.longitude));

    if (result.points.isNotEmpty) {
      result.points.forEach((PointLatLng point) {
        polyPoints.add(LatLng(point.latitude, point.longitude));
      });
    }
    else if(result.points.isEmpty){
      print('API');
    }
    print(polyPoints);
    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    getPolyPoints();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
          initialCameraPosition:
              const CameraPosition(target: _destination, zoom: 14.5),
          markers: {
            Marker(markerId: const MarkerId('source'), position: _source),
            const Marker(
                markerId: MarkerId('destination'), position: _destination),
          },
          polylines: {
            Polyline(
              polylineId: PolylineId("route"),
              points: polyPoints,
              color: Colors.black,
              width: 6
            ),
          }),
    );
  }
}
