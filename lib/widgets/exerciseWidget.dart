import 'package:flutter/material.dart';

class excerciseWidget extends StatelessWidget {
  excerciseWidget({super.key, required this.title, required this.Imagepath});

  final String title;
  final String Imagepath;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        margin: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(Imagepath),
            SizedBox(width: 10),
            Text(
              title,
              style: theme.textTheme.bodySmall
                  ?.copyWith(fontSize: 14, fontWeight: FontWeight.w600),
            )
          ],
        ),
      ),
    );
  }
}
