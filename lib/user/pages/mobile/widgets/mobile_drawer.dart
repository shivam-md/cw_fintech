
import 'package:flutter/material.dart';

class MobileDrawer extends StatelessWidget {
  const MobileDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const color = Colors.white;
    return Drawer(
      backgroundColor: Colors.black,
      child: ListView(
        padding: const EdgeInsets.only(top: 50,left: 20),
        children: [
          DrawerHeader(
              child: Container(
                //padding: const EdgeInsets.only(top: 30,bottom: 40,left: 10,right: 10),
                height: 70,
                width: 70,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/icons/cambrige_app_icon.jpg',),fit: BoxFit.scaleDown,
                  ),
                ),
              ),
          ),
          const SizedBox(height: 30,),
          Row(
            children: const [
              Icon(Icons.home,color: color,),
              SizedBox(width: 40,),
              Text('H O M E',style: TextStyle(color: color),),
            ],
          ),
          const SizedBox(height: 20,),
          Row(
            children: const [
              Icon(Icons.brightness_medium,color: color,),
              SizedBox(width: 40,),
              Text('T H E M E',style: TextStyle(color: color),),
            ],
          ),
          const SizedBox(height: 20,),
          Row(

            children: const [
              Icon(Icons.favorite,color: color,),
              SizedBox(width: 40,),
              Text('F A V O U R I T E S',style: TextStyle(color: color),),
            ],
          ),
          const SizedBox(height: 20,),
          Row(
            children: const [
              Icon(Icons.settings,color: color,),
              SizedBox(width: 40,),
              Text('S E T T I N G S',style: TextStyle(color: color),),
            ],
          ),

        ],
      ),
    );
  }
}
