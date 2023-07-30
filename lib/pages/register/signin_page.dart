import 'package:flutter/material.dart';
import 'package:money_app/constants/constant.dart';
import 'package:money_app/pages/register/widgets/bottom_blue.dart';
import 'package:money_app/pages/register/widgets/input_feld.dart';
import 'package:money_app/widgets/bottom_navigation_view.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        alignment: AlignmentDirectional.topEnd,
        children: [
          Stack(
            alignment: AlignmentDirectional.topEnd,
            children: [
              Positioned(
                right: 40,
                bottom: 550,
                child: Container(
                  width: 360,
                  height: 360,
                  decoration: const BoxDecoration(
                      color: Color(0xffda5ee6), shape: BoxShape.circle),
                ),
              ),
              Positioned(
                right: 100,
                bottom: 490,
                child: Container(
                  width: 360,
                  height: 360,
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
                bottom: 520,
                child: Container(
                  width: 360,
                  height: 360,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(0.66, -0.75),
                        end: Alignment(-0.1, 0.75),
                        colors: [Color(0xFF5264F9), Color(0xFF39F9EF)],
                      ),
                      shape: BoxShape.circle),
                ),
              ),
            ],
          ),
          const Positioned(
            bottom: 430,
            left: 30,
            child: Text(
              'Sign in',
              style: TextStyle(
                fontSize: 30,
                color: black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            bottom: 200,
            left: 30,
            right: 30,
            child: Column(
              children: [
                const InputField(),
                const SizedBox(height: 24),
              ],
            ),
          ),
          const Positioned(
            bottom: 180,
            left: 30,
            child: Text(
              'Forgot Password?',
              style: TextStyle(
                color: Color(0xFF2B47FC),
                fontSize: 16,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Positioned(
              bottom: 64,
              left: 30,
              right: 30,
              child:
                  BlueBottom('Sign in', blue, Colors.white, Colors.white, () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const BottomNavigatoin()));
              })),
        ],
      ),
    );
  }
}
