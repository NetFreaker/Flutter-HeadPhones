import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping/HomeScreen/Home.dart';
import 'package:shopping/Model/Favorites.dart';
import 'package:shopping/Model/Profile.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  final List<Widget> _pages = [Favorite(), Home(), Profile()];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  int num = 0;

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(width: 1125, height: 2436, allowFontScaling: false);

    return Scaffold(
      backgroundColor: Colors.white,
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        backgroundColor: Colors.white,
        onTap: onTabTapped,
        // new
        currentIndex: _currentIndex,
        selectedItemColor: Colors.black,
        // new
        items: [
          new BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            title: Text(''),
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text(''),
          ),
          new BottomNavigationBarItem(icon: Icon(Icons.person), title: Text(''))
        ],
      ),
    );
  }
}
