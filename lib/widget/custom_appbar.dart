import 'package:flutter/material.dart';
import 'package:practice/cart_screen.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const CustomAppbar({Key? key, required this.title}) : super(key: key);

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
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CartScreen()));
            },
          ),
        ]);
  }
}
