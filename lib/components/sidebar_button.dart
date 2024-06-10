import 'package:flutter/material.dart';
import '../constants.dart';

class SidebarButton extends StatelessWidget {
  SidebarButton({required this.triggerAnimation});

  final VoidCallback triggerAnimation; // Use VoidCallback for clarity

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: triggerAnimation,
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      constraints: BoxConstraints(
        maxHeight: 48.0,
        maxWidth: 48.0,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(24.0),
          boxShadow: [
            BoxShadow(
              color: kShadowColor,
              offset: Offset(0,12),
              blurRadius: 16.0,
            ),
          ],
        ),
        child: Image.asset(
          'asset/icons/icon-sidebar.png', color: kPrimaryLabelColor,),
        padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
      ),
    );
  }
}