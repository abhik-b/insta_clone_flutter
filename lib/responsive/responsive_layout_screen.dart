import 'package:flutter/material.dart';
import 'package:insta_flutter/utils/dimensions.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileLayout;
  final Widget desktopLayout;
  const ResponsiveLayout(
      {Key? key, required this.mobileLayout, required this.desktopLayout})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > webScreenSize) {
          return desktopLayout;
        }
        return mobileLayout;
      },
    );
  }
}
