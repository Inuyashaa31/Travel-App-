import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/Screens/best_places.dart';
import 'package:travel_app/Screens/home_screen.dart';
import 'package:travel_app/Screens/loginpage.dart';
import '../Screens/searchpage.dart';

class HomeBottomBar extends StatefulWidget {
  @override
  _HomeBottomBarState createState() => _HomeBottomBarState();
}

class _HomeBottomBarState extends State<HomeBottomBar> {
  int _currentIndex = 2; // Initially set to index 2 (Home icon)

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      backgroundColor: Colors.transparent,
      index: _currentIndex, // Set the initial index
      items: [
        Icon(Icons.person_outline, size: 30),
        Icon(Icons.search, size: 30),
        Icon(Icons.home, size: 30),
        Icon(Icons.location_on, size: 30),
        Icon(Icons.settings, size: 30),
      ],
      onTap: (index) {
        setState(() {
          _currentIndex = index; // Update the current index on tap
        });
        if (index == 0) { // Check if the first icon (index 0) is tapped
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LoginPage()),
          );
        }
        if (index == 1) { // Check if the first icon (index 0) is tapped
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => searchpage()),
          );
        }
        if (index == 2) { // Check if the first icon (index 0) is tapped
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomePage()),
          );
        }
        if (index == 3) { // Check if the first icon (index 0) is tapped
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomePage()),
          );
        }
        if (index == 4) { // Check if the first icon (index 0) is tapped
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomePage()),
          );
        }
      },
    );
  }
}

