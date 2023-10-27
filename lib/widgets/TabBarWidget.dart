import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget {
  TabBarWidget({
    super.key,
    required this.subject,
    required this.title,
    required this.Imagepath,
    required this.time,
    required this.duration,
  });

  final String subject;
  final String title;
  final String duration;
  final String time;
  final String Imagepath;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var mediaQuery = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 20),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Container(
                width: mediaQuery.width * 0.5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        '$duration',
                        style:
                            theme.textTheme.bodySmall?.copyWith(fontSize: 14),
                      ),
                    ),
                    SizedBox(height: 12),
                    Text(
                      subject,
                      style: theme.textTheme.bodyLarge?.copyWith(
                          color: Colors.black, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(height: 12),
                    Text(
                      title,
                      style: theme.textTheme.bodySmall?.copyWith(fontSize: 14),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: [
                        Icon(Icons.access_time,
                            size: 16, color: Color(0xFF101828)),
                        SizedBox(width: 5),
                        Text('${time} mins',
                            style: theme.textTheme.bodySmall?.copyWith(
                                fontSize: 12, fontWeight: FontWeight.w600))
                      ],
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: Image.asset(
                  Imagepath,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
