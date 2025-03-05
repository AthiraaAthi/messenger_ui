import 'package:flutter/material.dart';
import 'package:messenger_ui/utils/color_constant/colorconstant.dart';
import 'package:messenger_ui/utils/image_constant/imageconstant.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Map<String, String>> stories = [
    {'name': 'Add', 'image': '', 'isAdd': 'true'},
    {'name': 'Joshua', 'image': boy1, 'isAdd': 'false'},
    {'name': 'Alex', 'image': boy2, 'isAdd': 'false'},
    {'name': 'Karen', 'image': girl1, 'isAdd': 'false'},
    {'name': 'Ava', 'image': girls, 'isAdd': 'false'},
  ];
  final List<Map<String, String>> chats = [
    {'name': 'Martin Randolph', 'message': "What's man!", 'time': '9:40 AM'},
    {'name': 'Andrew Parker', 'message': "Ok, thanks!", 'time': '9:25 AM'},
    {'name': 'Karen Castillo', 'message': "Ok, See you in To..", 'time': 'Fri'},
    {
      'name': 'Maisy Humphrey',
      'message': "Have a good day, Maisy!",
      'time': 'Fri'
    },
    {
      'name': 'Joshua Lawrence',
      'message': "The business plan loo..",
      'time': 'Thu'
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
          "Chats",
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
        ),
        actions: [
          CircleAvatar(
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
            SizedBox(
              height: 80,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: grey,
                        backgroundImage: stories[index]['isAdd'] == 'true'
                            ? null
                            : AssetImage(stories[index]['image']!),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
