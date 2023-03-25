import 'package:cambridge_wealth_ui/shared/custom_container.dart';
import 'package:flutter/material.dart';

class MobileList extends StatelessWidget {
  const MobileList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: SizedBox(
        height: double.infinity,
        child: ListView.builder(
          //primary: false,
          physics: const BouncingScrollPhysics(),
          itemCount: 10 ,
          itemBuilder: (context, index) {
            return Column(
              children: [
                CustomContainer(
                  height: 80,
                  color: const Color(0x202020),
                  opacity: 0.85,
                  border: 2,
                  borderRadius: 8,
                  //width: 350,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10,top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("list item index $index ", style: const TextStyle(color: Colors.white),),
                        const Text("5.0", style: TextStyle(color: Colors.white),),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
              ],
            );

          },
        ),
      ),
    );
  }
}
