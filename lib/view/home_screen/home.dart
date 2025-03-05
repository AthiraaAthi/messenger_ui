import 'package:flutter/material.dart';
import 'package:messenger_ui/utils/color_constant/colorconstant.dart';
import 'package:messenger_ui/utils/image_constant/imageconstant.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(5),
          child: CircleAvatar(
            radius: 20,
            backgroundColor: black,
          ),
        ),
        backgroundColor: white,
        title: Text(
          "Chats",
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
        ),
        actions: [
          CircleAvatar(
            backgroundImage: AssetImage(profile),
            backgroundColor: grey,
            radius: 20,
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.camera_alt,
                  color: black,
                )),
          ),
          SizedBox(
            width: 10,
          ),
          CircleAvatar(
            backgroundColor: grey,
            radius: 20,
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.edit_square,
                  color: black,
                )),
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
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
            ListView.builder(
              shrinkWrap: true,
              itemBuilder: (context, index) => CircleAvatar(
                radius: 30,
                backgroundColor: grey,
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.add,
                      color: black,
                      size: 30,
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
