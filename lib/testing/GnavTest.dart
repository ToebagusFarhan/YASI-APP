import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class CustomGNav extends StatefulWidget {
  final ValueChanged<int> onTabChanged;
  final int selectedIndex;
  const CustomGNav(
      {Key? key, required this.onTabChanged, required this.selectedIndex})
      : super(key: key);

  @override
  State<CustomGNav> createState() => _CustomGNavState();
}

class _CustomGNavState extends State<CustomGNav> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF5170FD),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
        child: GNav(
          gap: 8,
          padding: const EdgeInsets.all(16),
          backgroundColor: Color(0xFF5170FD),
          color: Colors.white,
          activeColor: Colors.black,
          tabBackgroundColor: Colors.grey.shade200,
          tabs: const [
            GButton(
              icon: Icons.home,
              text: 'Home',
            ),
            GButton(
              icon: Icons.add,
              text: 'Add Data',
            ),
            GButton(
              icon: Icons.search,
              text: 'Search',
            ),
            GButton(
              icon: Icons.person,
              text: 'Profile',
            ),
          ],
          selectedIndex: widget.selectedIndex,
          onTabChange: widget.onTabChanged,
        ),
      ),
    );
  }
}
