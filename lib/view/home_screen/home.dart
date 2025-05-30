import 'package:flutter/material.dart';
import 'package:messenger_ui/utils/color_constant/colorconstant.dart';
import 'package:messenger_ui/utils/image_constant/imageconstant.dart';
import 'package:messenger_ui/view/home_screen/new_msg.dart';
import 'package:messenger_ui/view/home_screen/user_settings/user_settings.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Map<String, String>> stories = [
    {'name': 'Add', 'image': '', 'isAdd': 'true'},
    {'name': 'Alex', 'image': boy1, 'isAdd': 'false'},
    {'name': 'Joshua', 'image': boy2, 'isAdd': 'false'},
    {'name': 'Karen', 'image': girl1, 'isAdd': 'false'},
    {'name': 'Ava', 'image': girls, 'isAdd': 'false'},
  ];
  final List<String> images = [
    profile,
    boy1,
    boy2,
    girl1,
    girls,
  ];
  final List<Map<String, String>> chats = [
    {'name': 'Martin', 'message': "What's man!", 'time': '9:40 AM'},
    {'name': 'Andrew', 'message': "Ok, thanks!", 'time': '9:25 AM'},
    {'name': 'Karen', 'message': "Ok, See you in To..", 'time': 'Fri'},
    {'name': 'Maisy', 'message': "Have a good day", 'time': 'Fri'},
    {'name': 'Joshua ', 'message': "The business plan...", 'time': 'Thu'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(5),
          child: InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => UserSettingsScreen()));
            },
            child: CircleAvatar(
              backgroundImage: AssetImage(
                profile,
              ),
              radius: 20,
              backgroundColor: black,
            ),
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
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => NewMessageScreen()));
                },
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
      body: SingleChildScrollView(
        child: Padding(
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
                    Text("Search",
                        style: TextStyle(color: Colors.grey, fontSize: 18)),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 150,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: stories.length,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Stack(children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: grey,
                            backgroundImage: stories[index]['isAdd'] == 'true'
                                ? null
                                : AssetImage(stories[index]['image']!),
                            child: stories[index]['isAdd'] == 'true'
                                ? Icon(Icons.add, size: 30, color: Colors.black)
                                : null,
                          ),
                          if (stories[index]['isAdd'] == 'false')
                            Positioned(
                              bottom: 5,
                              right: 5,
                              child: CircleAvatar(
                                radius: 6,
                                backgroundColor:
                                    const Color.fromARGB(255, 46, 224, 52),
                              ),
                            ),
                        ]),
                        SizedBox(height: 10),
                        Text(
                          stories[index]['name']!,
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: chats.length,
                shrinkWrap: true,
                itemBuilder: (context, index) => Container(
                  padding: EdgeInsets.all(
                    10,
                  ),
                  height: 80,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: grey,
                        backgroundImage: AssetImage(images[index]),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            chats[index]['name']!,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.w700),
                          ),
                          Text(
                            chats[index]['message']! +
                                " . " +
                                chats[index]['time']!,
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Icon(
                        Icons.check_circle_outline,
                        color: Colors.grey,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
