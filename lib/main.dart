import 'package:flutter/material.dart';
import 'package:chat_app/screens/welcome_screen.dart';

void main() => runApp(ChatApp());

class ChatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.black),
        ),
      ),
      initialRoute: '/',
      routes: {'/': (context) => WelcomeScreen()},
    );
  }
}
