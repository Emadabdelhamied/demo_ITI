import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:task_1/models/user.dart';
import 'package:maps_launcher/maps_launcher.dart';

class MapSample extends StatefulWidget {
  Geo userLocation;
  MapSample({this.userLocation});
  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  Completer<GoogleMapController> _controller = Completer();
  CameraPosition initLocation;
   static final CameraPosition _kLake = CameraPosition(
      target: LatLng(37.43296265331129, -122.08832357078792),
      zoom: 19.151926040649414);
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    initLocation = CameraPosition(
      target: LatLng(
        double.parse(widget.userLocation.lat),
        double.parse(widget.userLocation.lng),
      ),
      zoom: 14.4746,
    );

  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Location'),
      ),
      body: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition:initLocation,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: openLocation,
        label: Text('My Location'),
        icon: Icon(Icons.location_city_rounded),
      ),
    );
  }
  openLocation() {
    MapsLauncher.launchCoordinates(
      double.parse(widget.userLocation.lat),
      double.parse(widget.userLocation.lng),
    );
  }
}