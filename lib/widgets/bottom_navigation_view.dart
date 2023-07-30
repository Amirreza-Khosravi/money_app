import 'package:flutter/material.dart';
import 'package:money_app/pages/notification_page.dart';
import 'package:money_app/pages/profile_page.dart';
import 'package:money_app/pages/wallet_page.dart';

class BottomNavigatoin extends StatefulWidget {
  const BottomNavigatoin({super.key});

  @override
  State<BottomNavigatoin> createState() => _BottomNavigatoinState();
}

class _BottomNavigatoinState extends State<BottomNavigatoin> {
  int selectedBottomNavigationIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: selectedBottomNavigationIndex,
        children: getPage(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          setState(() {
            selectedBottomNavigationIndex = index;
          });
        },
        currentIndex: selectedBottomNavigationIndex,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/Wallet_Deactive.png'),
            activeIcon: Image.asset('assets/images/Wallet_Active.png'),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/Notif_Deactive.png'),
            activeIcon: Image.asset('assets/images/Notif_Active.png'),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/Prof_Deactive.png'),
            activeIcon: Image.asset('assets/images/Prof_Active.png'),
            label: '',
          ),
        ],
      ),
    );
  }
}

List<Widget> getPage() {
  return [
    const WalletPage(),
    const NotificationPage(),
    const ProfilePage(),
  ];
}
