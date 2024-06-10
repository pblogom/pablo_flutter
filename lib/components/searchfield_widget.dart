import 'package:flutter/material.dart';
import '../constants.dart';


class SearchFieldWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 8.0, right: 24.0),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(24.0),
              boxShadow: [
                BoxShadow(
                  color: kShadowColor,
                  offset: Offset(0,12),
                  blurRadius: 16.0,
                )
              ]),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: TextField(
              cursorColor: kPrimaryLabelColor,
              decoration: InputDecoration(
                icon: Icon(Icons.search, color: kPrimaryLabelColor,size: 24.0,),
                border: InputBorder.none,
                hintText: "Search for Pablo",
                hintStyle: kSearchPlaceholderStyle,
              ),
              style: kSearchPlaceholderStyle,
              onChanged: (newText){
                print(newText);
              },
            ),
          ),
        ),
      ),);
  }
}