import 'package:amdb/screens/category.dart';
import 'package:amdb/screens/home_screen.dart';
import 'package:amdb/screens/profile.dart';
import 'package:flutter/material.dart';

class AppFrame extends StatefulWidget {
  const AppFrame({Key? key}) : super(key: key);

  @override
  State<AppFrame> createState() => _AppFrameState();
}

class _AppFrameState extends State<AppFrame> {
  int _index = 0;
  static List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    Category(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_index),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        onTap: _onItemTapped,
        elevation: 12,
        backgroundColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
              label: "Ana Ekran", icon: Icon(Icons.account_balance_sharp)),
          BottomNavigationBarItem(
            label: "Kategori",
            icon: Icon(Icons.apps),
          ),
          BottomNavigationBarItem(
            label: "Profil",
            icon: Icon(Icons.account_circle_sharp),
          ),
        ],
      ),
    );
  }
}
