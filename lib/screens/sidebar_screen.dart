import 'package:flutter/material.dart';
import '../components/sidebar_row.dart';
import '../constants.dart';
import '../model/sidebar.dart';

class SidebarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: kSidebarBackgroundColor,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(24.0),
          )),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width * 0.80,
      padding: EdgeInsets.symmetric(
        vertical: 24.0,
        horizontal: 20.0,
      ),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('asset/images/profile.jpg'),
                radius: 24.0,
              ),
              SizedBox(
                width: 16.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Pablo Gomez',
                    style: kHeadlineLabelStyle,
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    'Last session 20:30hs',
                    style: kSearchPlaceholderStyle,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.08,
          ),
          SidebarRow(
            item: sidebarItem[0],
          ),
          SizedBox(
            height: 32.0,
          ),
          SidebarRow(
            item: sidebarItem[1],
          ),
          SizedBox(
            height: 32.0,
          ),
          SidebarRow(
            item: sidebarItem[2],
          ),
          SizedBox(
            height: 32.0,
          ),
          SidebarRow(
            item: sidebarItem[3],
          ),
          SizedBox(
            height: 32.0,
          ),
          Spacer(),
          Row(
            children: [
              Image.asset(
                'asset/icons/icon-logout.png',
                width: 16.0,
              ),
              SizedBox(
                width: 16.0,
              ),
              Text(
                'Go away',
                style: kSecondaryCalloutLabelStyle,
              )
            ],
          )
        ],
      ),
    );
  }
}
