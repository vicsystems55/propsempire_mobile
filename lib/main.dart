import 'package:fgshlb/screens/login.dart';
import 'package:fgshlb/screens/register.dart';
import 'package:fgshlb/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FGSHLB',
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => SplashScreen2(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/login': (context) => Login(),
        '/register': (context) => Register(),
      },
    );
  }
}
