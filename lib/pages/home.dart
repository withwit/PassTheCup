import 'package:flutter/material.dart';
import 'package:x/widget/buttonNewUser.dart';
import 'package:x/widget/newEmail.dart';
import 'package:x/widget/newName.dart';
import 'package:x/widget/password.dart';
import 'package:x/widget/singup.dart';
import 'package:x/widget/textNew.dart';
import 'package:x/widget/userOld.dart';

import 'create.dart';
import 'join.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
                  child: Container(
                    //color: Colors.green,
                    height: 600,
                    width: 300,
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 60,
                        ),
                        Center(
                          child: Text(
                            'Welcome',
                            style: TextStyle(
                              fontSize: 59,
                              color: Colors.black45,
                            ),
                          ),

                        ),
                        Container(
                          height: 20,
                        ),
                        Center(
                          child: Text(
                            '"Username"',
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.black45,
                            ),
                          ),

                        ),
                        Container(
                          height: 10,
                        ),
                        Center(
                          child: Text(
                            'Total Points : 100',
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.black45,
                            ),
                          ),

                        ),
                        Container(
                          height: 25,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 40, right: 50, left: 50),
                          child: Container(
                            alignment: Alignment.bottomRight,
                            height: 50,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black38,
                                  blurRadius:
                                  10.0, // has the effect of softening the shadow
                                  spreadRadius:
                                  1.0, // has the effect of extending the shadow
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
                                    MaterialPageRoute(builder: (context) => Join()));
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    'Join Game',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Icon(
                                    Icons.add,
                                    color: Colors.black,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 40, right: 50, left: 50),
                          child: Container(
                            alignment: Alignment.bottomRight,
                            height: 50,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black38,
                                  blurRadius:
                                  10.0, // has the effect of softening the shadow
                                  spreadRadius:
                                  1.0, // has the effect of extending the shadow
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
                                    MaterialPageRoute(builder: (context) => Create()));
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
                        Container(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 40, right: 50, left: 50),
                          child: Container(
                            alignment: Alignment.bottomRight,
                            height: 50,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black38,
                                  blurRadius:
                                  10.0, // has the effect of softening the shadow
                                  spreadRadius:
                                  1.0, // has the effect of extending the shadow
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
                                    MaterialPageRoute(builder: (context) => Join()));
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    'Invite Friends',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Icon(
                                    Icons.people,
                                    color: Colors.black,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
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
