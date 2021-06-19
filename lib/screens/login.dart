import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  login() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Lottie.network(
            'https://assets6.lottiefiles.com/packages/lf20_x62chJ.json',
            width: 70,
            height: 100,
            fit: BoxFit.fill,
          ),
          content: Text(
            "Logging you in...",
            textAlign: TextAlign.center,
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

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
              controller: emailController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Enter Email'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(28, 10, 28, 20),
            child: TextField(
              controller: passwordController,
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
                login();
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
