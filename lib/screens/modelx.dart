import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tesla/widgets/page.dart';

class Modelx extends StatefulWidget {
  const Modelx({super.key});

  @override
  State<Modelx> createState() => _ModelxState();
}

String img = 'assets/xw.png';

class _ModelxState extends State<Modelx> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Landing(
          cartext: "Model X",
          carinfo:
              "The Tesla Model X is a battery electric mid-size luxury crossover SUV produced by Tesla, Inc. since 2015. Developed from the full-sized sedan platform of the Tesla Model S, the vehicle notably uses falcon wing doors for passenger access.",
          image: img,
          ontap1: () {
            setState(() {
              img = "assets/xw.png";
            });
          },
          ontap2: () {
            setState(() {
              img = "assets/xb.png";
            });
          },
          ontap3: () {
            setState(() {
              img = "assets/xbb.png";
            });
          },
        ),
      ),
    );
  }
}
