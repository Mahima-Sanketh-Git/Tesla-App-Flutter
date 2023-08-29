import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mycontainer extends StatelessWidget {
  const Mycontainer({
    super.key,
    required this.image,
    required this.text,
    required this.textcolor,
    required this.onTap,
  });
  final String image;
  final String text;
  final Color textcolor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          image,
          fit: BoxFit.cover,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Text(
              text,
              style: TextStyle(
                color: textcolor,
                fontSize: 64,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 650),
          child: Center(
            child: GestureDetector(
              onTap: onTap,
              child: Container(
                width: 300,
                height: 62,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xff5f737f),
                ),
                child: Center(
                  child: Text(
                    "Read more",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
