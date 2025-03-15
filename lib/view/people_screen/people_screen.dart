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
  final List<Map<String, String>> namesAndImageList = [
    {
      'name': 'Ava Chen',
      'image': people1,
    },
    {
      'name': 'Bridget von Ascheberg',
      'image': girl1,
    },
    {
      'name': 'Jules Ambrose',
      'image': girls,
    },
    {
      'name': 'Stella Alonso',
      'image': people4,
    },
    {
      'name': 'Vivian Lau',
      'image': people5,
    },
    {
      'name': 'Isabella Valencia',
      'image': people6,
    },
  ];
  final List<Map<String, String>> recentActive = [
    {
      "name": "Alex",
      "image": boy1,
    },
    {
      "name": "Dominic Davenport",
      "image": people2,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
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
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: namesAndImageList.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: Stack(alignment: Alignment.bottomRight, children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage:
                          AssetImage(namesAndImageList[index]['image']!),
                    ),
                    Positioned(
                      bottom: 5,
                      right: 5,
                      child: CircleAvatar(
                        radius: 7,
                        backgroundColor: const Color.fromARGB(255, 46, 224, 52),
                      ),
                    ),
                  ]),
                  title: Text(
                    namesAndImageList[index]['name']!,
                    style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w600,
                        color: black),
                  ),
                  trailing: CircleAvatar(
                    radius: 20,
                    backgroundColor: grey,
                    child: Image.asset(wave_icon),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text("Recent Active", style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
