import 'package:flutter/material.dart';
import 'package:pomodoro/screens/signup_screen.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SignupScreen());
  }
}
