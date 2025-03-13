import 'package:flutter/material.dart';
import 'package:messenger_ui/utils/color_constant/colorconstant.dart';
import 'package:messenger_ui/utils/image_constant/imageconstant.dart';

class PeopleScreen extends StatefulWidget {
  const PeopleScreen({super.key});

  @override
  State<PeopleScreen> createState() => _PeopleScreenState();
}

class _PeopleScreenState extends State<PeopleScreen> {
  List<String> names = [
    "Ava Chen",
    "Bridget von Ascheberg",
    "Jules Ambrose",
    "Stella Alonso",
    "Vivian Lau",
    "Isabella Valencia",
  ];
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
      body: Padding(
        padding: const EdgeInsets.all(10),
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
                  Text(
                    "Search",
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 30,
                child: Icon(
                  Icons.add,
                  color: black,
                  size: 30,
                ),
              ),
              title: Text(
                "Your Story",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
              ),
              subtitle: Text(
                "Add to your story",
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              leading: Stack(alignment: Alignment.bottomRight, children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(people1),
                ),
                CircleAvatar(
                  radius: 8,
                  backgroundColor: Colors.green,
                )
              ]),
              title: Text(
                "Ava Chen",
                style: TextStyle(
                    fontSize: 19, fontWeight: FontWeight.w600, color: black),
              ),
              trailing: CircleAvatar(
                radius: 20,
                backgroundColor: grey,
                child: Image.asset(wave_icon),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
