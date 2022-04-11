import 'package:flutter/material.dart';

import 'nav_bar_state.dart';

class NavBarInheritadWidget extends InheritedWidget {
  NavBarStateState data;
  
  NavBarInheritadWidget({Key? key, 
    required this.data,
    Widget? child,
  }): super(child: child!);
  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;
}
