import 'package:flutter/material.dart';

class NewMessageScreen extends StatelessWidget {
  const NewMessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("New Message",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            )),
        leading: Text("Cancel"),
      ),
    );
  }
}
