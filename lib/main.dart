import 'package:flutter/material.dart';
import 'package:messenger_ui/view/bottom_nav/bottom_nav..dart';

void main() {
  runApp(MessengerApp());
}

class MessengerApp extends StatelessWidget {
  const MessengerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNav(),
    );
  }
}
