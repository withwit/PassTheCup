import 'package:flutter/material.dart';
import 'package:x/widget/buttonNewUser.dart';
import 'package:x/widget/newEmail.dart';
import 'package:x/widget/newName.dart';
import 'package:x/widget/password.dart';
import 'package:x/widget/singup.dart';
import 'package:x/widget/textNew.dart';
import 'package:x/widget/userOld.dart';

import 'join.dart';

class GameS extends StatefulWidget {
  @override
  _GameSState createState() => _GameSState();
}

class _GameSState extends State<GameS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Colors.white, Colors.deepOrange]),
        ),
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 30.0, left: 10.0),
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 60,
                      ),
                      Card(
                        child: Container(
                          height: 800,
                          width: 400,
                        ),
                      )
                    ],
                  ),
                ),
                /*
                Row(
                  children: <Widget>[
                    SingUp(),
                    TextNew(),
                  ],
                ),
                NewNome(),
                NewEmail(),
                PasswordInput(),
                ButtonNewUser(),
                UserOld(),
                */
              ],
            ),
          ],
        ),
      ),
    );
  }
}
