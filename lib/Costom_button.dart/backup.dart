import 'package:flutter/material.dart';
import 'package:timetracker/Costom_button.dart/MyButton.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 15.0,
        title: Text('Time Tracker App'),
      ),
      body: _buildContainer(),
    );
  }

  Widget _buildContainer() {
    return Container(
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
                  image: DecorationImage(
                    image: AssetImage('Assets/Images/google-logo.png'),
                  ),
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.grey[300],
                ),
                child: InkWell(
                  onTap: _signInWithGoogle,
                  child: Center(
                    child: signInMethods(
                        text: 'Sign in with Google', color: Colors.black87),
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
                        text: 'Sign in with Facebook', color: Colors.white),
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
                        text: 'Sign in with Facebook', color: Colors.white),
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
                  onTap: () {},
                  child: Center(
                    child: signInMethods(
                        text: 'Sign in with Email', color: Colors.black87),
                  ),
                ),
              ),
            ),
          ),
          // Image.asset('Assets/Images/google-logo.png'),
        ],
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
}
