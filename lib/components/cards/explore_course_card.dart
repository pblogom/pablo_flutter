import 'package:flutter/material.dart';
import '../../constants.dart';
import '../../model/course.dart';

class ExploreCourseCard extends StatelessWidget {
  ExploreCourseCard({required this.course});

  final Course course;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 16.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(32.0),
        child: Container(
          height: 120.0,
          width: 280.0,
          decoration: BoxDecoration(gradient: course.background),
          child: Padding(
            padding: EdgeInsets.only(left:32.0),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(course.courseSubtitle, style: kCardSubtitleStyle,),
                      SizedBox(height: 4.0,),
                      Text(course.courseTitle, style: kCardTitleStyle,),
                    ],
                  ),),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset('asset/illustrations/${course.illustration}',
                        fit: BoxFit.cover, height: 100.0),
                  ],
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}