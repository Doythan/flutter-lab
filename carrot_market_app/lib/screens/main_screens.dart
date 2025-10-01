import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreens extends StatefulWidget {
  @override
  State<MainScreens> createState() => _MainScreensState();
}

class _MainScreensState extends State<MainScreens> {
  // 1.
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    // 2.
    return Scaffold(
      // 3.
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          // index 0
          Container(
            color: Colors.orange[100],
            child: Center(
              child: Text(
                'IndexedStack 1',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
          ),
          // index 1
          Container(
            color: Colors.redAccent[100],
            child: Center(
              child: Text(
                'IndexedStack 2',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
          ),
        ],
      ),
      // 4.
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            label: '홈',
            icon: Icon(
              CupertinoIcons.home,
            ),
          ),
          BottomNavigationBarItem(
            label: '채팅',
            icon: Icon(
              CupertinoIcons.chat_bubble,
            ),
          ),
        ],
        // 5.
        onTap: (index) {
          setState(
            () {
              _selectedIndex = index;
            },
          );
        },
        // 6.
        currentIndex: _selectedIndex,
      ),
    );
  }
}
