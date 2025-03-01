import 'package:flutter/material.dart';
import 'package:messenger_ui/view/home_screen/home.dart';

void main() {
  runApp(MessengerApp());
}

class MessengerApp extends StatelessWidget {
  const MessengerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
