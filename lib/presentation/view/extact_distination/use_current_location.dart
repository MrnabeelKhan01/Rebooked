import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rebooked_app/configurations/frontend_configs.dart';
import 'package:rebooked_app/presentation/elements/app_button.dart';
import 'package:rebooked_app/presentation/elements/app_card.dart';
import 'package:rebooked_app/presentation/elements/custom_text.dart';

import 'dart:ui' as ui;
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'layout/bottom_sheet/enhanced_monitoring.dart';

class UseCurrentLocation extends StatefulWidget {
  const UseCurrentLocation({super.key});

  @override
  State<UseCurrentLocation> createState() => _UseCurrentLocationState();
}

class _UseCurrentLocationState extends State<UseCurrentLocation> {
  late GoogleMapController mapController;
  bool isShow = false;
  final Completer<GoogleMapController> _controller = Completer();
  BitmapDescriptor? destinationIcon;
  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );
  Set<Marker> markers = {};
  static const CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  Future<Uint8List> getBytesFromAsset(String path, int width) async {
    ByteData data = await rootBundle.load(path);
    ui.Codec codec = await ui.instantiateImageCodec(data.buffer.asUint8List(),
        targetWidth: width);
    ui.FrameInfo fi = await codec.getNextFrame();
    return (await fi.image.toByteData(format: ui.ImageByteFormat.png))!
        .buffer
        .asUint8List();
  }

  Future setSourceAndDestinationIcons() async {
    final Uint8List icon1 =
    await getBytesFromAsset('assets/icons/marker.png', 200);

    destinationIcon = await BitmapDescriptor.fromBytes(icon1);
    setState(() {});
    return Future.value(true);
  }

  @override
  void initState() {
    setSourceAndDestinationIcons().then((value) {
      markers.addAll([
        Marker(
            onTap: () {
              setState(() {
                isShow = !isShow;
              });
            },
            markerId: const MarkerId('1'),
            position: const LatLng(37.42796133580664, -122.085749655962),
            icon: destinationIcon!),
      ]);
      setState(() {});
    });
    setSourceAndDestinationIcons().then((value) {
      markers.addAll([
        Marker(
            onTap: () {
              setState(() {
                isShow = !isShow;
              });
            },
            markerId: const MarkerId('2'),
            position: const LatLng(37.42796133580664, -121.085749655962),
            icon: destinationIcon!),
      ]);
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Column(
            mainAxisAlignment:MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment:CrossAxisAlignment.start,
                children: [
                  Text(
                    "Exact destination",
                    style: FrontendConfigs.kAppHeadingStyle,
                  ),
                  const SizedBox(height:8,),
                  CustomText(
                    text: "Select your exact location",
                    fontSize: 15,
                    color: Colors.black.withOpacity(0.70),
                  ),
                  const SizedBox(height:18,),
                  SizedBox(
                    height:54,
                    child: TextFormField(
                      style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                      decoration: InputDecoration(
                        hintText: "Search Place",
                        hintStyle: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                          BorderSide(color: FrontendConfigs.kAppBorderColor),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                          BorderSide(color: FrontendConfigs.kAppBorderColor),
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(13.0),
                          child: SvgPicture.asset("assets/icons/search_icon.svg"),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height:18,),
                  Stack(
                    children: [
                      SizedBox(
                        height: 320,
                        child: ClipRRect(
                          borderRadius:BorderRadius.circular(10),
                          child: GoogleMap(
                            mapToolbarEnabled: false,
                            myLocationButtonEnabled: false,
                            zoomControlsEnabled: false,
                            mapType: MapType.normal,
                            markers: markers,
                            initialCameraPosition: _kGooglePlex,
                            onMapCreated: (controller) {
                              mapController = controller;
                            },
                            myLocationEnabled: true, // Enable MyLocation layer
                          ),
                        ),
                      ),
                      Positioned(
                        right:10,
                        top:10,
                        child: Column(children: [
                          Container(
                            height:32,
                            width:32,
                            decoration:BoxDecoration(
                                borderRadius:BorderRadius.circular(8),
                                color:Colors.white
                            ),
                            child:const Icon(Icons.add,color: Color(0xff626262),),
                          ),
                          const SizedBox(height:8,),
                          Container(
                            height:32,
                            width:32,
                            decoration:BoxDecoration(
                                borderRadius:BorderRadius.circular(8),
                                color:Colors.white
                            ),
                            child:const Icon(Icons.remove,color: Color(0xff626262),),
                          )
                        ],),
                      ),
          Positioned(
            bottom:10,
            left:10,
            child: Container(
              width:MediaQuery.sizeOf(context).width/1.18,
              decoration: BoxDecoration(
                color:Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: FrontendConfigs.kAppBorderColor)),
              child: Padding(
                padding: const EdgeInsets.only(left:12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 48,
                          width: 48,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: const Color(0xff003366).withOpacity(0.10)),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: SvgPicture.asset("assets/icons/mark_icon.svg"),
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Column(
                          crossAxisAlignment:CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              text: "Chalotte St",
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                            const SizedBox(height:3,),
                            RatingBarIndicator(
                              rating:5,
                              itemBuilder: (context, index) =>SvgPicture.asset("assets/icons/star.svg"),
                              itemCount: 5,
                              itemSize: 15.0,
                              direction: Axis.horizontal,
                            ),
                            const SizedBox(height:3,),
                            CustomText(
                              text: "4517 Washington Ave. Manchester, \nKentucky 39495",
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: FrontendConfigs.kAppPrimaryColor.withOpacity(0.6),
                            ),
                            const SizedBox(height:3,),
                          ],
                        )
                      ],
                    ),

                  ],
                ),
              ),
            ),
          )
                    ],
                  ),


                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom:18.0),
                child: AppButton(onPressed: (){
                  showEnhancedMonitoringSheet(context);
                }, btnLabel: "Confirm Location"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
