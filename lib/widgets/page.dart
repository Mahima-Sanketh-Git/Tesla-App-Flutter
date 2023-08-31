import 'package:flutter/material.dart';
import 'package:tesla/screens/home.dart';
import 'package:animated_icon/animated_icon.dart';

class Landing extends StatelessWidget {
  const Landing(
      {super.key,
      required this.cartext,
      required this.carinfo,
      required this.image,
      this.ontap1,
      this.ontap2,
      this.ontap3});
  final String cartext;
  final String carinfo;
  final String image;
  final void Function()? ontap1;
  final void Function()? ontap2;
  final void Function()? ontap3;
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
                height: 270,
                decoration: BoxDecoration(
                  color: Color(0xffe7e7e7),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 10),
                child: IconButton(
                  iconSize: 30,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30),
                child: AnimatedSwitcher(
                  duration: Duration(seconds: 2),
                  child: Image.asset(
                    image, //! make strings
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: ontap1,
                  child: Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35),
                      color: Color.fromRGBO(183, 187, 186, 1),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: ontap2,
                  child: Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35),
                      color: Color.fromRGBO(0, 0, 0, 1),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: ontap3,
                  child: Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35),
                      color: Color.fromRGBO(3, 0, 156, 1),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  cartext,
                  style: TextStyle(
                    fontSize: 44,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                AnimateIcon(
                  key: UniqueKey(),
                  onTap: () {},
                  iconType: IconType.animatedOnTap,
                  height: 70,
                  width: 70,
                  animateIcon: AnimateIcons.heart,
                  color: Colors.red,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              carinfo,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
          )
        ],
      ),
    );
  }
}
