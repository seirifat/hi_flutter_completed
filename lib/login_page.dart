import 'package:flutter/material.dart';
import 'main_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildMainBody(context),
    );
  }

  // METHODS

  Widget _buildMainBody(BuildContext context) {
    // TODO: BUILD_LOGIN_MAIN_BODY
    return SafeArea(
      child: Center(
        child: ListView(
          physics: ClampingScrollPhysics(), // Disable Bounce on iOS
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            _buildLogo(),
            SizedBox(height: 48.0),
            _buildEmailTexField(),
            SizedBox(height: 16.0),
            _buildPasswordTexField(),
            SizedBox(height: 32.0),
            _buildLoginButton(context),
            SizedBox(height: 16.0),
            FlatButton(child: Text('Forgot password?'), onPressed: () {})
          ],
        ),
      ),
    );
  }

  Widget _buildLogo() {
    // TODO: BUILD_LOGIN_IMAGE
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        CircleAvatar(
          radius: 72.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('lib/images/img_logo.png'),
        )
      ],
    );
  }

  Widget _buildEmailTexField() {
    // TODO: BUILD_EMAIL_TEXTFIELD
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.mail_outline, size: 22),
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32),
        ),
        hintText: 'Email',
      ),
    );
  }

  Widget _buildPasswordTexField() {
    // TODO: BUILD_PASSWORD_TEXTFIELD
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.lock, size: 22),
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32)),
        hintText: 'Password',
      ),
    );
  }

  Widget _buildLoginButton(BuildContext context) {
    // TODO: BUILD_LOGIN_BUTTON
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: MaterialButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        elevation: 5.0,
        minWidth: 20.0,
        height: 44.0,
        onPressed: () {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) => MainPage(),
              fullscreenDialog: true,
            ),
          );
        },
        color: Theme.of(context).primaryColor,
        child: Text('Login', style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
