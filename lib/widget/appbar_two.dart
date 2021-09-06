import 'package:flutter/material.dart';

class AppbarTwo extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const AppbarTwo({
    Key? key,
    required this.title,
  }) : super(key: key);
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.transparent,
    );
  }
}
