import 'package:flutter/material.dart';
import 'package:x/widget/button.dart';
import 'package:x/widget/first.dart';
import 'package:x/widget/forgot.dart';
import 'package:x/widget/inputEmail.dart';
import 'package:x/widget/password.dart';
import 'package:x/widget/textLogin.dart';
import 'package:x/widget/verticalText.dart';

import 'lobby.dart';

class Join extends StatefulWidget {
  @override
  _JoinState createState() => _JoinState();
}

class _JoinState extends State<Join> {
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
                Container(
                  height: 300,
                ),
                Padding(
            padding: const EdgeInsets.all(50),
            child: Container(
              height: 60,
              width: MediaQuery.of(context).size.width * 0.4,
              child: TextField(
                style: TextStyle(
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  fillColor: Colors.black,
                  labelText: 'Enter Game ID',
                  labelStyle: TextStyle(
                    color: Colors.white70,
                  ),
                ),
              ),
            ),
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
                          MaterialPageRoute(builder: (context) => Lobby()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'OK',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


