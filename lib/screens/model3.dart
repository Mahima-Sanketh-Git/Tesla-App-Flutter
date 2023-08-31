import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tesla/widgets/page.dart';

class Model3 extends StatefulWidget {
  const Model3({super.key});

  @override
  State<Model3> createState() => _Model3State();
}

String myim = 'assets/3w.png';

class _Model3State extends State<Model3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Landing(
          cartext: "Model 3",
          carinfo:
              "The Tesla Model 3 is an electric car produced by American automaker Tesla, Inc. It is a battery-powered four-door sedan that is marketed in the compact-executive segment. Limited production of the Model 3 began in mid-2017, with the first production vehicle rolling off the assembly line on July 7, 2017.",
          image: myim,
          ontap1: () {
            setState(() {
              myim = 'assets/3w.png';
            });
          },
          ontap2: () {
            setState(() {
              myim = 'assets/2b.png';
            });
          },
          ontap3: () {
            setState(() {
              myim = 'assets/3bl.png';
            });
          },
        ),
      ),
    );
  }
}
