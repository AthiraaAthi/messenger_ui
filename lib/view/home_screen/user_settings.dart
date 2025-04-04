import 'package:flutter/material.dart';
import 'package:messenger_ui/utils/color_constant/colorconstant.dart';

class UserSettingsScreen extends StatelessWidget {
  const UserSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        leading: Icon(
          Icons.arrow_back_ios_new_rounded,
          color: white,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              "Done",
              style: TextStyle(fontSize: 18),
            ),
          )
        ],
      ),
      backgroundColor: white,
      body: Column(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.green.shade100),
            child: Container(
              height: 170,
            ),
          ),
        ],
      ),
    );
  }
}
