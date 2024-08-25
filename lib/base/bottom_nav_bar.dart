import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/screens/home_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

  final appScreens = [
    const HomeScreen(),
    const Text('Search'),
    const Text('Tickets'),
    const Text('Profile'),
  ];

  var _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    // print("Tapped index is $_selectedIndex");  
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(child: appScreens[_selectedIndex]),

      bottomNavigationBar:BottomNavigationBar(
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: const Color.fromARGB(255, 19, 22, 3),
        showSelectedLabels: false,
        
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,

        items: const [
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
          activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
          label: 'Home'),

          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
          activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
          label: 'Search'),

          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
          activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
          label: 'Tickets'),

          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
          activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
          label: 'Profile'),
        ],
      ),

    );
  }
} 