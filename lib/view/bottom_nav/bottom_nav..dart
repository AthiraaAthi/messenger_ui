import 'package:flutter/material.dart';
import 'package:messenger_ui/utils/color_constant/colorconstant.dart';
import 'package:messenger_ui/view/discover_screen/discover_screen.dart';
import 'package:messenger_ui/view/groups_screen/groups_screen.dart';
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
    PeopleScreen(),
    DiscoverScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: black,
        unselectedItemColor: Colors.grey,
        backgroundColor: white,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat_bubble,
              size: 25,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.group,
              size: 25,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.explore,
              size: 25,
            ),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
