
import 'package:flutter/material.dart';

class DesktopHomeScreen extends StatelessWidget {
  const DesktopHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: LayoutBuilder(
        builder: (context, constraints) => SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraints.maxHeight,),
            child: IntrinsicWidth(
              child: Row(
                children: [
                  Container(width: 60,child:Container(child:Placeholder(color: Colors.blue,),decoration: BoxDecoration(color: Colors.yellow),),),
                  SizedBox(width: 20,),
                  Container(width: 700,child:Placeholder(color: Colors.blue,),decoration: BoxDecoration(color: Colors.purple),),
                  SizedBox(width: 20,),
                  Container(width: 400,child:Placeholder(color: Colors.green,),decoration: BoxDecoration(color: Colors.green,),),
                  SizedBox(width: 20,),
                ],
              ),
            ),
          ),
        ),
      ),
    );
    Widget widget1 = SizedBox();
    Widget widget2 = SizedBox();
    Widget widget3 = SizedBox();
  }
}
