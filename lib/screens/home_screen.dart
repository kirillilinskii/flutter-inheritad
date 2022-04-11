import 'package:flutter/material.dart';

import '../widgets/bottom_nav_bar.dart';

class HomeScreen extends StatefulWidget {

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _screenIndex = 0;

  void setIndex(int index) {
    setState(() {
      _screenIndex = index;
    });
    
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> screens = [
    Center(
      child: Text("First Screen", style: Theme.of(context).textTheme.headline1),
    ),
    Center(
      child: Text("Second Screen", style: Theme.of(context).textTheme.headline1,),
    ),
    Center(
      child: Text("Third Screen", style: Theme.of(context).textTheme.headline1,),
    ),
  ];

    return Scaffold(
      body: Center(
        child: screens[_screenIndex],
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }

  BottomNavigationBarItem _BuildNavBarItem(Icon icon, String title) =>
      BottomNavigationBarItem(icon: icon, label: title);
}

