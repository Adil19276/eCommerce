import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class choose_language extends StatefulWidget {
  const choose_language({super.key});

  @override
  State<choose_language> createState() => _choose_languageState();
}

class _choose_languageState extends State<choose_language> {
  final List<List<String>> rowdata = [
    ['English'],
    ['French'],
    ['German'],
    ['German'],
    ['Tamil'],
    ['Portuguese'],
    ['Indonesian'],
    ['Korea'],
    ['Chinese'],
    ['Russian'],
    ['Italian'],
    ['Bngali Bangla'],
    ['Spanish'],
  ];
  final List<String> containerimage = [
    'https://wiki2.railml.org/images/b/b8/UK_flag.png',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/6/62/Flag_of_France.png/1280px-Flag_of_France.png',
    'https://img.freepik.com/free-vector/illustration-german-flag_53876-27101.jpg?semt=ais_hybrid&w=740',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0a/Flag_of_Saudi_Arabia_%28type_2%29.svg/2560px-Flag_of_Saudi_Arabia_%28type_2%29.svg.png',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c7/Bicolor_flag_of_Tamil_Eelam.svg/1024px-Bicolor_flag_of_Tamil_Eelam.svg.png',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5c/Flag_of_Portugal.svg/1280px-Flag_of_Portugal.svg.png',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9f/Flag_of_Indonesia.svg/1280px-Flag_of_Indonesia.svg.png',
    'https://upload.wikimedia.org/wikipedia/commons/0/0f/Flag_of_South_Korea.png',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2e/Flag_of_China.png/1024px-Flag_of_China.png',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuFXVaBEnKbpodO0cyYPr7WLyHPiUUxtlr-g&s',
    'https://upload.wikimedia.org/wikipedia/commons/e/e4/Flag_of_Italy_%281946%E2%80%932003%29.png',
    'https://images.rawpixel.com/image_800/czNmcy1wcml2YXRlL3Jhd3BpeGVsX2ltYWdlcy93ZWJzaXRlX2NvbnRlbnQvbHIvdnByb2plY3RvbGQxLW5pbmctZmxhZ3MtMDRfMi5qcGc.jpg',
    'https://upload.wikimedia.org/wikipedia/en/thumb/9/9a/Flag_of_Spain.svg/2560px-Flag_of_Spain.svg.png',
  ];
  int selectedindex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
        title: Text(
          "Choose Language",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SafeArea(
        child: ListView.builder(
            itemCount: rowdata.length,
            itemBuilder: (context, index) {
              final RowItem = rowdata[index];
              return Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 10, left: 10, right: 10),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedindex = index;
                        });
                      },
                      child: Container(
                        width: double.infinity,
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                        decoration: BoxDecoration(
                            color: selectedindex == index
                                ? Colors.blue
                                : Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          children: [
                            Container(
                              height: 35,
                              width: 35,
                              margin: EdgeInsets.only(right: 11),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: NetworkImage(
                                      containerimage[index],
                                    ),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            Expanded(
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    RowItem[0],
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: selectedindex == index
                                            ? Colors.white
                                            : Colors.black),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.all(10.0),
                  //   child: Divider(),
                  // ),
                ],
              );
            }),
      ),
    );
  }
}
