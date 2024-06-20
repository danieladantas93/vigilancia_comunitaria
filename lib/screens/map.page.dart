/*import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapPage extends StatefulWidget {
  @override
  _MapPageState createState() => _MapPageState();

}

class _MapPageState extends State<MapPage> {
   GoogleMapController mapController;
   double lat = 7.0767488;
   double long = 34.8419653;

void onMapCreated(GoogleMapController controller){
  mapController = controller;
}



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Google Maps"),
      ),
      body: GoogleMap(
        onMapCreated: _onMapCreated
        onCameraMove: (data){
          print (data),
        }
        onMapCreated: _onMapCreated,
        initialCameraPosition: initialCameraPosition(
          target: LatLng (lat, long),
          zoom: 11.0,
        ),
        ),
      
      );
      
  }
}*/
