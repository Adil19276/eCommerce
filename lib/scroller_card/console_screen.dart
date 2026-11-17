import 'package:ecommerce/filter.dart';
import 'package:ecommerce/scroller_card/consle_list.dart';
import 'package:ecommerce/scroller_card/console_grid.dart';
import 'package:ecommerce/scroller_card/dummy_modal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class console_card extends StatefulWidget {
  const console_card({super.key});

  @override
  State<console_card> createState() => _console_cardState();
}

class _console_cardState extends State<console_card> {
  bool isGrid = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 50,
        child: Row(
          children: [
            Spacer(),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => filter(),
                  ),
                );
              },
              child: Row(
                children: [
                  Icon(
                    Icons.filter_alt_outlined,
                    color: Colors.black,
                  ),
                  Text(" Filter"),
                ],
              ),
            ),
            Spacer(),
            Row(
              children: [
                Container(
                  height: 50,
                  width: 1,
                  color: Colors.grey,
                ),
              ],
            ),
            Spacer(),
            InkWell(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) => Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => console_card(),
                            ),
                          );
                        },
                        child: Column(
                          children: [
                            Container(
                              height: 4,
                              width: 40,
                              color: Colors.grey[400],
                            ),
                            SizedBox(height: 10),
                            Text("Sort by",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            ListTile(
                              title: Text("Default"),
                            ),
                            ListTile(
                              title: Text("New to Old"),
                            ),
                            ListTile(
                              title: Text("Old to New"),
                            ),
                            ListTile(
                              title: Text("Price High to Low"),
                            ),
                            ListTile(
                              title: Text("Price Low to High"),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
              child: Row(
                children: [
                  Icon(Icons.format_line_spacing_rounded),
                  Text(" Sort by"),
                ],
              ),
            ),
            Spacer(),
          ],
        ),
      ),
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: Text(
          'Console & Video Games',
          style: TextStyle(color: Colors.black),
        ),
        bottom: PreferredSize(
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: TextField(
                      onChanged: (value) {
                        setState(() {});
                      },
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          CupertinoIcons.search,
                          color: Colors.black,
                        ),
                        hintText: "Search any advertisement ",
                        hintStyle: TextStyle(color: Colors.grey),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        fillColor: Colors.grey,
                        contentPadding: EdgeInsets.symmetric(horizontal: 15),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isGrid = true;
                      });
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.apps,
                            color: isGrid ? Colors.black : Colors.grey,
                            size: 30,
                          )),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isGrid = false;
                      });
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.format_list_bulleted_rounded,
                            color: isGrid ? Colors.grey : Colors.black,
                            size: 30,
                          )),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                ],
              ),
            ],
          ),
          preferredSize: Size.fromHeight(50),
        ),
      ),
      body: SafeArea(
          child: Column(
        children: [
          Expanded(child: isGrid ? buildGridView() : buildListView()),
        ],
      )),
    );
  }

  Widget buildGridView() {
    return GridView.builder(
      itemCount: Console_data.length > 3 ? 3 : Console_data.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 0.7,
      ),
      shrinkWrap: true,
      // physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.all(12),
      itemBuilder: (context, index) {
        final Console_datas = Console_data[index];
        return console_grid(Console_data: Console_datas, index: index);
      },
    );
  }

  Widget buildListView() {
    return ListView.builder(
        shrinkWrap: false,
        itemCount: Console_data.length > 5 ? 4 : Console_data.length,
        itemBuilder: (_, index) =>
            console_list(Console_data: Console_data[index], index: index));
  }
}
