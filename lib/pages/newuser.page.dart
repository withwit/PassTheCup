import 'package:flutter/material.dart';
import 'package:x/widget/buttonNewUser.dart';
import 'package:x/widget/newEmail.dart';
import 'package:x/widget/newName.dart';
import 'package:x/widget/password.dart';
import 'package:x/widget/singup.dart';
import 'package:x/widget/textNew.dart';
import 'package:x/widget/userOld.dart';

import 'login.page.dart';

class NewUser extends StatefulWidget {
  @override
  _NewUserState createState() => _NewUserState();
}

class _NewUserState extends State<NewUser> {
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
                Row(
                  children: <Widget>[
                    SingUp(),
                    TextNew(),
                  ],
                ),
                NewNome(),
                NewEmail(),
                PasswordInput(),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 50, right: 50),
            child: Container(
              height: 60,
              width: MediaQuery.of(context).size.width,
              child: TextField(
                style: TextStyle(
                  color: Colors.white,
                ),
                obscureText: true,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  fillColor: Colors.black,
                  labelText: 'Confirm Password',
                  labelStyle: TextStyle(
                    color: Colors.white70,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40, right: 50, left: 200),
            child: Container(
              alignment: Alignment.bottomRight,
              height: 50,
              width: MediaQuery.of(context).size.width,
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
                      MaterialPageRoute(builder: (context) => LoginPage()));
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
          ),
                UserOld(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
