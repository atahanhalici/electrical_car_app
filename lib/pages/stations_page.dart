import 'dart:async';
import 'dart:ui';

import 'package:electrical_car_app/constants.dart';
import 'package:electrical_car_app/widgets/bottomnavi.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class StationsPage extends StatefulWidget {
  const StationsPage({Key? key}) : super(key: key);

  @override
  State<StationsPage> createState() => _StationsPageState();
}

double _originLatitude = 39.805923481165847;
double _originLongitude = 39.37258500605822;

class _StationsPageState extends State<StationsPage> {
  late BitmapDescriptor myIcon;
  late Set<Marker> markers;
  @override
  void initState() {
    _createMarker();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  // ignore: unused_field
  late GoogleMapController _controller;
  static final CameraPosition _initalCameraPosition = CameraPosition(
    target: LatLng(_originLatitude, _originLongitude),
    zoom: 12,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Şarj İstasyonları",
          style: TextStyle(
              color: kBackgroundColor,
              fontSize: 20,
              fontFamily: "Larsseit",
            ),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: kBackgroundColor),
      ),
      bottomNavigationBar: const BottomNavi(
        currentindex: 1,
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
                markers: markers,
              );
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          }),
    );
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
              title: "Erzincan DHMI Yıldırım Akbulut Havaalanı"),
          markerId: const MarkerId("havaalani"),
          position: const LatLng(39.71867564756017, 39.52215269207955),
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
    Codec codec = await instantiateImageCodec(data.buffer.asUint8List(),
        targetWidth: width);
    FrameInfo fi = await codec.getNextFrame();
    return (await fi.image.toByteData(format: ImageByteFormat.png))!
        .buffer
        .asUint8List();
  }
}
