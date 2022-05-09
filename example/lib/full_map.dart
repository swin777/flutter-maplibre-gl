import 'package:flutter/material.dart';
import 'package:maplibre_gl/mapbox_gl.dart';

import 'page.dart';

class FullMapPage extends ExamplePage {
  FullMapPage() : super(const Icon(Icons.map), 'Full screen map');

  @override
  Widget build(BuildContext context) {
    return const FullMap();
  }
}

class FullMap extends StatefulWidget {
  const FullMap();

  @override
  State createState() => FullMapState();
}

class FullMapState extends State<FullMap> {
  MaplibreMapController? mapController;

  void _onMapCreated(MaplibreMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: MaplibreMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: const CameraPosition(target: LatLng(37.541, 126.986), zoom: 16, tilt: 0),
        onStyleLoadedCallback: onStyleLoadedCallback,
        styleString: 'assets/tileStyle2.json',
      )
    );
  }

  void onStyleLoadedCallback() {}
}

