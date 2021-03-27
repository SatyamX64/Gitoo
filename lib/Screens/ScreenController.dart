import 'package:flutter/material.dart';
import 'package:gitoo/Widgets/BottomBarButton.dart';
import 'package:gitoo/Screens/About.dart';
import 'package:gitoo/Screens/DashBoard.dart';
import 'package:gitoo/Screens/SearchScreen.dart';

class ScreenController extends StatefulWidget {
  @override
  _ScreenControllerState createState() => _ScreenControllerState();
}

class _ScreenControllerState extends State<ScreenController> with SingleTickerProviderStateMixin {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    List<Widget> _screens = [DashBoard(), SearchScreen(), About()];
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
                _selectedIndex = index;
              });
            },
            backgroundColor: Theme.of(context).primaryColor,
            items: [
              BottomNavigationBarItem(
                icon: BottomBarButton(
                  icon: Icons.home,
                  isPressed: _selectedIndex == 0 ? true : false,
                ),
                
                label: '',
              ),
              BottomNavigationBarItem(
                icon: BottomBarButton(
                  icon: Icons.graphic_eq,
                  isPressed: _selectedIndex == 1 ? true : false,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: BottomBarButton(
                  icon: Icons.info,
                  isPressed: _selectedIndex == 2 ? true : false,
                ),
                label: '',
              ),
            ],
          ),
          body: _screens[_selectedIndex],
        ),
      ),
    );
  }
}
