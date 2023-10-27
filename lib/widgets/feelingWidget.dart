import 'package:flutter/material.dart';

class feelingWidget extends StatelessWidget {
  feelingWidget({super.key, required this.title, required this.Imagepath});

  final String title;
  final String Imagepath;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Column(
      children: [
        Image.asset(
          Imagepath,
          width: 60,
          height: 60,
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          title,
          style: theme.textTheme.bodySmall?.copyWith(fontSize: 14),
        )
      ],
    );
  }
}
