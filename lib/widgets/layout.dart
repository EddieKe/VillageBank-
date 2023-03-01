import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:VillageBank/screens/dashboard.dart';
import 'package:VillageBank/screens/notifications.dart';
import 'package:VillageBank/screens/user.dart';
import 'package:VillageBank/utilities/color.dart';

class Layout extends StatefulWidget {
  String? title;

  Layout({
    super.key,
    this.title,
  });

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  final GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();
  int _currentScreen = 0;
  List screens = const [
    DashboardScreen(),
    Notifications(),
    UserScreen(),
  ];

  void changeScreen(int num) {
    setState(() {
      _currentScreen = num;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      resizeToAvoidBottomInset: false,
      key: _scaffoldState,
      // appBar: AppBar(),
      body: Container(
        padding: const EdgeInsets.only(),
        child: screens[_currentScreen],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentScreen,
        selectedItemColor: AppColors.primary,
        onTap: changeScreen,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Iconsax.wallet),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.notification),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.user),
            label: 'User',
          ),
        ],
      ),
    );
  }
}
