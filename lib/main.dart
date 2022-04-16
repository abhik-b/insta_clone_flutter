import 'package:flutter/material.dart';
import 'package:insta_flutter/responsive/desktop_layout.dart';
import 'package:insta_flutter/responsive/mobile_layout.dart';
import 'package:insta_flutter/responsive/responsive_layout_screen.dart';
import 'package:insta_flutter/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'InstaClone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark()
          .copyWith(scaffoldBackgroundColor: mobileBackgroundColor),
      home: const ResponsiveLayout(
        desktopLayout: DesktopLayout(),
        mobileLayout: MobileLayout(),
      ),
    );
  }
}
