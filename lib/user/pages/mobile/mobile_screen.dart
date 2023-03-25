

import 'package:cambridge_wealth_ui/user/pages/mobile/widgets/mobile_app_bar.dart';
import 'package:cambridge_wealth_ui/user/pages/mobile/widgets/mobile_content_top.dart';
import 'package:cambridge_wealth_ui/user/pages/mobile/widgets/mobile_drawer.dart';
import 'package:cambridge_wealth_ui/user/pages/mobile/widgets/mobile_list.dart';
import 'package:flutter/material.dart';

import 'mobile_setting_screen.dart';

class MobileHomeScreen extends StatefulWidget {
  const MobileHomeScreen({Key? key}) : super(key: key);

  @override
  State<MobileHomeScreen> createState() => _MobileHomeScreenState();
}

class _MobileHomeScreenState extends State<MobileHomeScreen> {
  var currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    var scaffoldKey = GlobalKey<ScaffoldState>();
    var navBarItemSelected = const [MobileTemplate(),MobileSettingScreen()];
    return Scaffold(
      drawer: const MobileDrawer(),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(15),
            topLeft: Radius.circular(15),
          ),
          boxShadow: [
            BoxShadow(color: Colors.white, spreadRadius: 0, blurRadius: 2),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(15.0),
            topRight: Radius.circular(15.0),
          ),

          child: BottomNavigationBar(
            unselectedItemColor: Colors.white,
            backgroundColor: Colors.black,
            selectedItemColor: Colors.orange,
            currentIndex: currentIndex,
            onTap: (index){
              setState(() {
                currentIndex = index;
                print("current index: $currentIndex");
              });
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Setting',
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.black,
      body: navBarItemSelected[currentIndex],
    );
  }
}

class MobileTemplate extends StatelessWidget {
  const MobileTemplate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.only(top: 20, right: 15, left: 15),
        child: Column(
          children: const[
            MobileAppBar(),
            MobileScoreRow(),
            SizedBox(height: 10,),
            MobileList(),

          ],
        ),
      ),
    );
  }
}

