import 'package:flutter/material.dart';
import 'package:money_app/constants/constant.dart';
import 'package:money_app/pages/welcome_page.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const GetDrawer(),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          const SizedBox(height: double.infinity),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 278,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  blue,
                  Color.fromARGB(255, 88, 109, 230),
                ],
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(70),
                bottomRight: Radius.circular(70),
              ),
            ),
          ),
          const Positioned(
            top: 68,
            right: 30,
            child: Image(
              image: ResizeImage(AssetImage('assets/images/White.png'),
                  height: 85, width: 85),
            ),
          ),
          Positioned(
            top: 122,
            right: 42,
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
          const Positioned(
            top: 124,
            left: 64,
            child: Text(
              'Good morning \nEmma,',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Positioned(
            top: 200,
            left: 30,
            right: 30,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 320,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Your total balance',
                      style: TextStyle(
                        color: Color(0xFF3A3A3A),
                        fontSize: 16,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      '\$8500.00',
                      style: TextStyle(
                        color: Color(0xFF2D99FF),
                        fontSize: 30,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Center(
                      child: Image.asset('assets/images/Columns.png'),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 543,
            left: 32,
            right: 32,
            child: Container(
              width: 315,
              height: 146,
              decoration: ShapeDecoration(
                gradient: const LinearGradient(
                  begin: Alignment(0.99, -0.15),
                  end: Alignment(-0.99, 0.15),
                  colors: [Color(0xFF4960F9), Color(0xFF1433FF)],
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.only(left: 32),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Check your \nbank accounts',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class GetDrawer extends StatelessWidget {
  const GetDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 50, bottom: 40, left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image(
                  image: ResizeImage(AssetImage('assets/images/White.png'),
                      height: 80, width: 80),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 15),
                    Text(
                      'Emma Ashley',
                      style: TextStyle(
                        color: Color(0xFF3A3A3A),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 2),
                    Text(
                      '@emma_ashley',
                      style: TextStyle(
                        color: Color(0xFF3A3A3A),
                        fontSize: 14,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          const GetListTile('assets/images/Payments.png', 'Payments'),
          const GetListTile('assets/images/Transactions.png', 'Transactions'),
          const GetListTile('assets/images/My_Cards.png', 'My Cards'),
          const GetListTile('assets/images/Promotions.png', 'Promotions'),
          const GetListTile('assets/images/Savings.png', 'Savings'),
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Container(
              width: 221,
              height: 72,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 1, color: blue),
                  borderRadius: BorderRadius.circular(28),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const WelcomePaeg()));
                  },
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
          ),
        ],
      ),
    );
  }
}

class GetListTile extends StatelessWidget {
  final String image;
  final String title;
  const GetListTile(
    this.image,
    this.title, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: ListTile(
        minLeadingWidth: 10,
        contentPadding: const EdgeInsets.symmetric(horizontal: 32),
        leading: Image.asset(
          image,
        ),
        title: Text(
          title,
          style: const TextStyle(
            color: blue,
            fontSize: 17,
          ),
        ),
        trailing: Image.asset('assets/images/Small_Arrow.png'),
      ),
    );
  }
}
