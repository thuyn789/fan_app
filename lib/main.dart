import 'package:flutter/material.dart';
import 'package:fan_app/root_services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RootServices(),
    );
  }
}
