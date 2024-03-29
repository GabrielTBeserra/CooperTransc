import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import "package:latlong/latlong.dart" as LatLng;

Widget Tracking(context) {
  return new FlutterMap(
    options: new MapOptions(
      center: new LatLng.LatLng(51.5, -0.09),
      zoom: 13.0,
    ),
    layers: [
      new TileLayerOptions(
        urlTemplate: "https://api.tiles.mapbox.com/v4/"
            "{id}/{z}/{x}/{y}@2x.png?access_token={accessToken}",
        additionalOptions: {
          'accessToken':
              'pk.eyJ1IjoiZ2Jlc2VycmEiLCJhIjoiY2tsNm5ud29xMHYyYzJwcHI2bXNybGs5diJ9.Pbp6mQFHLakE2YDGAWCZUg',
          'id': 'mapbox.streets',
        },
      ),
      new MarkerLayerOptions(
        markers: [
          new Marker(
            width: 80.0,
            height: 80.0,
            point: new LatLng.LatLng(51.5, -0.09),
            builder: (ctx) => new Container(
              child: new FlutterLogo(),
            ),
          ),
        ],
      ),
    ],
  );
}
