import 'package:flutter/material.dart';
import 'package:money_app/constants/constant.dart';

class GetBody extends StatelessWidget {
  final String image;
  final String title;
  final String description;

  const GetBody(this.image, this.title, this.description, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(image),
        const SizedBox(height: 83),
        SizedBox(
          width: 271,
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: blue,
            ),
          ),
        ),
        const SizedBox(height: 20),
        SizedBox(
          width: 271,
          child: Text(
            description,
            style: const TextStyle(
              fontSize: 18,
              color: purple,
            ),
          ),
        ),
      ],
    );
  }
}
