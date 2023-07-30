import 'package:flutter/material.dart';
import 'package:money_app/constants/constant.dart';
import 'package:money_app/pages/welcome_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            right: 0,
            child: Image.asset('assets/images/Purple.png'),
          ),
          Positioned(
            right: 0,
            child: Image.asset('assets/images/Blue.png'),
          ),
          Positioned(
            left: 30,
            right: 30,
            top: 90,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Profile',
                  style: TextStyle(
                    color: Color(0xFF3A3A3A),
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 30),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image(
                      image: ResizeImage(AssetImage('assets/images/White.png'),
                          height: 90, width: 90),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 15),
                        Text(
                          'Emma Ashley',
                          style: TextStyle(
                            color: Color(0xFF2743FD),
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 2),
                        Text(
                          'Online',
                          style: TextStyle(
                            color: Color(0xFF2743FD),
                            fontSize: 16,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                const GetInfoBox('Username', 'Emma_ashley'),
                const GetInfoBox('First Name', 'Emma'),
                const GetInfoBox('Last Name', 'Ashley'),
                const GetInfoBox('Date of Birth', '20-12-1990'),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 72,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 1, color: blue),
                      borderRadius: BorderRadius.circular(28),
                    ),
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const WelcomePaeg()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        children: [
                          const Text(
                            'Sign out',
                            style: TextStyle(
                              color: Color(0xFF2743FD),
                              fontSize: 20,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const Spacer(),
                          Image.asset('assets/images/Logout.png')
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 225,
            left: 95,
            child: Container(
              width: 13,
              height: 13,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white),
                color: const Color(0xFF20C968),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class GetInfoBox extends StatelessWidget {
  final String title;
  final String subTitle;
  const GetInfoBox(
    this.title,
    this.subTitle, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, bottom: 24),
      child: Container(
        height: 58,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(color: Color(0xffDEE1EF), width: 2),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Color(0xFF3A3A3A),
                fontSize: 15,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              subTitle,
              style: const TextStyle(
                color: Color(0xFF2743FD),
                fontSize: 14,
              ),
            )
          ],
        ),
      ),
    );
  }
}
