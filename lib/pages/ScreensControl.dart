import 'package:bazar/pages/Categories.dart';
import 'package:bazar/pages/Profil.dart';
import 'package:bazar/pages/SearchPage.dart';
import 'package:bazar/pages/Panier.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ScreensControl(),
    );
  }
}

class ScreensControl extends StatefulWidget {
  @override
  _ScreensControlState createState() => _ScreensControlState();
}

class _ScreensControlState extends State<ScreensControl> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    Categories(),
    SearchPage(),
    Panier(),
    Profil(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.pages),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Panier',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green,
        onTap: _onItemTapped,
      ),
    );
  }
}



// Container(
                      //   child: BottomNavigationBar(
                      //     type: BottomNavigationBarType.fixed,
                      //     fixedColor: Colors.green,
                      //     onTap: (index) {
                      //       setState(() {
                      //         myIndex = index;
                      //       });
                      //     },
                      //     currentIndex: myIndex,
                      //     items: const [
                      //       BottomNavigationBarItem(
                      //         icon: Icon(Icons.search),
                      //         label: 'Search',
                      //       ),
                      //       BottomNavigationBarItem(
                      //         icon: Icon(Icons.pages),
                      //         label: 'Categories',
                      //       ),
                      //       BottomNavigationBarItem(
                      //         icon: Icon(Icons.book),
                      //         label: 'Panier',
                      //       ),
                      //       BottomNavigationBarItem(
                      //         icon: Icon(Icons.person),
                      //         label: 'Profil',
                      //       ),
                      //     ],
                      //   ),
                      // ),