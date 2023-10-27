import 'package:flutter/material.dart';

class insightsWidget extends StatelessWidget {
  insightsWidget(
      {super.key,
      required this.title,
      required this.Imagepath,
      this.details,
      this.percentage});

  final String title;
  final String Imagepath;
  final String? details;
  final String? percentage;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(Imagepath),
                SizedBox(width: 5),
                Text(
                  title,
                  style: theme.textTheme.bodySmall
                      ?.copyWith(fontSize: 12, fontWeight: FontWeight.w600),
                )
              ],
            ),
            SizedBox(height: 5),
            Row(
              children: [
                Text(
                  details!,
                  style: theme.textTheme.bodyLarge?.copyWith(fontSize: 18),
                ),
                Text(percentage!,
                    style: theme.textTheme.bodyMedium
                        ?.copyWith(fontSize: 14, fontWeight: FontWeight.w500))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
