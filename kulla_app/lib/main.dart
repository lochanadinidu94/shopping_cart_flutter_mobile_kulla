import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:kulla_app/login.dart';
import 'package:kulla_app/mianPage.dart';
import 'package:kulla_app/req.dart';

void main() => runApp(
      MyApp2(),
    );

class MyApp2 extends StatefulWidget {
  @override
  _MyApp2State createState() => _MyApp2State();
}

class _MyApp2State extends State<MyApp2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kulla Productions',
      home: Login(),
      routes: <String, WidgetBuilder>{
        '/regPage': (context) => reg('Back Btn'),
        '/loginPage': (context) => Login(),
      },
    );
  }
}
