import 'package:flutter/material.dart';

class TabBarItem extends StatelessWidget {
  final icon, color;
  const TabBarItem({this.icon, this.color}) : super();

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Icon(
        icon,
        color: color,
        size: 30,
      ),
    );
  }
}
