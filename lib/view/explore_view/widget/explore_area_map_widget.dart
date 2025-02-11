// ignore_for_file: prefer_const_constructors

import 'package:dayf_booking_app/res/common_widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class ExploreAreaMapWidget extends StatefulWidget {
  @override
  _ExploreAreaMapWidgetState createState() => _ExploreAreaMapWidgetState();
}

class _ExploreAreaMapWidgetState extends State<ExploreAreaMapWidget> {
  late GoogleMapController mapController;

  // Markers for the locations
  final Set<Marker> _markers = {};

  @override
  void initState() {
    super.initState();
    _markers.add(
      Marker(
        markerId: MarkerId('hotel'),
        position: LatLng(36.747, 3.073), // Coordinates for Hôtel Saint Eugène
        infoWindow: InfoWindow(
          title: 'Hôtel Saint Eugène',
          snippet: 'Hotel Info',
        ),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRose),
      ),
    );
    _markers.add(
      Marker(
        markerId: MarkerId('chu'),
        position: LatLng(36.752, 3.073), // Coordinates for CHU Lamine Debaghine
        infoWindow: InfoWindow(
          title: 'CHU Lamine Debaghine',
          snippet: 'Hospital Info',
        ),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              spreadRadius: 1,
              blurRadius: 1,
              color: Colors.black.withOpacity(0.1),
              offset: Offset(0, 1)
            )
          ]
        ),
        child: Column(
          children: [
            // Map view
            Expanded(
              child: GoogleMap(
                initialCameraPosition: CameraPosition(
                  target: LatLng(36.749, 3.073), // Default camera position
                  zoom: 8,
                ),
                onMapCreated: (GoogleMapController controller) {
                  mapController = controller;
                },
                markers: _markers,
                zoomControlsEnabled: false,
              ),
            ),
            SizedBox(height: 5),
            // Button and text to explore the area
            CustomButton(
                title: 'Explore the Area',
                isGradient: false,
                buttonColor: Colors.transparent,
                titleColor: Colors.black,
                onTap: () {}
            ),
          ],
        ),
      ),
    );
  }
}
