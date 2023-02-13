import 'dart:math';

import 'package:flutter/material.dart';
import 'package:valentine_proj/flower_widget.dart';
import 'package:valentine_proj/love_widget.dart';
import 'package:valentine_proj/my_fab.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool buttonEnabled = true;
  bool loveShown = false;

  List<Widget> flowers = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: MyFAB(
        addFlower: buttonEnabled
            ? () {
                addFlower();
              }
            : () {},
        showLove: buttonEnabled
            ? () {
                showLove();
              }
            : () {},
      ),
      body: Stack(
        children: [
          Align(
              alignment: Alignment.topCenter,
              child: Image.asset(
                'assets/images/flower.png',
                height: 200,
                width: double.maxFinite,
              )),
          ...flowers,
          Visibility(visible: loveShown, child: LoveRow()),
        ],
      ),
    );
  }

  void addFlower() {
    setState(() {
      final pos = generatePos();
      flowers.add(FlowerWidget(left: pos[0], top: pos[1]));
    });

    if (flowers.length % 10 == 0) {
      showLove();
    }
  }

  List<double> generatePos() {
    Random random = new Random();
    final left = random.nextDouble() * 400;
    final top = random.nextDouble() * 850;

    return [left, top];
  }

  void showLove() {
    setState(() {
      buttonEnabled = false;
      loveShown = true;
    });
    Future.delayed(const Duration(seconds: 5), () {
      setState(() {
        buttonEnabled = true;
        loveShown = false;
      });
    });
  }
}
