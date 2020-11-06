import 'package:flutter/material.dart';

class pvOrder extends StatelessWidget {
  Size screenSize;

  @override
  Widget build(BuildContext context) {
    screenSize = MediaQuery.of(context).size;
    return PreviousOrder();
  }

  Widget PreviousOrder() {
    return Container(
      height: screenSize.height,
      width: screenSize.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/backPO.png'),
          fit: BoxFit.cover,
        ),
        shape: BoxShape.rectangle,
      ),
    );
  }
}
