import 'package:fan_app/app_services/login.dart';
import 'package:fan_app/user_services/user_profile.dart';
import 'package:flutter/material.dart';

import 'add_message.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
        decoration: BoxDecoration(
            color: Colors.lightBlueAccent
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(height: 75),
            Text(
              'Home',
              style: TextStyle(
                fontSize: 40,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Let the epic begin',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 75),
            SizedBox(height: 15),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
      onPressed: (){
        print('Add Message button clicked');
        Navigator.push(context, MaterialPageRoute(builder: (context) => AddMessagePage()));
      },
      tooltip: 'Add Message',
      child: Icon(Icons.add),
      ),
    );
  }
}