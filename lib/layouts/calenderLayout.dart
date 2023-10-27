import 'package:flutter/material.dart';

import '../widgets/TabBarWidget.dart';
import '../widgets/exerciseWidget.dart';
import '../widgets/insightWidgets.dart';

class calenderLayout extends StatefulWidget {
  const calenderLayout({super.key});

  static String routeName = "calenderLayout";

  @override
  State<calenderLayout> createState() => _calenderLayoutState();
}

class _calenderLayoutState extends State<calenderLayout>
    with TickerProviderStateMixin {
  List<Widget> TabBArWidetList = [
    TabBarWidget(
      subject: 'morning exercise',
      title: 'Improve mental focus',
      Imagepath: 'assets/images/yoga1.png',
      time: '30',
      duration: '7 days',
    ),
    TabBarWidget(
      subject: 'Plank Exercise',
      title: 'Improve posture and stability',
      Imagepath: 'assets/images/plank.png',
      time: '30',
      duration: '3 days',
    ),
    TabBarWidget(
      subject: 'morning exercise',
      title: 'Improve mental focus',
      Imagepath: 'assets/images/yoga1.png',
      time: '30',
      duration: '7 days',
    ),
    TabBarWidget(
      subject: 'morning exercise',
      title: 'Improve mental focus',
      Imagepath: 'assets/images/yoga1.png',
      time: '30',
      duration: '7 days',
    ),
    TabBarWidget(
      subject: 'morning exercise',
      title: 'Improve mental focus',
      Imagepath: 'assets/images/yoga1.png',
      time: '30',
      duration: '7 days',
    ),
    TabBarWidget(
      subject: 'morning exercise',
      title: 'Improve mental focus',
      Imagepath: 'assets/images/yoga1.png',
      time: '30',
      duration: '7 days',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 4, vsync: this);
    var theme = Theme.of(context);
    var mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only(left: 32, right: 32, top: 15, bottom: 15),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/Ellipse 10.png'),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello, Rose',
                        style: theme.textTheme.bodySmall
                            ?.copyWith(fontSize: 14, height: 1.6),
                      ),
                      Text('Ready to workout?',
                          style:
                              theme.textTheme.bodyLarge?.copyWith(fontSize: 16))
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    insightsWidget(
                      title: 'Heart rate',
                      Imagepath: 'assets/images/heart.png',
                      details: '81',
                      percentage: 'BPM',
                    ),
                    insightsWidget(
                      title: 'To-do',
                      Imagepath: 'assets/images/list.png',
                      details: '32.5',
                      percentage: '%',
                    ),
                    insightsWidget(
                      title: 'calo',
                      Imagepath: 'assets/images/calo.png',
                      details: '1000',
                      percentage: 'cal',
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Workout Programs',
                style: theme.textTheme.bodyLarge?.copyWith(fontSize: 18),
              ),
              Container(
                  child: TabBar(
                controller: tabController,
                labelColor: Color(0xFF363F72),
                indicatorColor: Color(0xFF363F72),
                unselectedLabelColor: Colors.grey,
                tabs: [
                  Tab(text: 'All Type'),
                  Tab(text: 'Full Body'),
                  Tab(text: 'Upper'),
                  Tab(text: 'Lower')
                ],
              )),
              Expanded(
                child: Container(
                  child: TabBarView(
                    controller: tabController,
                    children: [
                      Tab(
                        child: Expanded(
                          child: ListView.builder(
                            itemBuilder: (context, index) =>
                                TabBArWidetList[index],
                            itemCount: TabBArWidetList.length,
                          ),
                        ),
                      ),
                      Tab(text: 'hi'),
                      Tab(
                        child: Expanded(
                          child: ListView.builder(
                            itemBuilder: (context, index) =>
                                TabBArWidetList[index],
                            itemCount: TabBArWidetList.length,
                          ),
                        ),
                      ),
                      Tab(text: 'hello')
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
