import 'package:assignment_app/layouts/calenderLayout.dart';
import 'package:assignment_app/layouts/insightsLayout.dart';
import 'package:flutter/material.dart';

import 'core/theme/MyThemeData.dart';
import 'layouts/HomeLayout.dart';
import 'layouts/HomeScreen.dart';

void main() {
  runApp(MyApplication());
}

class MyApplication extends StatelessWidget {
  MyApplication({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: MyThemeData.lightTheme,
        initialRoute: HomeScreen.routeName,
        routes: {
          HomeScreen.routeName: (context) => HomeScreen(),
          Homelayout.routeName: (context) => Homelayout(),
          calenderLayout.routeName: (context) => calenderLayout(),
          insightsLayout.routeName: (context) => insightsLayout()
        });
  }
}
