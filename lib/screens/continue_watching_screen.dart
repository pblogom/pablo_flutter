import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import '../components/certificates_viewer.dart';
import '../components/lists/continue_watching_list.dart';
import '../constants.dart';

class ContinueWatchingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SlidingUpPanel(
      backdropEnabled: true,
      borderRadius: BorderRadius.only(topLeft: Radius.circular(24.0),topRight: Radius.circular(24.0)),
      boxShadow: [
        BoxShadow(
            color: kShadowColor, offset: Offset(0,-12), blurRadius: 32.0),
      ],
      minHeight: 85.0,
      maxHeight: MediaQuery.of(context).size.height * 0.60,
      panel: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Padding(
              padding: EdgeInsets.only(top:8.0, bottom: 16.0),
              child: Container(
                width: 56.0,
                height: 4.0,
                decoration: BoxDecoration(
                  color: Color(0xFFC5CBD6),
                  borderRadius: BorderRadius.circular(4.0),
                ),
              ),
            )
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Text('Continue watching',style: kTitle1Style,),
          ),
            ContinueWatchingList(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Text('Certificates',style: kTitle1Style,),
          ),
          SizedBox(height: 8.0,),
          Expanded(
            child: CertificateViewer(),
          ),
        ],
      ),
    );
  }
}









