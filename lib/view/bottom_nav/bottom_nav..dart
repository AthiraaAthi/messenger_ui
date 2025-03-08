import 'package:flutter/material.dart';
import 'package:messenger_ui/view/home_screen/home.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;
  List<Widget> screens = [
    HomeScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
