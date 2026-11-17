import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/dummy.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../chat.dart';
import '../../color.dart';

class item_detail extends StatefulWidget {
    final Map<String, dynamic> itemdata;
  final List<Map<String, dynamic>> itemdataSpec;
  const item_detail({super.key,required this.itemdata,required this.itemdataSpec});

  @override
  State<item_detail> createState() => _item_detailState();
}
List<String> carTitles =
    itemdata.map((computers) => computers['title'] as String).toList();
    final List<Map<String, dynamic>> itemdataSpec = [
  {
    'icon': Icons.workspace_premium_outlined,
    'label': 'Brand',
    'value': 'Westorn Digital',
  },
  {
    'icon': Icons.token_outlined,
    'label': 'Model',
    'value': 'WDOO5CCK',
  },
  {
    'icon': Icons.color_lens,
    'label': 'Warranty',
    'value': 'Yes',
  },
  {
    'icon': Icons.verified_outlined,
    'label': 'Color',
    'value': 'Multi',
  },
];
Map<String, List<Map<String, dynamic>>> allitemdataSpecs = {
  "Rolex Submari": [
    //{"icon": Icons.speed, "label": "Speed", "value": "250 km/h"},
   // {"icon": Icons.settings, "label": "Engine", "value": "2.0L Turbo"},
  ],
  "Omega speed": [
   // {"icon": Icons.speed, "label": "Speed", "value": "350 km/h"},
    //{"icon": Icons.settings, "label": "Engine", "value": "V12"},
  ],
  "Tag heuer carr": [
    //{"icon": Icons.speed, "label": "Speed", "value": "420 km/h"},
    //{"icon": Icons.settings, "label": "Engine", "value": "W16 Quad Turbo"},
  ],
};

int _currentIndex = 0;
final CarouselController _controller = CarouselController();

class _item_detailState extends State<item_detail> {
  @override
 bool isFavorite = false;
  Widget build(BuildContext context) {
    List<String> images =
        (widget.itemdata['images'] as List).map((e) => e.toString()).toList();
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
                    // CarouselSlider(
                    //   items: images
                    //       .map((url) => ClipRRect(
                    //             borderRadius: BorderRadius.circular(10),
                    //             child: Stack(
                    //               fit: StackFit.expand,
                    //               children: [
                    //                 Image.network(
                    //                   url,
                    //                   fit: BoxFit.cover,
                    //                   width: double.infinity,
                    //                 ),
                    //                 Container(
                    //                   child: Positioned(
                    //                     top: 10,
                    //                     left: 300,
                    //                     child: GestureDetector(
                    //                       onTap: () {
                    //                         setState(() {
                    //                           if (isFavorite) {
                    //                             isFavorite = false;
                    //                           } else {
                    //                             isFavorite = true;
                    //                           }
                    //                         });
                    //                       },
                    //                       child: Container(
                    //                         height: 30,
                    //                         width: 30,
                    //                         decoration: const BoxDecoration(
                    //                           color: Colors.white,
                    //                           shape: BoxShape.circle,
                    //                           boxShadow: [
                    //                             BoxShadow(
                    //                               color: Colors.black26,
                    //                               blurRadius: 4,
                    //                               offset: Offset(0, 3),
                    //                             ),
                    //                           ],
                    //                         ),
                    //                         child: Center(
                    //                           child: Icon(
                    //                             isFavorite
                    //                                 ? Icons.favorite
                    //                                 : Icons
                    //                                     .favorite_border_outlined,
                    //                             color: Themecolor,
                    //                             size: 20,
                    //                           ),
                    //                         ),
                    //                       ),
                    //                     ),
                    //                   ),
                    //                 ),
                    //               ],
                    //             ),
                    //           ))
                    //       .toList(),
                    //   carouselController: _controller,
                    //   options: CarouselOptions(
                    //     enlargeCenterPage: true,
                    //     viewportFraction: 1.0,
                    //     aspectRatio: 16 / 9,
                    //     onPageChanged: (index, reason) {
                    //       setState(() {
                    //         _currentIndex = index;
                    //       });
                    //     },
                    //   ),
                    // ),
                    // // Dot indicators
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   children: images.asMap().entries.map((entry) {
                    //     return GestureDetector(
                    //       onTap: () => _controller.animateToPage(entry.key),
                    //       child: Container(
                    //         width: 8.0,
                    //         height: 8.0,
                    //         margin: EdgeInsets.symmetric(
                    //             vertical: 10.0, horizontal: 4.0),
                    //         decoration: BoxDecoration(
                    //             shape: BoxShape.circle,
                    //             color: _currentIndex == entry.key
                    //                 ? Colors.blue
                    //                 : Colors.grey),
                    //       ),
                    //     );
                    //   }).toList(),
                    // ),

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
                              widget.itemdata['title'],
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(widget.itemdata['price'],
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Themecolor,
                                    fontWeight: FontWeight.w500)),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              widget.itemdata['location'],
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                        Spacer(),
                        Text(
                          widget.itemdata['time'],
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
              builditemdataGrid(widget.itemdataSpec),
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
            ],
          ),
        ),
      ),

    );
  }
  Widget builditemdataGrid(List<Map<String, dynamic>> itemdataSpec) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.all(10),
      itemCount: itemdataSpec.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 3.5,
      ),
      itemBuilder: (context, index) {
        final spec = itemdataSpec[index];
        final iconData = spec['icon'];
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
              iconData is IconData
                  ? Icon(iconData, size: 24, color: Colors.black)
                  : Image.asset(iconData, width: 24, height: 24),
              SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    spec['label'] ?? '',
                    style: TextStyle(fontSize: 10, color: Colors.grey),
                  ),
                  Text(
                    spec['value'] ?? '',
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