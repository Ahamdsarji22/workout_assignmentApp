import 'package:flutter/material.dart';

import '../widgets/exerciseWidget.dart';
import '../widgets/feelingWidget.dart';

class Homelayout extends StatelessWidget {
  const Homelayout({super.key});

  static String routeName = "HomeLayout";

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var mediaQuery = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: 32, right: 32, top: 15, bottom: 15),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Hello, ',
                  style: theme.textTheme.bodyMedium,
                ),
                Text(
                  'Sara Rose',
                  style: theme.textTheme.bodyLarge,
                )
              ],
            ),
            SizedBox(height: 12),
            Text(
              'How are you feeling today ?',
              style: theme.textTheme.bodySmall,
            ),
            SizedBox(height: 12),
            Container(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  feelingWidget(
                    title: 'Love',
                    Imagepath: 'assets/images/love.png',
                  ),
                  feelingWidget(
                    title: 'cool',
                    Imagepath: 'assets/images/cool.png',
                  ),
                  feelingWidget(
                    title: 'happy',
                    Imagepath: 'assets/images/happy.png',
                  ),
                  feelingWidget(
                    title: 'sad',
                    Imagepath: 'assets/images/sad.png',
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 30, bottom: 10),
              child: Column(
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Feature',
                          style: theme.textTheme.bodyLarge,
                        ),
                        Text(
                          'See more >',
                          style: theme.textTheme.bodySmall?.copyWith(
                              color: Color(0xFF027A48),
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                        )
                      ]),
                  SizedBox(height: 10),
                  Container(
                    height: 168,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 25),
                          child: Container(
                            width: mediaQuery.width * 0.5,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                    textAlign: TextAlign.left,
                                    'Positive Vibes',
                                    style: theme.textTheme.bodySmall?.copyWith(
                                        color: Color(0xFF344054),
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                SizedBox(height: 12),
                                Text(
                                  'Boost your mode with positive Vibes',
                                  style: theme.textTheme.bodySmall
                                      ?.copyWith(height: 1.6),
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.play_circle,
                                        color: Color(0xFF32D583)),
                                    SizedBox(width: 5),
                                    Text('10 min',
                                        style: theme.textTheme.bodySmall
                                            ?.copyWith(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600))
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            child: Image.asset(
                              'assets/images/Walking the Dog1.png',
                              height: 90,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(top: 30, bottom: 10),
                child: Column(
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Exercise',
                            style: theme.textTheme.bodyLarge,
                          ),
                          Text(
                            'See more >',
                            style: theme.textTheme.bodySmall?.copyWith(
                                color: Color(0xFF027A48),
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          )
                        ]),
                    SizedBox(height: 20),
                    Container(
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          excerciseWidget(
                            title: 'Relaxation',
                            Imagepath: 'assets/images/Relaxation.png',
                          ),
                          excerciseWidget(
                            title: 'meditation',
                            Imagepath: 'assets/images/meditation.png',
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 35),
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          excerciseWidget(
                            title: 'breathing',
                            Imagepath: 'assets/images/breathing.png',
                          ),
                          excerciseWidget(
                            title: 'yoga',
                            Imagepath: 'assets/images/yoga.png',
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
