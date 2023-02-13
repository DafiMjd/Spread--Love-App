import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FlowerWidget extends StatelessWidget {
  const FlowerWidget({super.key, required this.left, required this.top});

  final double left;
  final double top;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: left,
      top: top,
      child: SvgPicture.asset(
        'assets/svgs/fab.svg',
        width: 60,
        // color: Colors.pink,
        color: Color((Random().nextDouble() * 0xFFFFFF).toInt())
            .withOpacity(1.0),
      ),
    );
  }
}
