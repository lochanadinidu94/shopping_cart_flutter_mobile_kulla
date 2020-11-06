import 'package:flutter/material.dart';

class contactUs extends StatelessWidget {
  Size screenSize;

  @override
  Widget build(BuildContext context) {
    screenSize = MediaQuery.of(context).size;
    return Contactus();
  }

  Widget Contactus() {
    return Container(
      height: screenSize.height,
      width: screenSize.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/backCU.png'),
          fit: BoxFit.cover,
        ),
        shape: BoxShape.rectangle,
      ),
    );
  }
}
