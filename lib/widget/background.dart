import 'package:flutter/material.dart';
import 'package:practice/widget/custom_appbar.dart';

class Background extends StatelessWidget {
  final Widget child;
  final String title;
  const Background({
    Key? key,
    required this.child,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/background.jpeg'),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.blue.withOpacity(1),
            BlendMode.overlay,
          ),
        ),
      ),
      child: Scaffold(
        appBar: CustomAppbar(
          title: title,
        ),
        backgroundColor: Colors.transparent,
        body: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * .79,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: child,
              ),
            ]),
      ),
    );
  }
}
