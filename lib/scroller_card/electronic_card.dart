import 'package:flutter/material.dart';

class electronic_card extends StatefulWidget {
  const electronic_card({super.key});

  @override
  State<electronic_card> createState() => _electronic_cardState();
}

class _electronic_cardState extends State<electronic_card> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          'Electronics',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Row(
                children: [
                  Text(
                    "All Electronics",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            
              buildMenuItem(
                  Image.network(
                      "https://cdn.mos.cms.futurecdn.net/fsDKHB3ZyNJK6zMpDDBenB-1200-80.jpg"),
                  "Headsphones"),
              buildMenuItem(
                  Image.network(
                      "https://images.ctfassets.net/w5r1fvmogo3f/U9ZGwzGhTuEmrCeXM8cLf/a89384345c1199cde0ba01e61f4b0991/arena_9_pdp_tiles_twoway_d.png?fm=webp&q=90&fit=scale&w=1280"),
                  "Speakers"),
              buildMenuItem(
                  Image.network(
                      "https://s.yimg.com/uu/api/res/1.2/.6zQrIzLSlh_4vPL1MdyuQ--~B/Zmk9c3RyaW07aD03MjA7dz0xMjgwO2FwcGlkPXl0YWNoeW9u/https://s.yimg.com/os/creatr-uploaded-images/2023-04/dcf6b740-d92f-11ed-97db-fc9e52bfbcd7"),
                  "VR Headsets"),
              buildMenuItem(
                  Image.network(
                      "https://img.freepik.com/free-vector/home-theater-realistic-interior-template_1284-14928.jpg?semt=ais_hybrid&w=740"),
                  " Home Theater"),
              buildMenuItem(
                  Image.network(
                      "https://www.cmcelectric.com/wp-content/uploads/2020/07/lg-banner.jpg"),
                  "Televisions"),
                  buildMenuItem(
                  Image.network(
                      "https://zayraz.pk/wp-content/uploads/2024/10/Smart-Watch-44mm-Series-6-for-All-Android-and-IOS.png"),
                  " Smart Watches"),
              buildMenuItem(
                  Image.network(
                      "https://wrteamdev.github.io/eClassify/images/logo/favicon.png"),
                  "Other"),

              SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
  Widget buildMenuItem(Image image, String title) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
      ),
      child: ListTile(
        leading: Container(
          decoration: BoxDecoration(
            color: Colors.cyan.shade50,
            shape: BoxShape.circle,
          ),
          child: CircleAvatar(
            radius: 20,
            backgroundColor: Colors.white,
            child: ClipOval(
              child: SizedBox(
                width: 50,
                height: 50,
                child: FittedBox(fit: BoxFit.cover, child: image),
              ),
            ),
          ),

          // Container(
          //   height: 30,
          //   width: 30,
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(30)
          //   ),child: FittedBox(fit: BoxFit.fill,
          //     child: image),
          // ),
        ),
        title: Text(title,
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16)),
        trailing: Icon(Icons.arrow_forward_ios_rounded, size: 18),
        // onTap: () {},
      ),
    );
  }
}
