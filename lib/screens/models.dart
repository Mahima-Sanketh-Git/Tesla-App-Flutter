import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tesla/widgets/page.dart';

class Models extends StatefulWidget {
  const Models({super.key});

  @override
  State<Models> createState() => _ModelsState();
}

class _ModelsState extends State<Models> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Landing(),
      ),
    );
  }
}
