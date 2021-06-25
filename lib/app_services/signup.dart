import 'package:fan_app/app_services/login.dart';
import 'package:fan_app/user_services/home.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController _firstName = TextEditingController();
  TextEditingController _lastName = TextEditingController();
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
        child: ListView(
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(height: 75),
            Text(
              'Create New Account',
              style: TextStyle(
                fontSize: 40,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Please fill out the form',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 75),
            TextFormField(
              controller: _firstName,
              decoration: InputDecoration(
                labelText: 'First Name',
                labelStyle: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 5),
            TextFormField(
              controller: _lastName,
              decoration: InputDecoration(
                labelText: 'Last Name',
                labelStyle: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 5),
            TextFormField(
              controller: _email,
              decoration: InputDecoration(
                hintText: 'name@email.com',
                hintStyle: TextStyle(
                  color: Colors.white,
                ),
                labelText: 'Email Address',
                labelStyle: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 5),
            TextFormField(
              obscureText: true,
              controller: _password,
              decoration: InputDecoration(
                labelText: 'Password',
                labelStyle: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 50),
            Container(
              height: 45,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  color: Colors.white
              ),
              child: MaterialButton(
                onPressed: (){
                  print('Signup button clicked');
                  //Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                  print(_firstName.text);
                  print(_lastName.text);
                  print(_email.text);
                  print(_password.text);
                },
                child: Text('Signup', style: TextStyle(fontWeight: FontWeight.bold),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}