import 'package:flutter/material.dart';

import '../utils/common_style.dart';

class TabletScreen extends StatelessWidget {
  const TabletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          // titleSpacing: 50,
          backgroundColor: Colors.white,
          title: Image.asset(
            "images/logo.jpg",
            fit: BoxFit.fitWidth,
            height: 500,
            width: width(context) / 2,
          ),
          toolbarHeight: 80,
        ));
  }
}
