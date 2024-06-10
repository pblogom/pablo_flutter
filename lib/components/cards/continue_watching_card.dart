import 'package:flutter/material.dart';
import '../../constants.dart';
import '../../model/course.dart';

class ContinueWatchingCard extends StatelessWidget {

  ContinueWatchingCard({required this.course});
  final Course course;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Stack(
        alignment: Alignment.topRight,
        children:
        [Padding(
          padding: EdgeInsets.only(
            top: 24.0, right:24.0,
          ),
          child: Container(
            decoration: BoxDecoration(
              gradient: course.background,
              borderRadius: BorderRadius.circular(24.0),
              boxShadow: [
                BoxShadow(color: course.background.colors[0].withOpacity(0.2),
                    offset: Offset(0,8),
                    blurRadius: 16.0),
                BoxShadow(color: course.background.colors[1].withOpacity(0.2),
                    offset: Offset(0,8),
                    blurRadius: 16.0),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(40.0),
              child: Container(
                height: 140.0,
                width:240.0,
                child: Stack(
                  children: [
                    Row(
                      children: [
                        Spacer(),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Image.asset('asset/illustrations/${course.illustration}',
                              fit: BoxFit.cover,
                              height: 110,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 24.0,
                        left: 24.0,
                        right: 24.0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            course.courseSubtitle,
                            style: kCardSubtitleStyle,
                          ),
                          SizedBox(height: 8.0,),
                          Text(
                            course.courseTitle,
                            style: kCardTitleStyle,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        ],
      ),
    );
  }
}
