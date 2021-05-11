import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:timetracker/App/Costom_button.dart/MyButton.dart';

class SignInPage extends StatelessWidget {
  @override
  const SignInPage({Key key, @required this.onSignIn}) : super(key: key);
  final void Function(User) onSignIn;

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 15.0,
          title: Text('Time Tracker App'),
        ),
        body: _buildContainer(),
      ),
    );
  }

  Widget _buildContainer() {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: 50),
              child: Image.asset(
                'Assets/Images/SignIn.png',
                scale: 5.0,
              ),
            ),
            Text(
              'Sign In',
              style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 50,
            ),
            Center(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 7, horizontal: 55.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.grey[300],
                  ),
                  child: InkWell(
                    onTap: _signInWithGoogle,
                    child: Center(
                      child: signInMethods(
                          text: 'Sign in with Google',
                          color: Colors.black87,
                          image: 'Assets/Images/google-logo.png'),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 7, horizontal: 55.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.blue[400],
                  ),
                  child: InkWell(
                    onTap: _signInWithFacebook,
                    child: Center(
                      child: signInMethods(
                          text: 'Sign in with Facebook',
                          color: Colors.white,
                          image: 'Assets/Images/facebook-logo.png'),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 7, horizontal: 55.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.green[900],
                  ),
                  child: InkWell(
                    onTap: _signInWithEmail,
                    child: Center(
                      child: signInMethods(
                        text: 'Sign in with Email',
                        opacityVal: 0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 3,
            ),
            Text('Or'),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 7, horizontal: 55.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.yellow[800],
                  ),
                  child: InkWell(
                    onTap: _signInAnonymously,
                    child: Center(
                      child: signInMethods(
                        text: 'Sign in As Guest',
                        opacityVal: 0,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _signInWithGoogle() {
    // ignore: todo
    //TODO: Auth with Google
  }
  void _signInWithFacebook() {
    // ignore: todo
    //TODO: Auth with Facebook
  }
  void _signInWithEmail() {
    // ignore: todo
    //TODO: Auth with Email
  }
  Future<void> _signInAnonymously() async {
    try {
      final userCredential = await FirebaseAuth.instance.signInAnonymously();
      onSignIn(userCredential.user);
    } catch (e) {
      print(e.toString());
    }
  }
}
