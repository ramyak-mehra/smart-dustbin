import 'package:flutter/material.dart';
import 'package:flutter_map/plugin_api.dart';
import 'package:latlong/latlong.dart';
import 'package:velocity_x/velocity_x.dart';

class MapView extends StatefulWidget {
  @override
  _MapViewState createState() => _MapViewState();
}

class _MapViewState extends State<MapView> {
  MapController _controller = MapController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Vx.hexToColor('#5ec043').withOpacity(0.5),
      ),
      body: FlutterMap(
        mapController: _controller,
        options: MapOptions(center: LatLng(30.3543562, 76.3620119), zoom: 17.0),
        layers: [
          TileLayerOptions(
              retinaMode: true,
              urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
              subdomains: ['a', 'b', 'c']),
          MarkerLayerOptions(
            markers: [
              Marker(
                width: 50.0,
                height: 50.0,
                point: LatLng(30.3543562, 76.3620119),
                builder: (ctx) => Container(
                  child: Icon(
                    Icons.donut_large,
                    color: Colors.red,
                    size: 40,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
