import 'package:flutter/material.dart';
import 'package:responsiveui/tablet_layout.dart';
import 'package:responsiveui/desctop_layout.dart';
import 'package:responsiveui/mobile_layout_screen.dart';
import 'package:responsiveui/Responsive/responsive_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: ResponsiveLayout(
        mobileLayout: MobileLayout(),
        desctopLayout: DesctopLayout(),
        tabletLayout: TabletLayout(),
      ),
    );
  }
}
