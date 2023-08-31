import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tesla/widgets/page.dart';

class Models extends StatefulWidget {
  const Models({super.key});

  @override
  State<Models> createState() => _ModelsState();
}

String myimage = "assets/mods.png";

class _ModelsState extends State<Models> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Landing(
          cartext: "Model S",
          carinfo:
              "The Tesla Model S is an electric full-size car built by Tesla, Inc. since 2012. The Model S features a battery-powered dual-motor, all-wheel drive layout, although earlier versions featured a rear-motor and rear-wheel drive layout. It has a liftback body style.",
          image: myimage,
          ontap1: () {
            setState(() {
              myimage = 'assets/mods.png';
            });
          },
          ontap2: () {
            setState(() {
              myimage = 'assets/sb.png';
            });
          },
          ontap3: () {
            setState(() {
              myimage = 'assets/sbb.png';
            });
          },
        ),
      ),
    );
  }
}
