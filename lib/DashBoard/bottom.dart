import 'package:flutter/material.dart';

import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import 'dashboard.dart';

class Bottom extends StatefulWidget {
  const Bottom({ Key? key,}) : super(key: key);
 
  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
 
  var _currentIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
  static const List<Widget> _widgetOptions = <Widget>[
    DashBoard(),
    Text(
      'Index 1: Rewards',
    
    ),
    Text(
      'Index : Profile',
    
    ),
   // Profile()
  ];
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      body: _widgetOptions.elementAt(_currentIndex),
      bottomNavigationBar:bottomNavi(),
    );
  }
  SalomonBottomBar bottomNavi() {
   
//_widgetOptions.elementAt(_selectedIndex),
    return SalomonBottomBar(
            
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
        items: [
          /// Home
          SalomonBottomBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
            selectedColor: Colors.purple,
          ),

          /// Likes
          // SalomonBottomBarItem(
          //   icon: Icon(Icons.favorite_border),
          //   title: Text("Likes"),
          //   selectedColor: Colors.pink,
          // ),

          /// Search
          SalomonBottomBarItem(
            icon: Icon(Icons.card_giftcard),
            title: Text("Rewards"),
            selectedColor: Colors.orange,
          ),

          /// Profile
          SalomonBottomBarItem(
            icon: Icon(Icons.person),
            title: Text("Profile"),
            selectedColor: Colors.teal,
          ),
        ],
      );
  }
  
}
