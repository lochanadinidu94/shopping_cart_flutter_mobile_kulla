import 'package:flutter/material.dart';

class myProfile extends StatelessWidget {
  Size screenSize;

  @override
  Widget build(BuildContext context) {
    screenSize = MediaQuery.of(context).size;
    return Profile();
  }

  Widget Profile() {
    return Container(
      height: screenSize.height,
      width: screenSize.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/backMP.png'),
          fit: BoxFit.cover,
        ),
        shape: BoxShape.rectangle,
      ),
    );
  }
}
