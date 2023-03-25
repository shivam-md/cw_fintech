import 'package:flutter/material.dart';

class Responsive extends StatefulWidget {
  const Responsive({Key? key, required this.mobileScreen, required this.desktopScreen}) : super(key: key);

  final Widget mobileScreen;
  final Widget desktopScreen;
  static const mobileWidth = 600;

  @override
  State<Responsive> createState() => _ResponsiveState();
}

class _ResponsiveState extends State<Responsive> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < Responsive.mobileWidth) {
          return widget.mobileScreen;
        } else {
          return widget.desktopScreen;
        }
      },
    );
  }
}
