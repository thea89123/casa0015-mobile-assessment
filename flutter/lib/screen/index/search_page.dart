import 'dart:async';

import 'package:evapp/routes.dart';
import 'package:evapp/screen/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:geocode/geocode.dart';
import 'package:go_router/go_router.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> with AutomaticKeepAliveClientMixin {
  final Completer<GoogleMapController> _controller = Completer<GoogleMapController>();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(50.5413, 5.6470),
  );

  LatLng _kCurPosition = const LatLng(50.5413, 5.6470);

  final Set<Marker> _markers = {};

  final GeoCode geoCode = GeoCode(apiKey: '328469479873037358939x48304');

  @override
  void initState() {
    super.initState();
    _markers.add(Marker(
      markerId: const MarkerId('cur_position'),
      position: _kCurPosition,
    ));
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          try {
            final address = await geoCode.reverseGeocoding(
                          latitude: _kCurPosition.latitude, longitude: _kCurPosition.longitude);
            context.pushNamed(Routes.weather,
                          extra: HomeRouteData(_kCurPosition, address.city ?? address.countryName ?? ''));
          } catch (e) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('An error occurred with the network request')));
          }
        },
        child: const Icon(Icons.search),
      ),
      body: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: _kGooglePlex,
        zoomControlsEnabled: false,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
        onTap: (latlng) {
          _kCurPosition = latlng;
          _markers.add(
            Marker(
              markerId: const MarkerId('cur_position'),
              position: latlng,
            ),
          );
          setState(() {});
        },
        markers: _markers,
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
