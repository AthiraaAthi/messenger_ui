import 'package:flutter/material.dart';
import 'package:messenger_ui/utils/color_constant/colorconstant.dart';
import 'package:messenger_ui/utils/image_constant/imageconstant.dart';

class NewMessageScreen extends StatefulWidget {
  const NewMessageScreen({super.key});

  @override
  State<NewMessageScreen> createState() => _NewMessageScreenState();
}

class _NewMessageScreenState extends State<NewMessageScreen> {
  List<String> names = [
    "Ava Chen",
    "Ryle Kincaid",
    "James",
    "Stella Alonso",
    "Vivian Lau",
    "Atlas Corrigon",
  ];
  List<String> images = [
    people1,
    people2,
    people3,
    people4,
    people5,
    people6,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        centerTitle: true,
        title: Text("New Message",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            )),
        leading: Padding(
          padding: const EdgeInsets.only(
            top: 30,
            left: 5,
          ),
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Text("Cancel",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.grey[200],
            ),
            child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "To :  ",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                  )),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 20,
              child: Icon(
                Icons.group,
                size: 22,
              ),
            ),
            title: Text("Create a New Group",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                )),
            trailing: InkWell(
              child: Icon(
                Icons.keyboard_arrow_right,
                color: Colors.grey,
                size: 28,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Recents",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ListView.builder(
            itemCount: names.length,
            shrinkWrap: true,
            itemBuilder: (context, index) => Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage(images[index]),
                  ),
                  title: Text(
                    names[index],
                    style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w600,
                        color: black),
                  ),
                ),
                Divider()
              ],
            ),
          )
        ],
      ),
    );
  }
}
