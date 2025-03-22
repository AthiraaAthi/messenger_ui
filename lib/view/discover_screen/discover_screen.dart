import 'package:flutter/material.dart';
import 'package:messenger_ui/utils/color_constant/colorconstant.dart';
import 'package:messenger_ui/utils/image_constant/imageconstant.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: white,
        leading: Padding(
          padding: const EdgeInsets.all(5),
          child: CircleAvatar(
            backgroundImage: AssetImage(
              profile,
            ),
            radius: 20,
            backgroundColor: black,
          ),
        ),
        title: Text(
          "Discover",
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 40,
              width: double.infinity,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: grey,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Search",
                      style: TextStyle(color: Colors.grey, fontSize: 18)),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 50,
                  width: 180,
                  decoration: BoxDecoration(
                    color: grey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                      child: Text(
                    "FOR YOU",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                  )),
                ),
                Container(
                  height: 50,
                  width: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                      child: Text(
                    "BUSINESS",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                  )),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text("Recent")
          ],
        ),
      ),
    );
  }
}
