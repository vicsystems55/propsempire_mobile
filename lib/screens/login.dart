import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(28, 10, 28, 70),
            child: Image.asset('assets/images/logo.png'),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(28, 10, 28, 10),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Enter Email'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(28, 10, 28, 20),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Enter Password'),
            ),
          ),
          ElevatedButton(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(125, 20, 125, 20),
                child: Text('Login'),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.red, // set the background color
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              }),
          Padding(
            padding: const EdgeInsets.fromLTRB(28, 10, 28, 20),
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/register');
              },
              child: Text(
                "Don't have an account?", //title
                textAlign: TextAlign.end, //aligment
              ),
            ),
          ),
        ],
      )),
    );
  }
}
