import 'dart:async';
import 'package:ecommerce/card/ads_card_widget.dart';
import 'package:ecommerce/card/car_card_widget.dart';
import 'package:ecommerce/card/computer_card_widget.dart';
import 'package:ecommerce/card/electronics_card_widget.dart';
import 'package:ecommerce/card/fashion_card_widget.dart';
import 'package:ecommerce/card/item_card_widget.dart';
import 'package:ecommerce/card/properties_card_widget.dart';
import 'package:ecommerce/color.dart';
import 'package:ecommerce/dummy.dart';
// import 'package:eclassify_app/location.dart';
import 'package:ecommerce/other_loctaion.dart';
import 'package:ecommerce/scroller_card/cameras_card.dart';
import 'package:ecommerce/scroller_card/car_vehicle_card.dart';
import 'package:ecommerce/scroller_card/clothing_card.dart';
import 'package:ecommerce/scroller_card/computers_screen.dart';
import 'package:ecommerce/scroller_card/console_screen.dart';
import 'package:ecommerce/scroller_card/electronic_card.dart';
import 'package:ecommerce/scroller_card/furnituer_card.dart';
import 'package:ecommerce/scroller_card/home_appliances.dart';
import 'package:ecommerce/scroller_card/jewelry_card.dart';
import 'package:ecommerce/scroller_card/jobs_card.dart';
import 'package:ecommerce/scroller_card/mobile_screen.dart';
import 'package:ecommerce/scroller_card/more_option.dart';
import 'package:ecommerce/scroller_card/musical_instrument_screen.dart';
import 'package:ecommerce/scroller_card/pet_card.dart';
import 'package:ecommerce/scroller_card/property_card.dart';
import 'package:ecommerce/scroller_card/sports_card.dart';
import 'package:ecommerce/search_add.dart';
import 'package:ecommerce/see_all/all_cars.dart';
import 'package:ecommerce/see_all/all_computers.dart';
import 'package:ecommerce/see_all/all_electronics.dart';
import 'package:ecommerce/see_all/all_fashion.dart';
import 'package:ecommerce/see_all/all_properties.dart';
import 'package:ecommerce/see_all/details_card/cars_detail.dart';
import 'package:ecommerce/see_all/details_card/computer_details.dart';
import 'package:ecommerce/see_all/details_card/electronics_detail.dart';
import 'package:ecommerce/see_all/details_card/fashions_detail.dart';
import 'package:ecommerce/see_all/details_card/item_detail.dart';
import 'package:ecommerce/see_all/details_card/properties_detail.dart';
import 'package:ecommerce/see_all/popular_item.dart';
import 'package:ecommerce/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;
  Timer? _timer;

  List<int> selectedIndexes = [];

  void initState() {
    super.initState();

    _timer = Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      if (_currentPage < imageUrls.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _pageController.dispose();
    super.dispose();
  }

  int? index;

  get allcomputerSpecs => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const other_location(),
                  ),
                );
              },
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: const Center(
                  child: Icon(Icons.location_on_outlined, color: Themecolor),
                ),
              ),
            ),
            const SizedBox(width: 10),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Location",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 3),
                Text(
                  "Pakistan",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const search_add(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Container(
                      height: 45,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Row(
                        children: [
                          SizedBox(width: 5),
                          Icon(CupertinoIcons.search, color: Themecolor),
                          SizedBox(width: 5),
                          Text(
                            'Search any advertisement.. ',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 200,
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: imageUrls.length,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 150,
                      width: double.infinity,
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: NetworkImage(imageUrls[index]),
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: List.generate(items.length, (index) {
                        final item = items[index];
                        return InkWell(
                          onTap: () {
                            if (index == 0) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => home_appliances(),
                                ),
                              );
                            } else if (index == 1) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => furniture_card(),
                                ),
                              );
                            } else if (index == 2) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => clothing_card(),
                                ),
                              );
                            } else if (index == 3) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => pet_card(),
                                ),
                              );
                            } else if (index == 4) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => car_vehicle_card(),
                                ),
                              );
                            } else if (index == 5) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => electronic_card(),
                                ),
                              );
                            } else if (index == 6) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => cameras(),
                                ),
                              );
                            } else if (index == 7) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => jewelry_card(),
                                ),
                              );
                            } else if (index == 8) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => mobile_card(),
                                ),
                              );
                            } else if (index == 9) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => console_card(),
                                ),
                              );
                            } else if (index == 10) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => jobs()),
                              );
                            } else if (index == 11) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder:
                                      (context) => musical_instrument_screen(),
                                ),
                              );
                            } else if (index == 12) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => sports_card(),
                                ),
                              );
                            } else if (index == 13) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => property_card(),
                                ),
                              );
                            } else if (index == 14) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => computers_screen(),
                                ),
                              );
                            }
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Column(
                              children: [
                                Container(
                                  width: 70,
                                  height: 70,
                                  decoration: BoxDecoration(
                                    // ignore: deprecated_member_use
                                    color: Themecolor.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Image(
                                          image: NetworkImage(item['image']!),
                                          fit: BoxFit.cover,
                                          color: Themecolor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  item['label']!,
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => more_option(),
                                ),
                              );
                            },
                            child: Container(
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: Colors.grey.shade400),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: const Center(
                                child: Icon(Icons.more_horiz, size: 40),
                              ),
                            ),
                          ),
                          const SizedBox(height: 5),
                          const Text('More'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 30,
                  bottom: 15,
                  left: 10,
                  right: 10,
                ),
                child: Row(
                  children: [
                    Text(
                      "Top Cars Near You",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (context) => all_cars(cars: cars, index: 0),
                          ),
                        );
                      },
                      child: Text("See all"),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(cars.length, (index) {
                    final car = cars[index];

                    return GestureDetector(
                      onTap: () {
                        final selectedCar = cars[index];
                        final brand = selectedCar['brand'];

                        final List<Map<String, dynamic>> mergedSpecs = [
                          ...carSpecs.map((spec) {
                            if (spec['label'] == 'Car Brand') {
                              return {...spec, 'value': brand};
                            }
                            return spec;
                          }),
                          ...?allCarSpecs[brand],
                        ];

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (context) => cars_detail(
                                  car: selectedCar,
                                  carSpecs: mergedSpecs,
                                ),
                          ),
                        );
                      },
                      child: CarCardWidget(car: car, index: index),
                    );
                  }),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 30,
                  bottom: 15,
                  left: 10,
                  right: 10,
                ),
                child: Row(
                  children: [
                    Text(
                      "Top Fashion Near You",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (context) =>
                                    all_fashion(fashion: fashion, index: 0),
                          ),
                        );
                      },
                      child: Text("See all"),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(fashion.length, (index) {
                    final fashions = fashion[index];
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (context) =>
                                    fashions_detail(fashion: fashion[index]),
                          ),
                        );
                      },
                      child: FashionCardWidget(fashion: fashions, index: index),
                    );
                  }),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 30,
                  bottom: 15,
                  left: 10,
                  right: 10,
                ),
                child: Row(
                  children: [
                    Text(
                      "Popular properties in your loc..",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (context) => all_properties(
                                  index: 0,
                                  properties: properties,
                                ),
                          ),
                        );
                      },
                      child: Text("See all"),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(properties.length, (index) {
                    final property = properties[index];

                    return GestureDetector(
                      onTap: () {
                        final selectedProperty = properties[index];
                        final type = selectedProperty['type'];

                        final List<Map<String, dynamic>> mergedSpecs = [
                          ...propertiesSpecs.map((spec) {
                            if (spec['label'] == 'Status') {
                              return {
                                ...spec,
                                'value': selectedProperty['status'] ?? '',
                              };
                            }
                            return spec;
                          }),
                          ...?allproSpecs[type],
                        ];

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (context) => properties_detail(
                                  properties: selectedProperty,
                                  propertiesSpecs: mergedSpecs,
                                ),
                          ),
                        );
                      },
                      child: PropertiesCardWidget(
                        properties: property,
                        index: index,
                      ),
                    );
                  }),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 30,
                  bottom: 15,
                  left: 10,
                  right: 10,
                ),
                child: Row(
                  children: [
                    Text(
                      "Popular in Electronics",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (context) => all_electronics(
                                  electronic: electronic,
                                  index: 0,
                                ),
                          ),
                        );
                      },
                      child: Text("See all"),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(electronic.length, (index) {
                    final electronics = electronic[index];
                    return GestureDetector(
                      onTap: () {
                        final selectedelectronic = electronic[index];
                        final type = selectedelectronic['type'];

                        final List<Map<String, dynamic>> mergedSpecs = [
                          ...electronicSpecs.map((spec) {
                            if (spec['label'] == 'Status') {
                              return {
                                ...spec,
                                'value': selectedelectronic['status'] ?? '',
                              };
                            }
                            return spec;
                          }),
                          ...?allelectronicSpecs[type],
                        ];

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (context) => electronics_detail(
                                  electronic: selectedelectronic,
                                  electronicSpecs: mergedSpecs,
                                ),
                          ),
                        );
                      },
                      child: ElectronicsCardWidget(
                        electronics: electronics,
                        index: index,
                      ),
                    );
                  }),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 30,
                  bottom: 15,
                  left: 10,
                  right: 10,
                ),
                child: Row(
                  children: [
                    Text(
                      "Popular in Computers & Netw...",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (context) => all_computers(
                                  computers: computers,
                                  index: 0,
                                ),
                          ),
                        );
                      },
                      child: Text("See all"),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(computers.length, (index) {
                    final computer = computers[index];
                    return GestureDetector(
                      onTap: () {
                        final selectedcomputer = computers[index];
                        final type = selectedcomputer['type'];

                        final List<Map<String, dynamic>> mergedSpecs = [
                          ...computersSpec.map((spec) {
                            if (spec['label'] == 'Status') {
                              return {
                                ...spec,
                                'value': selectedcomputer['status'] ?? '',
                              };
                            }
                            return spec;
                          }),
                          ...?allcomputerSpecs[type],
                        ];

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (context) => computer_details(
                                  computers: selectedcomputer,
                                  computersSpec: mergedSpecs,
                                ),
                          ),
                        );
                      },
                      child: ComputerCardWidget(
                        computer: computer,
                        index: index,
                      ),
                    );
                  }),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 30,
                  bottom: 15,
                  left: 10,
                  right: 10,
                ),
                child: Row(
                  children: [
                    Text(
                      "Popular Item",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (context) =>
                                    popular_item(index: 0, itemdata: itemdata),
                          ),
                        );
                      },
                      child: Text("See all"),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(itemdata.length, (index) {
                    final itemdata1 = itemdata[index];
                    return GestureDetector(
                      onTap: () {
                        final selecteditemdata = itemdata[index];
                        final type = selecteditemdata['type'];

                        final List<Map<String, dynamic>> mergedSpecs = [
                          ...itemdataSpec.map((spec) {
                            if (spec['label'] == 'Status') {
                              return {
                                ...spec,
                                'value': selecteditemdata['status'] ?? '',
                              };
                            }
                            return spec;
                          }),
                          ...?allitemdataSpecs[type],
                        ];

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (context) => item_detail(
                                  itemdata: selecteditemdata,
                                  itemdataSpec: mergedSpecs,
                                ),
                          ),
                        );
                      },
                      child: ItemdataCardWidget(
                        itemdata: itemdata1,
                        index: index,
                      ),
                    );
                  }),
                ),
              ),
              SizedBox(height: 10),
              Divider(),
              Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 5,
                      bottom: 5,
                      left: 10,
                      right: 10,
                    ),
                    child: Row(
                      children: [
                        Text(
                          "Addvertisement",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  SizedBox(height: 5),
                  GridView.builder(
                    itemCount: popularadds.length > 4 ? 4 : popularadds.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 12,
                      crossAxisSpacing: 2,
                      childAspectRatio: 0.85,
                    ),
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      final popularadd = popularadds[index];
                      return AdsCardWidget(Ads: popularadd, index: index);
                    },
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Column(
                children: [
                  // Row(
                  //   // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //   children: List.generate(popularadds.length, (index) {
                  //     final popularadd = popularadds[index];
                  //     return AdsCardWidget(Ads: popularadd, index: index);
                  //   }),
                  // ),
                  // const SizedBox(
                  //   height: 15,
                  // ),
                  // Row(
                  //   // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //   children: List.generate(addvertisement.length, (index) {
                  //     final addvertisements = addvertisement[index];
                  //     return AdsCardWidget(
                  //         Ads: addvertisements, index: index);
                  //   }),
                  // ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //   children: List.generate(2, (index) {
                  //     final add = fashion[index];
                  //     return buildaddCard(add, index);
                  //   }),
                  // ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
