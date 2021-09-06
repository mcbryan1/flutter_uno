import 'package:flutter/material.dart';
import 'package:practice/widget/appbar_two.dart';

class BackgroundTwo extends StatelessWidget {
  final String title;
  final Widget child;
  const BackgroundTwo({
    Key? key,
    required this.title,
    required this.child,
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
        appBar: AppbarTwo(
          title: title,
        ),
        backgroundColor: Colors.transparent,
        body: Center(
          child: Container(
            height: MediaQuery.of(context).size.height * .25,
            width: MediaQuery.of(context).size.width * .75,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}


// Column(
//             mainAxisAlignment: MainAxisAlignment.end,
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: [
//               Container(
//                 height: MediaQuery.of(context).size.height * .79,
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(30),
//                     topRight: Radius.circular(30),
//                   ),
//                 ),
//                 child: child,
//               ),
//             ]),