import 'package:assignment_app/layouts/HomeLayout.dart';
import 'package:assignment_app/layouts/calenderLayout.dart';
import 'package:assignment_app/layouts/insightsLayout.dart';
import 'package:flutter/material.dart';

import '../widgets/feelingWidget.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  static String routeName = "HomeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var selectedIndex = 0;

  List<Widget> selected = [Homelayout(), calenderLayout(), insightsLayout()];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: selectedIndex,
            onTap: (int index) {
              selectedIndex = index;
              setState(() {});
            },
            items: const [
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/home-05.png')),
                  label: 'home'),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/grid-01.png')),
                  label: 'insights'),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/calendar.png')),
                  label: 'today'),
            ]),
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
              child: Row(
                children: [
                  Image(image: AssetImage('assets/images/logo.png')),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Moody',
                    style: theme.textTheme.titleLarge,
                  ),
                ],
              ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15, top: 10),
              child: Badge(
                child: Icon(
                  Icons.notifications_none,
                  color: Colors.black,
                ),
              ),
            )
          ],
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        body: selected[selectedIndex]);
  }
}
