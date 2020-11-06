import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  Size screenSize;

  int count = 0;

  @override
  Widget build(BuildContext context) {
    screenSize = MediaQuery.of(context).size;
    return ProductsA();
  }

  // ignore: non_constant_identifier_names
  Widget ProductsA() {
    return Container(
      child: Column(
        children: <Widget>[
          Text(
            'All Products: $count',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                color: Colors.deepOrangeAccent,
                fontFamily: 'Noteworthy'),
          ),
          FlatButton(
            color: Colors.blue,
            textColor: Colors.white,
            disabledColor: Colors.grey,
            disabledTextColor: Colors.black,
            padding: EdgeInsets.all(8.0),
            splashColor: Colors.blueAccent,
            hoverColor: Colors.orange,
            onPressed: incressNo,
            child: Text('Reg'),
          ),
        ],
      ),
    );
  }

  void incressNo() {
    setState(() {
      count = count + 1;
      AlertDialog(
        title: Text("My title"),
        content: Text("This is my message."),
        actions: [],
      );
    });
  }
}
