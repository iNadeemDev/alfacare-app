import 'package:alfacare/User/hospital_services/city.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'home_screen.dart';
import 'profile.dart';

class Bottom_Navbar extends StatefulWidget {
  const Bottom_Navbar({Key? key}) : super(key: key);

  @override
  _Bottom_NavbarState createState() => _Bottom_NavbarState();
}

class _Bottom_NavbarState extends State<Bottom_Navbar> {
  int _selectedIndex = 0;

  static const List _widgetOptions =[
    'HomeScreen()',
    'City()',
    'HomeScreen()',
    'Profile()',
  ];


  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => _widgetOptions[index]));
    });
  }
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.purple.shade900,
      unselectedItemColor: Colors.white,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: const Icon(Icons.home_outlined),
          label: 'Home',
          // backgroundColor: Colors.red
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.shopping_cart),
          label: 'Shop',
        ),
        BottomNavigationBarItem(
          icon: const Icon(FontAwesomeIcons.bell),
          label: 'Notifications',
        ),
        BottomNavigationBarItem(
          icon: const Icon(FontAwesomeIcons.user),
          label: 'Profile',
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.pink,
      onTap: _onItemTapped,
    );
  }
}
