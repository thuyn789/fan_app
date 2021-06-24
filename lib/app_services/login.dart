import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<LoginPage> {
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
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(height: 100),
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
              SizedBox(height: 10),
              MaterialButton(
                onPressed: (){},
                child: Text('Forgot Password?')
              ),
              SizedBox(height: 15),
              Container(
                height: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  color: Colors.white
                ),
                child: MaterialButton(
                  onPressed: (){},
                  child: Text('Login', style: TextStyle(fontWeight: FontWeight.bold),),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('First Time to Fan App'),
                  MaterialButton(
                      onPressed: (){},
                      child: Text('Register New Account')
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}