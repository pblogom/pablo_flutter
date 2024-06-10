import 'package:flutter/material.dart';
import '../constants.dart';
import 'searchfield_widget.dart';
import 'sidebar_button.dart';

class HomeScreenNavBar extends StatelessWidget {
  HomeScreenNavBar({required this.triggerAnimation});

  final VoidCallback triggerAnimation;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SidebarButton(triggerAnimation: triggerAnimation,),
          SearchFieldWidget(),
          Icon(Icons.notifications,
            color: kPrimaryLabelColor,
          ),
          SizedBox(width: 16.0,),
          CircleAvatar(radius: 16.0, backgroundImage: AssetImage('asset/images/profile.jpg'),),
        ],
      ),
    );
  }
}