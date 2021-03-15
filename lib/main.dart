import 'package:flutter/material.dart';
import 'package:todo_firebase/auth/authscreen.dart';
import 'package:todo_firebase/screens/home.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AuthScreen(),
      debugShowCheckedModeBanner: false,
      theme:
          ThemeData(brightness: Brightness.dark, primaryColor: Colors.purple),
    );
  }
}
