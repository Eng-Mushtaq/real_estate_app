import 'dart:async';

import 'package:flutter/material.dart';
import 'package:real_estate_app/features/cart/data/model/real_estate_model.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LocationWidget extends StatelessWidget {
  LocationWidget({super.key, required this.realEstate});
  RealEstate? realEstate;

  Set<Marker> markers = Set();
  Completer<GoogleMapController> _mapController = Completer();
  var cameraPosition =
      const CameraPosition(target: LatLng(00.0, 00.00), zoom: 16);
  CameraPosition _myCurrationCameraPosition = const CameraPosition(
    bearing: 0.0,
    target: LatLng(20.98503018753428, 56.54065389186143),
    tilt: 0.0,
    zoom: 17,
  );

  @override
  Widget build(BuildContext context) {
    _myCurrationCameraPosition = CameraPosition(
        target: LatLng(realEstate!.lat!, realEstate!.lang!), zoom: 16);
    markers.add(
      Marker(
          markerId: const MarkerId("2"),
          position: LatLng(realEstate!.lat!, realEstate!.lang!)),
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('الموقع'),
        const SizedBox(
          height: 30,
        ),
        Text(realEstate?.locationDescription ?? ''),
        Expanded(
          child: GoogleMap(
            mapType: MapType.normal,
            myLocationEnabled: true,
            zoomControlsEnabled: true,
            markers: markers,
            // onTap:(position){
            //
            // },
            initialCameraPosition: _myCurrationCameraPosition,
            // onMapCreated: (GoogleMapController controller) {
            //   _mapController.complete(controller);
            // },
            // onCameraMove: (CameraPosition position) {
            //   cameraPosition = position;
            //   print(position.target);
            //   setState(() {
            // _markerLocation = position.target;
            // });
            // },

            // onCameraIdle: () async {
            //   markers.clear();
            //   if (markers.isEmpty&&cameraPosition?.target!=null) {
            //     print("on camera idle");
            //     Marker marker = Marker(
            //         markerId: const MarkerId('00'), position: cameraPosition!.target);
            //     markers.add(marker);
            //     // _markerLocation.
            //     List<Placemark> placemarks = await placemarkFromCoordinates(
            //         cameraPosition!.target.latitude,
            //         cameraPosition!.target.longitude);
            //     _markerLocation = cameraPosition!.target;
            //     // print(placemarks.first.toString());
            //     setState(() {
            //       //get place name from lat and lang
            //       CountryCode = placemarks.first.isoCountryCode!;
            //       StateName = placemarks.first.administrativeArea!;
            //       StreetName = placemarks.first.street!;
            //       locationName = "${placemarks.first.street}";
            //       address1Controller.text=locationName;
            //     });
            //   }
            //   // },
            //   // print(locationName);
            // },
            // onTap: (maker) async {
            //   // _addMarker(maker);
            //   print(markers.length);
            //   markers.clear();
            //   // Marker firstMarker=markers.where((element) => element.markerId.value=="3").first;
            //   // firstMarker.icon=
            //   // if(markers.where((element) => element.markerId.value =="3").first.icon)
            //   if (markers.isEmpty) {
            //     Marker marker = Marker(
            //         markerId: const MarkerId('3'),
            //         position: maker,
            //         icon: BitmapDescriptor.defaultMarkerWithHue(
            //             BitmapDescriptor.hueRed),
            //         infoWindow: const InfoWindow(title: " "));
            //     // List<Placemark> placemarks = await placemarkFromCoordinates(
            //     //     cameraPosition!.target.latitude,
            //     //     cameraPosition!.target.longitude);
            //     // _markerLocation = cameraPosition!.target;
            //     // print(placemarks.first.toString());
            //     // setState(() {
            //     //get place name from lat and lang
            //     // CountryCode = placemarks.first.isoCountryCode!;
            //     // StateName = placemarks.first.administrativeArea!;
            //     // StreetName = placemarks.first.street!;
            //     // locationName = "${placemarks.first.street}";
            //     // address1Controller.text=locationName;
            //
            //     // }
            //     // );
            //     setState(() {
            //       // addMarkerToMarkersAndUpdateUI(marker);
            //
            //       markers.add(marker);
            //     });
            //     List<Placemark> placemarks = await placemarkFromCoordinates(
            //         markers.first.position.latitude,
            //         markers.first.position.longitude);
            //     _markerLocation = cameraPosition!.target;
            //     print(placemarks.first.toString());
            //     setState(() {
            //       // get place name from lat and lang
            //       CountryCode = placemarks.first.isoCountryCode!;
            //       StateName = placemarks.first.administrativeArea!;
            //       StreetName = placemarks.first.street!;
            //       locationName = "${placemarks.first.street}";
            //       address1Controller.text = locationName;
            //     });
            //   } else if (markers.length == 1) {
            //     markers.clear();
            //     Marker marker =
            //         Marker(markerId: const MarkerId('3'), position: maker);
            //     markers.add(marker);
            //     setState(() {
            //       // addMarkerToMarkersAndUpdateUI(marker);
            //     });
            //   } else {
            //     markers.clear();
            //     setState(() {});
            //   }
            // },
          ),
        ),
      ],
    );
  }
}
