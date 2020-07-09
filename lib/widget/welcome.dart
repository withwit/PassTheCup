import 'package:flutter/material.dart';

class welcome extends StatefulWidget {
  @override
  _welcomeState createState() => _welcomeState();
}

class _welcomeState extends State<welcome> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50),
      child: Container(
        //color: Colors.green,
        height: 200,
        width: 200,
        child: Column(
          children: <Widget>[
            Container(
              height: 60,
            ),
            Center(
              child: Text(
                'Pass the Cup',
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}