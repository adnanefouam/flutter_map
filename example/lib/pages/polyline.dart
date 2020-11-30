import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';

import '../widgets/drawer.dart';

class PolylinePage extends StatelessWidget {
  static const String route = 'polyline';

  @override
  Widget build(BuildContext context) {
    var points = <LatLng>[
      LatLng(51.5, -0.09),
      LatLng(53.3498, -6.2603),
      LatLng(48.8566, 2.3522),
    ];

    var pointsGradient = <LatLng>[
      LatLng(55.5, -0.09),
      LatLng(54.3498, -6.2603),
      LatLng(52.8566, 2.3522),
    ];
    var pointsGradientt = <LatLng>[
      LatLng(12.5, -3.09),
      LatLng(13.3498, -4.2603),
      LatLng(14.8566, 5.3522),
      LatLng(15.322, -8.503),
      LatLng(18.566, 4.3522),
      LatLng(20.5, -9.09),
    ];

    return Scaffold(
      appBar: AppBar(title: Text('Polylines')),
      drawer: buildDrawer(context, PolylinePage.route),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
              child: Text('Polylines'),
            ),
            Flexible(
              child: FlutterMap(
                options: MapOptions(
                  center: LatLng(51.5, -0.09),
                  zoom: 5.0,
                ),
                layers: [
                  TileLayerOptions(
                      urlTemplate:
                          'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
                      subdomains: ['a', 'b', 'c']),

                  PolygonLayerOptions(polygons: [
                    Polygon(
                        numeroDeparcelle: '1010101',
                        parcellNumValueStyle: TextStyle(color: Colors.red,fontSize: 4),
                        borderStrokeWidth: 4,
                        points: pointsGradient,
                        color: Colors.black,
                        borderColor: Colors.blue),
                    Polygon(
                        numeroDeparcelle: '1010101',
                        parcellNumValueStyle: TextStyle(color: Colors.red,fontSize: 4),
                        borderStrokeWidth: 4,
                        points: points,
                        color: Colors.black,
                        borderColor: Colors.blue),
                    Polygon(

                        numeroDeparcelle: '1010101',
                        parcellNumValueStyle: TextStyle(color: Colors.red,fontSize: 4),
                        borderStrokeWidth: 4,
                        points:pointsGradientt ,
                        color: Colors.black,
                        borderColor: Colors.blue),
                  ]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
