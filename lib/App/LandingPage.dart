import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:timetracker/App/homePage.dart';
import 'Pages/sign_in/signin.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  User _user;
  void _updateUser(User user) {
    //Here we call setState to change state because we need to go to the
    // new page after sign in
    print('UID : ${user.uid}');
    setState(
      () {
        _user = user;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    if (_user == null)
      return SignInPage(
        onSignIn: _updateUser, //(user) => _updateUser(user);
      );
    return HomePage(
      onSignOut: () => _updateUser(null),
    );
  }
}
