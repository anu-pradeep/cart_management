import 'package:flutter/material.dart';

import 'cart screen.dart';
import 'inventry screen.dart';

class BottomNavigation extends StatefulWidget {
  static const List<Widget> _widgetOptions = <Widget>[
    InventryScreen(),
    CartPage()
  ];


  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: BottomNavigation._widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.red[800],
        unselectedItemColor: Colors.blue,

        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_suggest),
            label: 'Inventry',

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),

        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }

}