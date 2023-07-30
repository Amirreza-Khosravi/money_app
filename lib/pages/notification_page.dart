import 'package:flutter/material.dart';
import 'package:money_app/constants/constant.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 63, bottom: 10),
          child: GetSearchBox(),
        ),
        Expanded(
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 600,
                  child: ListView(
                    children: const [
                      Padding(
                        padding:
                            EdgeInsets.only(left: 30, right: 30, bottom: 24),
                        child: Text(
                          'You can check your \nnotificaions here.',
                          style: TextStyle(
                            color: Color(0xFF3A3A3A),
                            fontSize: 22,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      //image & name & subTitle required
                      GetListTile('assets/images/user1.png', 'Arlene Fox',
                          'Arlene just sent you \$20.'),
                      GetListTile('assets/images/user2.png', 'Theresa Web',
                          'Theresa sent you \$99.'),
                      GetListTile('assets/images/user3.png', 'Marvin Murphy',
                          'Marvin sent you \$500.'),
                      GetListTile('assets/images/user4.png', 'Bessie Alexander',
                          'Bessie sent you \$25.'),
                      GetListTile('assets/images/user5.png', 'Ronald Robertson',
                          'Ronald sent you \$10.'),
                      GetListTile('assets/images/user6.png', 'Darrell Mckinney',
                          'Darrell sent you \$12.'),
                      GetListTile('assets/images/user7.png', 'Gregory Bell',
                          'Gregory sent you \$25.'),
                      GetListTile('assets/images/user1.png', 'Arlene Fox',
                          'Arlene just sent you \$20.'),
                      GetListTile('assets/images/user2.png', 'Theresa Web',
                          'Theresa sent you \$99.'),
                    ],
                  ),
                ),
              )
            ],
          ),
        )
      ],
    ));
  }
}

class GetSearchBox extends StatelessWidget {
  const GetSearchBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30, top: 24),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        width: 315,
        height: 53,
        decoration: BoxDecoration(
          border: Border.all(color: blue),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            Image.asset('assets/images/search_icon.png'),
            const SizedBox(width: 8),
            const Text(
              'Search',
              style: TextStyle(
                color: blue,
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class GetListTile extends StatelessWidget {
  final String image;
  final String name;
  final String subTitle;

  const GetListTile(
    this.image,
    this.name,
    this.subTitle, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(image),
      title: Text(
        name,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 14,
        ),
      ),
      subtitle: Text(
        subTitle,
        style: const TextStyle(
          color: Color(0xFF2743FD),
          fontSize: 16,
        ),
      ),
      trailing: Image.asset('assets/images/Small_Arrow.png'),
    );
  }
}
