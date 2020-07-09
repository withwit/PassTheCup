import 'package:flutter/material.dart';
import 'package:x/pages/lobby.dart';
import 'package:x/widget/buttonNewUser.dart';
import 'package:x/widget/newEmail.dart';
import 'package:x/widget/newName.dart';
import 'package:x/widget/password.dart';
import 'package:x/widget/singup.dart';
import 'package:x/widget/textNew.dart';
import 'package:x/widget/userOld.dart';

import 'gamescreen.dart';
import 'login.page.dart';

class Create extends StatefulWidget {
  @override
  _CreateState createState() => _CreateState();
}

class _CreateState extends State<Create> {
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
                Container(
                  height: 180,
                ),
                Center(
                  child: Text(
                    'Create Game',
                    style: TextStyle(
                      fontSize: 50,
                      color: Colors.black45,
                    ),
                  ),

                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50, left: 50, right: 50),
                  child: Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width,
                    child: TextField(
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        fillColor: Colors.lightBlueAccent,
                        labelText: 'Pick Season',
                        labelStyle: TextStyle(
                          color: Colors.white70,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 0, left: 50, right: 50),
                  child: Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width,
                    child: TextField(
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        fillColor: Colors.lightBlueAccent,
                        labelText: 'Pick Team',
                        labelStyle: TextStyle(
                          color: Colors.white70,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 0, left: 50, right: 50),
                  child: Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width,
                    child: TextField(
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        fillColor: Colors.lightBlueAccent,
                        labelText: 'Pick Game',
                        labelStyle: TextStyle(
                          color: Colors.white70,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    alignment: Alignment.bottomRight,
                    height: 50,
                    width: MediaQuery.of(context).size.width*0.4,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black38,
                            blurRadius: 10.0, // has the effect of softening the shadow
                            spreadRadius: 1.0, // has the effect of extending the shadow
                            offset: Offset(
                              5.0, // horizontal, move right 10
                              5.0, // vertical, move down 10
                            ),
                          ),
                        ],
                        color: Colors.white, borderRadius: BorderRadius.circular(30)),
                    child: FlatButton(
                      onPressed: (){
                        //  Navigator.pop(context);
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Lobby()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Create Game',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Icon(
                            Icons.create,
                            color: Colors.black,
                          ),
                        ],
                      ),
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
