

import 'package:cambridge_wealth_ui/responsive/responsive.dart';
import 'package:cambridge_wealth_ui/user/pages/Desktop/desktop_home_screen.dart';
import 'package:cambridge_wealth_ui/user/pages/mobile/mobile_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black,
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.black, primary: Colors.black87),
        //primarySwatch: Color(Colors.black),
      ),
      title: 'Flutter Demo',
      home: const Responsive(mobileScreen: MobileHomeScreen(), desktopScreen: DesktopHomeScreen()),
    );
  }
}
