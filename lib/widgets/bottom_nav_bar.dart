import 'package:flutter/material.dart';
import 'package:flutter_learn_state/screens/stopwatch_screen.dart';
import 'package:flutter_learn_state/screens/timer_screen.dart';

import '../screens/options_screen.dart';
import '../state/nav_bar_state.dart';

class BottomNavBar extends StatefulWidget {
  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int? index;
  @override
  void didChangeDependencies() {
    NavBarStateState data = NavBarState.of(context);
    super.didChangeDependencies();
    index = data.index;
  }

  @override
  Widget build(BuildContext context) {
    BottomNavigationBarItem _BuildNavBarItem(Icon icon, String title) =>
        BottomNavigationBarItem(icon: icon, label: title);
    return BottomNavigationBar(
        selectedItemColor: Colors.white,
        currentIndex: index!,
        elevation: 0,
        unselectedFontSize: 15,
        unselectedItemColor: Theme.of(context).accentColor,
        backgroundColor: Theme.of(context).backgroundColor,
        items: <BottomNavigationBarItem>[
          _BuildNavBarItem(Icon(Icons.timer), "Stop Watch"),
          _BuildNavBarItem(Icon(Icons.slow_motion_video), "Timer"),
          _BuildNavBarItem(Icon(Icons.settings), "Options"),
        ],
        onTap: (index) {
          NavBarState.of(context).setIndex(index);

          switch (index) {
            case 0:
              Navigator.of(context)
                  .pushReplacementNamed(StopWatchScreen.routeName);
              break;
            case 1:
              Navigator.of(context).pushReplacementNamed(TimerScreen.routeName);
              break;
            case 2:
              Navigator.of(context)
                  .pushReplacementNamed(OptionScreen.routeName);
              break;
            default:
              Navigator.of(context)
                  .pushReplacementNamed(StopWatchScreen.routeName);
              break;
          }
        });
  }
}
