// import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/chat.dart';
import 'package:ecommerce/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../utils.dart';

class cars_detail extends StatefulWidget {
  final Map<String, dynamic> car;
  final List<Map<String, dynamic>> carSpecs;
  const cars_detail({
    super.key,
    required this.car,
    required this.carSpecs,
  });

  @override
  State<cars_detail> createState() => _cars_detailState();
}

List<String> carTitles = cars.map((car) => car['title'] as String).toList();

final List<Map<String, dynamic>> carSpecs = [
  {
    'icon': Icons.directions_car,
    'label': 'Car Brand',
    'value': '',
  },
  {
    'icon': Icons.calendar_today,
    'label': 'Year of registration',
    'value': '2023',
  },
  {
    'icon': Icons.speed,
    'label': 'Kilometer',
    'value': '0 - 10,000 km',
  },
  {
    'icon': Icons.car_rental,
    'label': 'Type',
    'value': 'Luxury Car',
  },
  {
    'icon': Icons.local_gas_station,
    'label': 'Fuel',
    'value': 'Petrol',
  },
  {
    'icon': Icons.event_seat,
    'label': 'Seatings',
    'value': '4-Seater',
  },
  {
    'icon': Icons.color_lens,
    'label': 'Colors',
    'value': 'Crimson Red',
  },
  {
    'icon': Icons.settings,
    'label': 'Horse Power',
    'value': '900 - 950 HP',
  },
  {
    'icon': Icons.build,
    'label': 'Engine Capacity',
    'value': '2,500 - 3,000 CC',
  },
];
Map<String, List<Map<String, dynamic>>> allCarSpecs = {
  "BMW": [
    {"icon": Icons.speed, "label": "Speed", "value": "250 km/h"},
    {"icon": Icons.settings, "label": "Engine", "value": "2.0L Turbo"},
  ],
  "Lamborghini": [
    {"icon": Icons.speed, "label": "Speed", "value": "350 km/h"},
    {"icon": Icons.settings, "label": "Engine", "value": "V12"},
  ],
  "Bugatti": [
    {"icon": Icons.speed, "label": "Speed", "value": "420 km/h"},
    {"icon": Icons.settings, "label": "Engine", "value": "W16 Quad Turbo"},
  ],
};

// late GoogleMapController mapController;
int _currentIndex = 0;
final CarouselController _controller = CarouselController();
// void _onMapCreated(GoogleMapController controller) {
//   mapController = controller;
// }

