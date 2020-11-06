import 'package:flutter/material.dart';
import 'package:kulla_app/mianPage.dart';
import 'package:kulla_app/req.dart';

// ignore: must_be_immutable
class Login extends StatelessWidget {
  Size screenSize;

  TextEditingController uName = TextEditingController();
  TextEditingController pWord = TextEditingController();

  @override
  Widget build(BuildContext context) {
    screenSize = MediaQuery.of(context).size;
    return LoginA(context);
  }

  // ignore: non_constant_identifier_names
  Widget LoginA(context) {
    return Scaffold(
      body: Container(
        height: screenSize.height,
        width: screenSize.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/backLUI.png'),
            fit: BoxFit.cover,
          ),
          shape: BoxShape.rectangle,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 300.0,
              height: 250.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          obscureText: false,
                          controller: uName,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'User Name',
                              prefixIcon: Icon(Icons.verified_user)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          obscureText: true,
                          controller: pWord,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Password',
                              prefixIcon: Icon(Icons.security)),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      FlatButton(
                        color: Colors.black87,
                        textColor: Colors.orange,
                        disabledColor: Colors.grey,
                        disabledTextColor: Colors.black,
                        padding: EdgeInsets.all(8.0),
                        onPressed: () {
                          //MatrialApp Routes Used

                          // Navigator.of(context).pushNamed('/regPage');

                          //Used Main.dart Routes

                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (_) {
                              return loginCheck(context);
                            },
                          ));
                        },
                        child: Text(
                          'LOGIN',
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
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (_) {
                              return reg('Back btn');
                            },
                          ));
                        },
                        child: Text('REGISTER',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              fontFamily: 'Noteworthy',
                            )),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget loginCheck(context) {
    if (uName.text == 'kulla' && pWord.text == '123') {
      Navigator.of(context).push(
        MaterialPageRoute(builder: (_) {
          return HomePage();
        }),
      );
    } else {
      print('The Password is not working properly');
      return Login();
    }
  }
}
