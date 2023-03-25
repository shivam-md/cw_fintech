
import 'package:flutter/material.dart';

class DesktopMain extends StatelessWidget {
  const DesktopMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Flexible(
        child: Row(
          children: [
            // sidebar
            const SizedBox(
              width: 70,
              child: Placeholder(),
            ),
            const SizedBox(width: 20,),

            // main content
            Container(
              padding: const EdgeInsets.all(10),
              width: 600,
              decoration: BoxDecoration(color: Colors.green,border: Border.all(width: 2),),
              child: Row(
                children: [
                  Container(height: 100,width:double.infinity, decoration: BoxDecoration(color: Colors.black,border: Border.all(width: 2)),),
                  AspectRatio(aspectRatio: 5/6,child: Container(decoration: BoxDecoration(color: Colors.cyan))), // main content
                  SizedBox(width: 20,),
                  Expanded(child: Placeholder(color: Colors.green,)),
                ],
              ),

            ),
            const SizedBox(
              width: 100,
              height: 100,
              child: Placeholder(color: Colors.yellow,),
            )

            // notification
          ],
        ),
      ),
    );
  }
}
