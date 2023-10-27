import 'package:assignment_app/widgets/tipsWidget.dart';
import 'package:flutter/material.dart';

class insightsLayout extends StatefulWidget {
  insightsLayout({super.key});

  static String routeName = "insightsLayout";

  @override
  State<insightsLayout> createState() => _insightsLayoutState();
}

class _insightsLayoutState extends State<insightsLayout> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    List<Widget> topics = [
      Image.asset('assets/images/HotTopic1.png'),
      Image.asset('assets/images/HotTopic2.png')
    ];
    var theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(left: 32, right: 32, top: 15, bottom: 15),
      child: Container(
        child: Column(
          children: [
            TextFormField(
              textAlign: TextAlign.start,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black)),
                contentPadding:
                    EdgeInsets.only(top: 10, left: 14, bottom: 10, right: 14),
                hintStyle: TextStyle(
                  wordSpacing: 3,
                  fontSize: 16,
                ),
                constraints: BoxConstraints(maxHeight: 44),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFD0D5DD), width: 1),
                    borderRadius: BorderRadius.circular(8)),
                prefixIcon: Icon(Icons.search),
                prefixIconColor: Color(0xFF667085),
                hintText: 'Articles, Video, Audio and More,...',
              ),
            ),
            SizedBox(height: 15),
            Container(
                width: double.infinity,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Expanded(
                    child: Row(
                      children: [
                        FilterChip(
                            label: Text('Discover'),
                            selected: isSelected,
                            onSelected: (bool s2) => {
                                  s2 = true,
                                  isSelected = s2,
                                  setState(() {}),
                                }),
                        FilterChip(
                            label: Text('News'),
                            selected: isSelected,
                            onSelected: (bool s3) =>
                                {s3 = true, isSelected = s3, setState(() {})}),
                        FilterChip(
                            label: Text('must Viewed'),
                            selected: isSelected,
                            onSelected: (bool s1) =>
                                {s1 = true, isSelected = s1, setState(() {})}),
                        FilterChip(
                            label: Text('Saved'),
                            selected: isSelected,
                            onSelected: (bool s1) =>
                                {s1 = true, isSelected = s1, setState(() {})})
                      ],
                    ),
                  ),
                )),
            SizedBox(height: 15),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text(
                'Hot Topics',
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
            Expanded(
              child: ListView.builder(
                  itemCount: topics.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => topics[index]),
            ),
            Expanded(
                child: Container(
                    height: MediaQuery.of(context).size.height,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: Text(
                            'Get Tips',
                            textAlign: TextAlign.start,
                            style: theme.textTheme.bodyLarge
                                ?.copyWith(fontSize: 18),
                          ),
                        ),
                        Container(
                          child: Expanded(
                            child: tipsWidget(
                              subject: 'Connect with doctors & get suggestions',
                              title: 'Connect now and get expert insights ',
                              Imagepath:
                                  'assets/images/Doctor-PNG-Images 1.png',
                            ),
                          ),
                        ),
                        Container(
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Hot Topics',
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
                        ),
                      ],
                    ))),
          ],
        ),
      ),
    );
  }
}
