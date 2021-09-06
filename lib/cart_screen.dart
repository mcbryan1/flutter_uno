import 'package:flutter/material.dart';
import 'package:practice/widget/second_background.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackgroundTwo(title: 'Cart Screen', child: Text('data'));
  }
}
