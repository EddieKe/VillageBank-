import 'package:flutter/material.dart';
import 'package:VillageBank/screens/welcome_screen.dart';
import 'package:VillageBank/screens/login_screen.dart';
import 'package:VillageBank/screens/signup_screen.dart';

import 'package:VillageBank/create_group_page.dart';
import 'package:VillageBank/screens/dashboard.dart';

import 'package:VillageBank/screens/repay_loan.dart';
import 'package:VillageBank/widgets/layout.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomeScreen(),
        '/login': (context) => LoginScreen(),
        '/signup': (context) => SignUpScreen(),
        '/signup': (context) => DashboardScreen(),
      },
    );
  }
}
