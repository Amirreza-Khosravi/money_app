import 'package:flutter/material.dart';
import 'package:money_app/constants/constant.dart';
import 'package:money_app/pages/register/signin_page.dart';
import 'package:money_app/pages/register/signup_page.dart';
import 'package:money_app/pages/register/widgets/bottom_blue.dart';

class WelcomePaeg extends StatelessWidget {
  const WelcomePaeg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.topEnd,
        children: [
          Positioned(
            right: -30,
            bottom: 350,
            child: Container(
              width: 800,
              height: 800,
              decoration: const BoxDecoration(
                  color: Color(0xffda5ee6), shape: BoxShape.circle),
            ),
          ),
          Positioned(
            right: 90,
            bottom: 260,
            child: Container(
              width: 800,
              height: 800,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(0.54, -2),
                    end: Alignment(-0.54, 0.84),
                    colors: [Color(0x00C62FF8), Color(0xFF2F56F8)],
                  ),
                  shape: BoxShape.circle),
            ),
          ),
          Positioned(
            right: 130,
            bottom: 350,
            child: Container(
              width: 800,
              height: 800,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(0.66, -0.75),
                    end: Alignment(-0.1, 0.75),
                    colors: [Color(0xFF5264F9), Color(0xFF39F9EF)],
                  ),
                  shape: BoxShape.circle),
            ),
          ),
          Positioned(
            top: 100,
            left: 60,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('assets/images/Logo-White.png'),
                const SizedBox(height: 16),
                const Text(
                  'Welcome\nBack',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
          ),
          Positioned(
            bottom: 64,
            left: 30,
            right: 30,
            child: Column(
              children: [
                BlueBottom(
                  'Sing in',
                  blue,
                  Colors.white,
                  Colors.white,
                  () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignInPage()));
                  },
                ),
                const SizedBox(height: 16),
                BlueBottom('Sign up', Colors.white, black, blue, () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignUpPage()));
                }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
