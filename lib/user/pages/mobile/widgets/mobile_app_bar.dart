import 'package:cambridge_wealth_ui/user/pages/mobile/widgets/mobile_drawer.dart';
import 'package:flutter/material.dart';

import '../../../../shared/custom_container.dart';

class MobileAppBar extends StatelessWidget {
  const MobileAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: (){
            debugPrint("button pushed : drawer : mobile");
            Scaffold.of(context).openDrawer();
          },
          child: Container(
            height: 50,
            width: 50,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/icons/menu_icon.png',),fit: BoxFit.scaleDown,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 40,
          width: 40,
          child: CustomContainer(
            borderRadius: 25,
            color: const Color(0x494949),
            //border: 2,
            child: Center(
              child: IconButton(
                icon: const Icon(
                  Icons.notifications,
                  color: Colors.white,
                ),
                onPressed: () {
                  debugPrint("button pushed : notification : mobile");

                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
