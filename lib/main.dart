import 'package:flutter/material.dart';
import 'package:flutter_learn_state/screens/options_screen.dart';
import 'package:flutter_learn_state/screens/stopwatch_screen.dart';
import 'package:flutter_learn_state/screens/timer_screen.dart';
import 'package:flutter_learn_state/state/nav_bar_state.dart';
import 'screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _screenIndex = 0;

  void setIndex(int index) {
    setState(() {
      _screenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return NavBarState(
      child: MaterialApp(
        theme: ThemeData(
          primaryColor: Colors.white,
          backgroundColor: Colors.black,
          scaffoldBackgroundColor: Colors.black,
          accentColor: Colors.white38,
          textTheme: TextTheme(
            headline1: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ),
        routes: {
          StopWatchScreen.routeName: (context) => StopWatchScreen(),
          TimerScreen.routeName: ((context) => TimerScreen()),
          OptionScreen.routeName: ((context) => OptionScreen()),
        },
        home: StopWatchScreen(),
      ),
    );
  }
}
