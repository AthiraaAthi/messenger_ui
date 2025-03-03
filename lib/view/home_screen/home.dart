import 'package:flutter/material.dart';
import 'package:messenger_ui/utils/color_constant/colorconstant.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: white,
        title: Text(
          "Chats",
          style: TextStyle(),
        ),
      ),
    );
  }
}
