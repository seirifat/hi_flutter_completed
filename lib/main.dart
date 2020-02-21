import 'package:flutter/material.dart';

import 'login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hi Flutter',
      theme: ThemeData(primaryColor: Color(0xFFEC6227)),
      home: LoginPage(),
    );
  }
}