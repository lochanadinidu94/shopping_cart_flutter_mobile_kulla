import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:kulla_app/login.dart';

class reg extends StatefulWidget {
  String btnName;

  reg(String btnName) {
    this.btnName = btnName;
  }

  @override
  _regState createState() => _regState();
}

class _regState extends State<reg> {
  Size screenSize;
  String btnName = 'back btn';

  TextEditingController WorkPlace = TextEditingController();
  TextEditingController pWordReg = TextEditingController();
  TextEditingController pWordRegVerify = TextEditingController();

  String pWordNotMatch = 'Confirm Password';

  @override
  Widget build(BuildContext context) {
    screenSize = MediaQuery.of(context).size;
    return regA(context);
  }

  Widget regA(context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Container(
            height: 100.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'REGISTER',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24.0,
                      color: Colors.deepOrangeAccent,
                      fontFamily: 'Noteworthy'),
                ),
              ],
            ),
          ),
          Container(
            height: 75.0,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    obscureText: false,
                    autofocus: true,
                    cursorColor: Colors.orange,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Full Name',
                        prefixIcon: Icon(Icons.person)),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 75.0,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    obscureText: false,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Mobile Number',
                        prefixIcon: Icon(Icons.phone)),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 75.0,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    obscureText: false,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Address',
                        prefixIcon: Icon(Icons.my_location)),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 75.0,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    obscureText: false,
                    controller: WorkPlace,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Work Place',
                        prefixIcon: Icon(Icons.work)),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 75.0,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    obscureText: true,
                    controller: pWordReg,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                        prefixIcon: Icon(Icons.security)),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 75.0,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    obscureText: true,
                    controller: pWordRegVerify,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: pWordNotMatch,
                      prefixIcon: Icon(Icons.security),
                    ),
                    onChanged: (_) {
                      if (pWordReg.text == pWordRegVerify.text) {
                        setState(() {
                          pWordNotMatch = 'Confirm Password is matched';
                        });
                      } else {
                        setState(() {
                          pWordNotMatch = 'Confirm Password does not match';
                        });
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                FlatButton(
                  color: Colors.black87,
                  textColor: Colors.orange,
                  disabledColor: Colors.grey,
                  disabledTextColor: Colors.black,
                  padding: EdgeInsets.all(8.0),
                  onPressed: () {},
                  child: Text(
                    'REGISTER',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      fontFamily: 'Noteworthy',
                    ),
                  ),
                ),
                FlatButton(
                  color: Colors.black87,
                  textColor: Colors.orange,
                  disabledColor: Colors.grey,
                  disabledTextColor: Colors.black,
                  padding: EdgeInsets.all(8.0),
                  onPressed: () {
                    Navigator.pop(context, Login());
                  },
                  child: Text('Back',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        fontFamily: 'Noteworthy',
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
