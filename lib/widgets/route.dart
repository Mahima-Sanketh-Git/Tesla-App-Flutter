import 'package:flutter/cupertino.dart';
import 'package:tesla/screens/model3.dart';
import 'package:tesla/screens/models.dart';
import 'package:tesla/screens/modelx.dart';
import 'package:tesla/screens/modely.dart';

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
