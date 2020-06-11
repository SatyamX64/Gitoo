import 'package:flutter/material.dart';
import 'package:gitoo/Common_Resources/NavBarButton.dart';
import 'package:gitoo/Screens/About.dart';
import 'package:gitoo/Screens/DashBoard.dart';
import 'package:gitoo/Screens/SearchScreen.dart';
import '../Common_Resources/Constants.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> with SingleTickerProviderStateMixin {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    List<Widget> screens = [DashBoard(), SearchScreen(), About()];
    return WillPopScope(
      onWillPop: () async => false,
      child: SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          bottomNavigationBar: BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            onTap: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
            backgroundColor: kPrimary,
            items: [
              BottomNavigationBarItem(
                icon: NavBarButton(
                  icon: Icons.home,
                  isPressed: selectedIndex == 0 ? true : false,
                ),
                title: Text(''),
              ),
              BottomNavigationBarItem(
                icon: NavBarButton(
                  icon: Icons.graphic_eq,
                  isPressed: selectedIndex == 1 ? true : false,
                ),
                title: Text(''),
              ),
              BottomNavigationBarItem(
                icon: NavBarButton(
                  icon: Icons.info,
                  isPressed: selectedIndex == 2 ? true : false,
                ),
                title: Text(''),
              ),
            ],
          ),
          body: screens[selectedIndex],
        ),
      ),
    );
  }
}
