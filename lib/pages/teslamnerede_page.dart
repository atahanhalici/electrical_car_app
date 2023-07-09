import 'dart:convert';
import 'dart:ui';

import 'package:electrical_car_app/constants.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class TeslamNerede extends StatefulWidget {
  const TeslamNerede({Key? key}) : super(key: key);

  @override
  State<TeslamNerede> createState() => _TeslamNeredeState();
}

double _originLatitude = 39.805923481165847;
double _originLongitude = 39.37258500605822;
double _destLatitude = 39.75052304636539;
double _destLongitude = 39.49648931622505;

class _TeslamNeredeState extends State<TeslamNerede> {
  PolylinePoints polylinePoints = PolylinePoints();
  Map<PolylineId, Polyline> polylines = {};
  late GoogleMapController _controller;
  static final CameraPosition _initalCameraPosition = CameraPosition(
    target: LatLng(_originLatitude, _originLongitude),
    zoom: 18,
  );
  late BitmapDescriptor myIcon;
  late Set<Marker> markers;
  @override
  void initState() {
    _createMarker();
    _getPolyline();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Column(
          children: const [
            Text(
              "Teslam Nerede",
              style: TextStyle(
                color: kBackgroundColor,
                fontSize: 20,
                fontFamily: "Larsseit",
              ),
            ),
          ],
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: kBackgroundColor),
      ),
      body: FutureBuilder(
          future: _createMarker(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasError) {
              return const Text('Error');
            } else if (snapshot.hasData) {
              return GoogleMap(
                myLocationButtonEnabled: true,
                mapType: MapType.normal,
                initialCameraPosition: _initalCameraPosition,
                tiltGesturesEnabled: true,
                compassEnabled: true,
                scrollGesturesEnabled: true,
                zoomGesturesEnabled: true,
                onMapCreated: (GoogleMapController controller) {
                  _controller = controller;
                },
                polylines: Set<Polyline>.of(polylines.values),
                markers: markers,
              );
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          }),
    );
  }

  void _getPolyline() async {
    List<LatLng> polylineCoordinates = [];

    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      "AIzaSyDJ2tkBZyuCN98n4ImRXnFtGVgXVSRzgTA",
      PointLatLng(_originLatitude, _originLongitude),
      PointLatLng(_destLatitude, _destLongitude),
      travelMode: TravelMode.driving,
    );
    if (result.points.isNotEmpty) {
      result.points.forEach((PointLatLng point) {
        polylineCoordinates.add(LatLng(point.latitude, point.longitude));
      });
    } else {
      print(result.errorMessage);
    }
    _addPolyLine(polylineCoordinates);
  }

  _addPolyLine(List<LatLng> polylineCoordinates) {
    PolylineId id = PolylineId("poly");
    Polyline polyline = Polyline(
      polylineId: id,
      color: Colors.red,
      points: polylineCoordinates,
      width: 8,
    );
    polylines[id] = polyline;
    setState(() {});
  }

  _createMarker() async {
    final Uint8List markerIcon =
        await getBytesFromAsset('assets/arac.png', 150);
    markers = <Marker>{
      Marker(
          zIndex: 1,
          infoWindow: const InfoWindow(title: "Aracınız"),
          markerId: const MarkerId("arac"),
          position: _initalCameraPosition.target,
          icon: BitmapDescriptor.fromBytes(markerIcon)),
      Marker(
          infoWindow: const InfoWindow(title: "Erzincan Stadyumu"),
          markerId: const MarkerId("stat"),
          position: const LatLng(39.75052304636539, 39.49648931622505),
          icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed)),
      Marker(
          infoWindow: const InfoWindow(
              title: "Erzincan Binali Yıldırım Üniversitesi Otoparkı"),
          markerId: const MarkerId("universite"),
          position: const LatLng(39.80592348116584, 39.37258500605822),
          icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed)),
    };
    return markers;
  }

  Future<Uint8List> getBytesFromAsset(String path, int width) async {
    ByteData data = await rootBundle.load(path);
    var codec = await instantiateImageCodec(data.buffer.asUint8List(),
        targetWidth: width);
    FrameInfo fi = await codec.getNextFrame();
    return (await fi.image.toByteData(format: ImageByteFormat.png))!
        .buffer
        .asUint8List();
  }
}