class _cars_detailState extends State<cars_detail> {
  @override
  bool isFavorite = false;
  Widget build(BuildContext context) {
    List<String> images =
        (widget.car['images'] as List).map((e) => e.toString()).toList();
    return Scaffold(
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          InkWell(
            onTap: () {
              showModalBottomSheet(
                  context: context,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                  ),
                  builder: (context) => Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            height: 150,
                            width: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20)),
                            child: Image(
                              image: AssetImage("assets/vector_verify.png"),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Safety Tips",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Wrap(
                              spacing: 16,
                              runSpacing: 12,
                              children: [
                                textBox(
                                    "Take necessary precautions when meeting with buyers and sellers."),
                                textBox(
                                    "Avoid Entering UPI PIN When Receiving Payments."),
                                textBox(
                                    "Never hand over money or products upfront."),
                                textBox(
                                    "Report user about any suspicious activity."),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12.0, vertical: 5),
                              child: Container(
                                height: 40,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Themecolor,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: Text(
                                    "Continue to offer",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ));
            },
            child: Container(
              height: 50,
              width: MediaQuery.sizeOf(context).width * 0.45,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Themecolor),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "Make an Offer",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => chat(),
                ),
              );
            },
            child: Container(
              height: 50,
              width: MediaQuery.sizeOf(context).width * 0.45,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Themecolor),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "Chat",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        actions: [
          InkWell(
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (context) => Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: 100,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Icon(
                                  Icons.copy,
                                  color: Colors.grey,
                                ),
                              ),
                              Text("Copy Link")
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Icon(
                                  Icons.share,
                                  color: Colors.grey,
                                ),
                              ),
                              Text("Share")
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
            child: Icon(
              Icons.share,
              color: Colors.black,
            ),
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    SizedBox(
  height: 230, // Aspect Ratio ke hisab se adjust kar sakte ho
  width: double.infinity,
  child: PageView.builder(
    itemCount: images.length,
    controller: PageController(viewportFraction: 1),
    onPageChanged: (index) {
      setState(() {
        _currentIndex = index;
      });
    },
    itemBuilder: (context, index) {
      final url = images[index];
      return ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.network(
              url,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            Positioned(
              top: 10,
              right: 10,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    isFavorite = !isFavorite;
                  });
                },
                child: Container(
                  height: 30,
                  width: 30,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 4,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Center(
                    child: Icon(
                      isFavorite
                          ? Icons.favorite
                          : Icons.favorite_border_outlined,
                      color: Themecolor,
                      size: 20,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    },
  ),
),

                    SizedBox(height: 20),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.car['title'],
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(widget.car['price'],
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Themecolor,
                                    fontWeight: FontWeight.w500)),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              widget.car['location'],
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                        Spacer(),
                        Text(
                          widget.car['time'],
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Divider(
                  thickness: 1,
                ),
              ),
              buildCarSpecsGrid(widget.carSpecs, widget.car['brand']),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Divider(
                  thickness: 1,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      "About this Advertisment",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  children: [
                    Text(
                      "Lorem Ipsum is simply dummy text of the printing\nand typesetting industry. Lorem Ipsum has been then\nindustry's standard dummy text ever since the 1500s,\nwhen an unknown printer took a galley of type and\nscrambled it to make a type specimen book. It has\nsurvived not only five centuries, but also the leap into\nelectronic typesetting, remaining essentially unchanged.",
                      style: TextStyle(color: Colors.grey, height: 1.3),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Divider(
                  thickness: 1,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Location",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              color: Themecolor,
                            ),
                            Text(
                              "bhuj, India",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey),
                      image: DecorationImage(
                          image: NetworkImage(
                            "https://insightpropertygroup.com/wp-content/uploads/map-bg-blur.jpg",
                          ),
                          fit: BoxFit.cover)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 50,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Themecolor),
                        child: Center(
                          child: Text(
                            "View Map",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              )
              // buildMapSection(widget.car),
            ],
          ),
        ),
      ),
    );
  }

  // Widget buildMapSection(Map<String, dynamic> cars) {
  //   LatLng carLatLng = LatLng(cars['lat'], cars['lng']);

  //   return Padding(
  //     padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
  //     child: Column(
  //       crossAxisAlignment: CrossAxisAlignment.start,
  //       children: [
  //         // Text('Car Location',
  //         //     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
  //         // SizedBox(height: 10),
  //         Container(
  //           height: 200,
  //           decoration: BoxDecoration(
  //             borderRadius: BorderRadius.circular(12),
  //             border: Border.all(color: Colors.grey.shade300),
  //           ),
  //           child: ClipRRect(
  //             borderRadius: BorderRadius.circular(12),
  //             child: GoogleMap(
  //               onMapCreated: _onMapCreated,
  //               initialCameraPosition: CameraPosition(
  //                 target: carLatLng,
  //                 zoom: 14,
  //               ),
  //               markers: {
  //                 Marker(
  //                   markerId: MarkerId('car_location'),
  //                   position: carLatLng,
  //                   infoWindow: InfoWindow(title: cars['brand']),
  //                 ),
  //               },
  //               zoomControlsEnabled: false,
  //               liteModeEnabled: true,
  //             ),
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }

  Widget buildCarSpecsGrid(List<Map<String, dynamic>> carSpecs, String brand) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.all(10),
      itemCount: carSpecs.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 3.5,
      ),
      itemBuilder: (context, index) {
        final carSpec = carSpecs[index];
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(
            color: Colors.white12,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                blurRadius: 1,
                offset: Offset(0, 1),
              )
            ],
          ),
          child: Row(
            children: [
              Icon(carSpec['icon'], size: 24, color: Colors.black),
              SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    carSpec['label'],
                    style: TextStyle(fontSize: 10, color: Colors.grey),
                  ),
                  Text(
                    carSpec['value'],
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  Widget textBox(String text) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.download_done, color: Colors.green, size: 20),
        SizedBox(width: 6),
        Flexible(
          child: Text(
            text,
            style: TextStyle(fontSize: 14),
          ),
        ),
      ],
    );
  }
}
