import 'package:flutter/material.dart';
import 'package:messenger_ui/utils/color_constant/colorconstant.dart';
import 'package:messenger_ui/utils/image_constant/imageconstant.dart';

class PeopleScreen extends StatelessWidget {
  const PeopleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
        backgroundColor: white,
        title: Text(
          "People",
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
        ),
        actions: [
          CircleAvatar(
            backgroundColor: grey,
            radius: 20,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 10,
              backgroundImage: AssetImage(msg_icon),
            ),
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
                    Icons.person_add,
                    color: black,
                    size: 25,
                  ))),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 40,
            width: double.infinity,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: grey,
              borderRadius: BorderRadius.circular(10),
            ),
          )
        ],
      ),
    );
  }
}
