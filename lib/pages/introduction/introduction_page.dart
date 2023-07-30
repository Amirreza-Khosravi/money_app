import 'package:flutter/material.dart';
import 'package:money_app/constants/constant.dart';
import 'package:money_app/pages/introduction/widgets/body_intro.dart';
import 'package:money_app/pages/introduction/widgets/button_intro.dart';
import 'package:money_app/pages/welcome_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroductionPage extends StatefulWidget {
  const IntroductionPage({super.key});

  @override
  State<IntroductionPage> createState() => _IntroductionPageState();
}

class _IntroductionPageState extends State<IntroductionPage> {
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      alignment: AlignmentDirectional.topCenter,
      children: [
        Positioned(
          top: 85,
          child: Image.asset('assets/images/logo.png'),
        ),
        Positioned(
          top: 200,
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: PageView(
              controller: pageController,
              children: introPage,
            ),
          ),
        ),
        Positioned(
          right: 40,
          bottom: 50,
          child: ButtonIntro(
            () {
              if (pageController.page!.toInt() < 2) {
                pageController.animateToPage(pageController.page!.toInt() + 1,
                    duration: const Duration(milliseconds: 400),
                    curve: Curves.easeIn);
              }
              if (pageController.page!.toInt() == 2) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const WelcomePaeg()));
              }
            },
          ),
        ),
        Positioned(
          left: 40,
          bottom: 70,
          child: SmoothPageIndicator(
            controller: pageController,
            count: 3,
            effect: const ExpandingDotsEffect(
              dotHeight: 6,
              dotWidth: 8,
              spacing: 5,
              activeDotColor: blue,
            ),
          ),
        )
      ],
    ));
  }

  List<Widget> introPage = [
    const GetBody(
      'assets/images/introLogo1.png',
      'Save your money conveniently.',
      'Get 5% cash back for each transaction and spend it \neasily.',
    ),
    const GetBody(
      'assets/images/introLogo2.png',
      'Secure your money for free and get rewards.',
      'Get the most secure payment app ever and enjoy it.',
    ),
    const GetBody(
      'assets/images/introLogo3.png',
      'Enjoy commission-free stock trading.',
      'Online investing has never been easier than it is right now.',
    )
  ];
}
