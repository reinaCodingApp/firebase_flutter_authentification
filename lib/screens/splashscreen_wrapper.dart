import 'package:flutter/material.dart';
import 'package:firebase_chat_app/models/user.dart';
import 'package:firebase_chat_app/screens/authenticate/authenticate_screen.dart';
import 'package:firebase_chat_app/screens/home/home_screen.dart';
import 'package:provider/provider.dart';

class SplashScreenWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<AppUser?>(context);
    if (user == null) {
      return AuthenticateScreen();
    } else {
      return HomeScreen();
    }
  }
}
