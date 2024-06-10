import 'package:flutter/material.dart';
import '../../model/course.dart';
import '../cards/continue_watching_card.dart';

class ContinueWatchingList extends StatefulWidget {
  @override
  State<ContinueWatchingList> createState() => _ContinueWatchingListState();
}

class _ContinueWatchingListState extends State<ContinueWatchingList> {
  List<Container> indicators = [];
  int currentPage = 0;
  Widget updateIndicators(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: continueWatchingCourses.map( (course) {
        var index = continueWatchingCourses.indexOf(course);
        return Container(
          width: 8.0,
          height: 8.0,
          margin: EdgeInsets.symmetric(horizontal: 8.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: currentPage == index ? Color(0xFF0971FE) : Color(0xFFA6AEBD),
          ),
        );
      }).toList(),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 220.0,
          width: double.infinity,
          child: PageView.builder(
            itemBuilder: (context, index){
              return Opacity(
                  opacity: currentPage == index ? 1.0 : 0.6,
                  child: ContinueWatchingCard(course: continueWatchingCourses[index],));
            },
            itemCount: continueWatchingCourses.length,
            onPageChanged: (index){
              setState(() {
                currentPage = index;
              });
            },
            controller: PageController(initialPage:0, viewportFraction:0.6),
          ),
        ),
        updateIndicators(),
      ],
    );
  }
}