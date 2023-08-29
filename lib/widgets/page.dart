import 'package:flutter/material.dart';
import 'package:tesla/screens/home.dart';

class Landing extends StatelessWidget {
  const Landing({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 327,
                decoration: BoxDecoration(
                  color: Color(0xffe7e7e7),
                ),
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Home(),
                    ),
                  );
                },
                icon: Icon(Icons.arrow_back_ios),
              ),
            ],
          )
        ],
      ),
    );
  }
}
