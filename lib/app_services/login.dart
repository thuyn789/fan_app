import 'package:fan_app/app_services/signup.dart';
import 'package:fan_app/user_services/home.dart';
import 'package:flutter/material.dart';

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
        child: ListView(
          children: <Widget>[
            SizedBox(height: 75),
            Text(
              'Welcome',
              style: TextStyle(
                fontSize: 40,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Please login to continue',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 75),
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
              onPressed: (){
                print('Forgot button clicked');
              },
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
                onPressed: () async{
                  //print('Login button clicked');
                  //bool sucessful = await AuthServices().login(_email.text, _password.text);
                  print(_email.text);
                  print(_password.text);
                  bool sucessful = true;
                  if(sucessful){
                    print('Congrats');
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                  }else{
                    print('Login unsuccessful');
                  }
                },
                child: Text('Login', style: TextStyle(fontWeight: FontWeight.bold),),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text('First Time to Fan App?'),
                MaterialButton(
                    onPressed: (){
                      print('Signup button clicked');
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpPage()));
                    },
                    child: Text('Create New Account')
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}