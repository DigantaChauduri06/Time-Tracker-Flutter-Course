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
  /*init is used to login the user after also user close the app*/
  void initState() {
    //init state is used to state inisilization when our landing page is inisilizd
    super.initState();
    //below line just triggers when a user is logged in and restats the app. in that time
    //the LandingPage will automattically rebuild with out the signin page.
    _updateUser(FirebaseAuth.instance.currentUser);
  }

  void _updateUser(User user) {
    //Here we call setState to change state because we need to go to the
    // new page after sign in

    /*On the landing page line 16 I am printing print('UID : ${user.uid}'); 
    but because you signed out and passing null here onSignOut: () => _updateUser(null),
     the user is set to null and therefore it does not have a uid property.*/
    print('UID : ${user?.uid}');
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
