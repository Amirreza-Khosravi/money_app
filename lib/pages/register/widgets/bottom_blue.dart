import 'package:flutter/material.dart';
import 'package:money_app/constants/constant.dart';

class BlueBottom extends StatelessWidget {
  final String title;
  final Color color;
  final Color textColor;
  final Color iconColor;
  final Function onTap;
  const BlueBottom(
      this.title, this.color, this.textColor, this.iconColor, this.onTap,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Stack(
        children: [
          Container(
            width: 400,
            height: 72,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(28),
              color: color,
              border: Border.all(color: blue),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: textColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const Spacer(),
                  Image.asset('assets/images/Right-Arrow.png',
                      color: iconColor),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
