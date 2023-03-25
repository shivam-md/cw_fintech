import 'package:cambridge_wealth_ui/user/pages/mobile/mobile_screen.dart';
import 'package:flutter/material.dart';

class MobileSettingScreen extends StatelessWidget {
  const MobileSettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/icons/black-and-white-interlocking-geometric-pattern-free-vector 1.png',
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: MobileTemplate(),
    );
  }
}
