import 'package:flutter/material.dart';
import 'package:kulla_app/contactus.dart';
import 'package:kulla_app/login.dart';
import 'package:kulla_app/myprofile.dart';
import 'package:kulla_app/products.dart';
import 'package:kulla_app/pvorders.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            leading: Text(''),
            // title: Text(
            //   'KULLA PRODUCTIONS',
            //   style: TextStyle(
            //     color: Colors.black,
            //     fontSize: 18.0,
            //   ),
            // ),
            actions: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.shopping_cart,
                  color: Colors.blue,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.notifications,
                  color: Colors.blue,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.lock_open,
                  color: Colors.red,
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) {
                      return Login();
                    },
                  ));
                },
              ),
            ],
            flexibleSpace: Image.asset(
              'images/back2.png',
              fit: BoxFit.cover,
            ),
          ),
          bottomNavigationBar: TabBar(
            unselectedLabelColor: Colors.orange,
            labelColor: Colors.blue,
            tabs: [
              Tab(icon: Icon(Icons.shop), text: 'Products'),
              Tab(icon: Icon(Icons.shopping_basket), text: 'History'),
              Tab(icon: Icon(Icons.supervised_user_circle), text: 'Profile'),
              Tab(icon: Icon(Icons.contacts), text: 'Contact Us'),
            ],
          ),
          body: TabBarView(children: [
            Products(),
            pvOrder(),
            myProfile(),
            contactUs(),
          ]),
        ),
      ),
    );
  }
}
