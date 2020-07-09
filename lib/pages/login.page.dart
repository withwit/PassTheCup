import 'package:flutter/material.dart';
import 'package:x/widget/button.dart';
import 'package:x/widget/first.dart';
import 'package:x/widget/forgot.dart';
import 'package:x/widget/inputEmail.dart';
import 'package:x/widget/password.dart';
import 'package:x/widget/textLogin.dart';
import 'package:x/widget/verticalText.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Colors.deepOrange, Colors.white]),
        ),
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Row(children: <Widget>[
                  VerticalText(),
                  TextLogin(),
                ]),
                InputEmail(),
                PasswordInput(),
                ButtonLogin(),
                FirstTime(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


