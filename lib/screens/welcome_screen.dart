import 'package:flutter/material.dart';
import 'package:VillageBank/screens/login_screen.dart';
import 'package:VillageBank/screens/signup_screen.dart';
import 'package:VillageBank/widgets/button.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(flex: 1),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                'Welcome Back!',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Spacer(flex: 2),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/login_screen');
                  },
                  style: ElevatedButton.styleFrom(
                    primary: null,
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    // Apply a linear gradient to the button background
                    // using blue and red colors
                    onPrimary: Colors.white,
                    shadowColor: Colors.black,
                    elevation: 5,
                    textStyle: TextStyle(fontSize: 18),
                    side: BorderSide(
                      width: 2,
                      color: Colors.blue,
                    ),
                    minimumSize: Size(double.infinity, 50),
                    animationDuration: Duration(milliseconds: 100),
                    backgroundColor: null,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.red, Colors.blue],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Text(
                      'Log In',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ),
            ),
            Spacer(flex: 1),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/signup');
                  },
                  style: OutlinedButton.styleFrom(
                    primary: Colors.blue,
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    side: BorderSide(
                      width: 2,
                      color: Colors.blue,
                    ),
                    minimumSize: Size(double.infinity, 50),
                    animationDuration: Duration(milliseconds: 100),
                  ),
                  child: Text(
                    'Sign Up',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ),
            Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
