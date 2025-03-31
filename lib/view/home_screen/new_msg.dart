import 'package:flutter/material.dart';

class NewMessageScreen extends StatelessWidget {
  const NewMessageScreen({super.key});

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
                  prefixText: "To :  ",
                  prefixStyle: TextStyle(
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
          )
        ],
      ),
    );
  }
}
