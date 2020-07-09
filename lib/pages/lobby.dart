import 'package:flutter/material.dart';
import 'package:x/widget/buttonNewUser.dart';
import 'package:x/widget/newEmail.dart';
import 'package:x/widget/newName.dart';
import 'package:x/widget/password.dart';
import 'package:x/widget/singup.dart';
import 'package:x/widget/textNew.dart';
import 'package:x/widget/userOld.dart';

import 'gamescreen.dart';
import 'join.dart';

class Lobby extends StatefulWidget {
  @override
  _LobbyState createState() => _LobbyState();
}

class _LobbyState extends State<Lobby> {
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
                      Center(
                        child: Text(
                          'Game Lobby',
                          style: TextStyle(
                            fontSize: 50,
                            color: Colors.black45,
                          ),
                        ),

                      ),
                      Container(
                        height: 20,
                      ),
                      Card(
                        child: Container(
                          height: 250,
                          width: 400,
                        ),
                      ),
                      Card(
                        child: Container(
                          height: 150,
                          width: 400,
                        ),
                      ),
                      Card(
                        child: Container(
                          height: 300,
                          width: 400,
                        ),
                      ),
                      Container(
                        height: 10,
                      ),
                      Container(
                        alignment: Alignment.bottomRight,
                        height: 50,
                        width: MediaQuery.of(context).size.width * 0.4,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black,
                              blurRadius: 10.0, // has the effect of softening the shadow
                              spreadRadius: 1.0, // has the effect of extending the shadow
                              offset: Offset(
                                5.0, // horizontal, move right 10
                                5.0, // vertical, move down 10
                              ),
                            ),
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: FlatButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => GameS()));
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'Start Game',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
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
