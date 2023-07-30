import 'package:flutter/material.dart';
import 'package:money_app/constants/constant.dart';

class ButtonIntro extends StatefulWidget {
  final Function onTap;
  const ButtonIntro(this.onTap, {super.key});

  @override
  State<ButtonIntro> createState() => _ButtonIntroState();
}

class _ButtonIntroState extends State<ButtonIntro> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.onTap();
      },
      child: Container(
        width: 150,
        height: 70,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(28),
          color: blue,
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              const Text(
                'NEXT',
                style: TextStyle(fontSize: 17, color: Colors.white),
              ),
              const Spacer(),
              Image.asset('assets/images/Right-Arrow.png'),
            ],
          ),
        ),
      ),
    );
  }
}
