import 'package:flutter/material.dart';

class SidebarItem {
  SidebarItem({required this.title, required this.background, required this.icon});

  String title;
  Color background;
  Icon icon;
}

var sidebarItem = [
  SidebarItem(
    title: "Home",
    background: Colors.blueGrey,
    icon: Icon(
      Icons.home,
      color: Colors.white,
    ),
  ),
  SidebarItem(
    title: "Courses",
  background: Colors.deepOrangeAccent,
    icon: Icon(
      Icons.library_books,
      color: Colors.white,
    ),
  ),
  SidebarItem(
    title: "Billing",
    background: Colors.deepPurpleAccent,
    icon: Icon(
      Icons.credit_card,
      color: Colors.white,
    ),
  ),
  SidebarItem(
    title: "Settings",
    background: Colors.deepPurple,
    icon: Icon(
      Icons.settings,
      color: Colors.white,
    ),
  ),
];