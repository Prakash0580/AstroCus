//
import 'package:astroweb_cus/desktop/desktop.dart';
import 'package:astroweb_cus/mobile/mobile.dart';
import 'package:astroweb_cus/responsive/responsive.dart';
import 'package:astroweb_cus/teblet/teblet.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsiveLayout(
          mobileScaffold: MobileScreen(),
          tabletScaffold: TabletScreen(),
          desktopScaffold: DesktopScreen()),
    );
  }
}
