import 'dart:async';
import 'package:finalproject/Models/User.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:maps_launcher/maps_launcher.dart';

class MapSample extends StatefulWidget {
  Geo locationOfUser;

  MapSample({this.locationOfUser});

  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  Completer<GoogleMapController> _controller = Completer();

  CameraPosition initialLocation;

  static final CameraPosition _kLake = CameraPosition(
    bearing: 192.8334901395799,
    target: LatLng(37.43296265331129, -122.08832357078792),
    tilt: 59.440717697143555,
    zoom: 19.151926040649414,
  );

  @override
  void initState() {
    initialLocation = CameraPosition(
      target: LatLng(double.parse(widget.locationOfUser.lat),
          double.parse(widget.locationOfUser.lng)),
      zoom: 14.4746,
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: initialLocation,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: openLocationOnMapApp,
        label: Text('go to location'),
        icon: Icon(Icons.gps_fixed_outlined),
      ),
    );
  }

  // Future<void> _goToTheLake() async {
  //   final GoogleMapController controller = await _controller.future;
  //   controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  // }
  openLocationOnMapApp() {
    MapsLauncher.launchCoordinates(double.parse(widget.locationOfUser.lat),
        double.parse(widget.locationOfUser.lng));
  }
}
