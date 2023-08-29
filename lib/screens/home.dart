import 'package:flutter/material.dart';
import 'package:tesla/screens/model3.dart';
import 'package:tesla/screens/models.dart';
import 'package:tesla/screens/modelx.dart';
import 'package:tesla/screens/modely.dart';

import 'package:tesla/widgets/container.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Column(
            children: [
              Mycontainer(
                image: 'assets/tes.jpeg',
                text: "Model S",
                textcolor: Color.fromARGB(255, 62, 65, 62),
                onTap: () {
                  Navigator.of(context).push(_createroute());
                },
              ),
              Mycontainer(
                image: 'assets/model3.jpeg',
                text: "Model 3",
                textcolor: Color.fromRGBO(51, 255, 194, 0.993),
                onTap: () {
                  Navigator.of(context).push(_createroute1());
                },
              ),
              Mycontainer(
                image: 'assets/modelx.jpeg',
                text: "Model X",
                textcolor: Color.fromARGB(255, 62, 65, 62),
                onTap: () {
                  Navigator.of(context).push(_createroute2());
                },
              ),
              Mycontainer(
                image: 'assets/modely.jpeg',
                text: "Model Y",
                textcolor: Color.fromARGB(255, 255, 255, 255),
                onTap: () {
                  Navigator.of(context).push(_createroute3());
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

//*models route
Route _createroute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => Models(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

//*model3 route
Route _createroute1() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => Model3(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

//*modelX route
Route _createroute2() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => Modelx(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

//*modelY route
Route _createroute3() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => Modely(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
