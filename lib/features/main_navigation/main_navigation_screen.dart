import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tiktok_clone/constants/sizes.dart';
import 'package:tiktok_clone/features/main_navigation/widgets/nav_tab.dart';

class MainNavigationScreen extends StatefulWidget {
  const MainNavigationScreen({super.key});

  @override
  State<MainNavigationScreen> createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen> {
  int _selectedIndex = 0;

  final screens = [
    const Center(
      child: Text(
        'Home',
        style: TextStyle(fontSize: 49),
      ),
    ),
    const Center(
      child: Text(
        'Search',
        style: TextStyle(fontSize: 49),
      ),
    ),
  ];

  void _onTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(
            Sizes.size12,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              NavTab(
                text: "Home",
                isSelceted: _selectedIndex == 0,
                icon: FontAwesomeIcons.house,
              ),
              NavTab(
                text: "Discover",
                isSelceted: _selectedIndex == 1,
                icon: FontAwesomeIcons.magnifyingGlass,
              ),
              NavTab(
                text: "Inbox",
                isSelceted: _selectedIndex == 2,
                icon: FontAwesomeIcons.message,
              ),
              NavTab(
                text: "Profile",
                isSelceted: _selectedIndex == 3,
                icon: FontAwesomeIcons.user,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
