import 'package:flutter/material.dart';

import '../widgets/bottom_nav_bar.dart';

class OptionScreen extends StatelessWidget{
  static const routeName = "/stopwatch-screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        "Option Screen",
        style: Theme.of(context).textTheme.headline1,
      )),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
