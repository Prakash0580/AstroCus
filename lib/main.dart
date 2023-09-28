import 'package:astroweb_cus/mobile/mobile.dart';
import 'package:astroweb_cus/teblet/teblet.dart';
import 'package:flutter/material.dart';
import 'desktop/desktop.dart';
import 'responsive/responsive.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "AstroKapish",
      debugShowCheckedModeBanner: false,
      home: ResponsiveLayout(
        mobileScaffold: const MobileScreen(),
        tabletScaffold: const TabletScreen(),
        desktopScaffold: const DesktopScreen(),
      ),
    );
  }
}
