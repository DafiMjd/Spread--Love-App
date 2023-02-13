import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyFAB extends StatelessWidget {
  const MyFAB({
    super.key,
    required this.addFlower,
    required this.showLove,
  });

  final VoidCallback addFlower;
  final VoidCallback showLove;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 31),
          child: FloatingActionButton(
            backgroundColor: Colors.pink[50],
            foregroundColor: Colors.purple[300],
            onPressed: showLove,
            child: SvgPicture.asset(
              'assets/svgs/heart.svg',
              color: Colors.black,
              width: 20,
            ),
          ),
        ),
        FloatingActionButton(
          backgroundColor: Colors.pink[50],
          foregroundColor: Colors.purple[300],
          onPressed: addFlower,
          child: SvgPicture.asset(
            'assets/svgs/fab.svg',
            color: Colors.black,
            width: 20,
          ),
        ),
      ],
    );
  }
}
