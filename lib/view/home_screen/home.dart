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
      body: Column(
        children: [
          Container(
            height: 30,
            width: double.infinity,
            decoration: BoxDecoration(),
          )
        ],
      ),
    );
  }
}
