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
        children: [],
      ),
    );
  }
}
