import 'package:flutter/material.dart';

class BottomBarItem {
  final String key;
  final IconData icon;
  final Function onPressed;

  BottomBarItem(
      {required this.onPressed, required this.icon, required this.key});
}
