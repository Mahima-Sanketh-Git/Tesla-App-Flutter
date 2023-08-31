import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tesla/widgets/page.dart';

class Modely extends StatefulWidget {
  const Modely({super.key});

  @override
  State<Modely> createState() => _ModelyState();
}

String myimg = "assets/ywhite.png";

class _ModelyState extends State<Modely> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Landing(
          cartext: 'Model Y',
          carinfo:
              'The Tesla Model Y is a battery electric compact crossover SUV manufactured by Tesla, Inc. Unveiled in March 2019, it started production at its Fremont Factory in January 2020, and started deliveries on March 13, 2020. The Model Y is based on the Model 3 sedan platform.',
          image: myimg,
          ontap1: () {
            setState(() {
              myimg = "assets/ywhite.png";
            });
          },
          ontap2: () {
            setState(() {
              myimg = "assets/yb.png";
            });
          },
          ontap3: () {
            setState(() {
              myimg = "assets/ybl.png";
            });
          },
        ),
      ),
    );
  }
}
