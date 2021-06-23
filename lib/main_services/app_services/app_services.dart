import 'package:fan_app/main_services/app_services/login.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AppServices extends StatefulWidget {
  @override
  _AppServicesState createState() => _AppServicesState();
}

class _AppServicesState extends State<AppServices> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: LoginPage(),
    );
  }
}