import 'package:cambridge_wealth_ui/shared/custom_container.dart';
import 'package:flutter/material.dart';

class MobileScoreRow extends StatelessWidget {
  const MobileScoreRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const color = Colors.white;
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(top: 18),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ................................... orange bar besides score view and description
            sideOrangeBar(),
            Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // ..................... Row of score data with divider
                    scoreRow(),
                    const SizedBox(height: 1,),
                    // ........................... text data description
                    const Flexible(
                      child: Padding(
                        padding: EdgeInsets.only(left: 20, right: 10),
                        child: Text('''Lorem ipsum dolor sit amet, consectetur adipiscing elit.Etiam facilisis at nisl eget accumsan. Phasellus sollicitudin dolor quis semper posuere. Nam lobortis ante sit amet vulputate consequat''',
                          style: TextStyle(color: Colors.white), overflow: TextOverflow.clip,),
                      ),
                    ),
                  ],
                ),
            ),
          ],
        ),
      ),
    );
  }

  Widget singleScoreBlock() => SizedBox(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('14,522',style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.w700),),
            SizedBox(
              height: 10,
            ),
            Text(' SCORE', style: TextStyle(color: Colors.white, fontSize: 14,),),
          ],
        ),
  );

  Widget scoreRow() => Container(
    height: 100,
    padding: const EdgeInsets.only(top: 10,right: 10,left: 20),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        singleScoreBlock(),
        const SizedBox(width: 22,),
        const CustomContainer(
            height: 60,
            width: 2,
            opacity: 1,
            color: Colors.white,
            child: SizedBox(
              width: 0,
            )),
        const SizedBox(width: 22,),
        singleScoreBlock(),
        const SizedBox(width: 22,),
        const CustomContainer(
            height: 60,
            width: 2,
            color: Colors.white,
            opacity: 1,
            child: SizedBox(
              width: 0,
            )),
        const SizedBox(width: 22,),
        singleScoreBlock(),
        const SizedBox(width: 22,),
      ],
    ),
  );

  Widget sideOrangeBar() => const CustomContainer(
  height: 190,
  width: 5,
  color: Colors.orange,
  opacity: 1,
  borderRadius: 25,
  child: SizedBox(width: 0),
  );
}
