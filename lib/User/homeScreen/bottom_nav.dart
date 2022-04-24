import 'package:alfacare/User/homeScreen/profile.dart';
import 'package:flutter/material.dart';
import 'fourth_class.dart';
import '../doctors/doctor.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

import 'home_screen.dart';

class NavBar extends StatelessWidget {
  NavBar({Key? key}) : super(key: key);
  final _controller = PersistentTabController(initialIndex: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PersistentTabView(
        context,
        controller: _controller,
        screens: _buildScreens(),
        items: _navBarsItems(),
        confineInSafeArea: true,
        popAllScreensOnTapOfSelectedTab: true,
        stateManagement: true,
        resizeToAvoidBottomInset: true,
        hideNavigationBarWhenKeyboardShows: true,
        popActionScreens: PopActionScreensType.all,
        itemAnimationProperties: const ItemAnimationProperties(
          duration: Duration(milliseconds: 200),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: const ScreenTransitionAnimation(
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 200),
        ),
        navBarStyle: NavBarStyle.style9,
      ),
    );
  }

  List<Widget> _buildScreens() {
    return [
      const HomeScreen(),
      // const ThirdClass(),
      const FourthClass(),
      const Profile(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.home_outlined),
        // title: ("Home"),
        activeColorPrimary: Colors.pinkAccent,
        inactiveColorPrimary: Colors.purple.shade900,
      ),
      // PersistentBottomNavBarItem(
      //   icon: const Icon(Icons.shopping_cart),
      //   activeColorPrimary: Colors.pinkAccent,
      //   inactiveColorPrimary: Colors.purple.shade900,
      // ),
      PersistentBottomNavBarItem(
        icon: const Icon(FontAwesomeIcons.bell),
        activeColorPrimary: Colors.pinkAccent,
        inactiveColorPrimary: Colors.purple.shade900,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(FontAwesomeIcons.user),
        activeColorPrimary: Colors.pinkAccent,
        inactiveColorPrimary: Colors.purple.shade900,
      ),
    ];
  }
}
