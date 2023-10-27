import 'package:flutter/material.dart';

class tipsWidget extends StatelessWidget {
  tipsWidget({
    super.key,
    required this.subject,
    required this.title,
    required this.Imagepath,
  });

  final String subject;
  final String title;
  final String Imagepath;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var mediaQuery = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 20),
      child: Container(
        child: Row(
          textDirection: TextDirection.rtl,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Container(
                width: mediaQuery.width * 0.5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 12),
                    Text(
                      subject,
                      style: theme.textTheme.bodyLarge?.copyWith(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
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
                        ElevatedButton(
                            onPressed: () {},
                            child: Text('View details'),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFF7F56D9))),
                        SizedBox(width: 5),
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
