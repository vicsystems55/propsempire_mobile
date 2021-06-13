import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(28, 10, 28, 50),
            child: Image.asset('assets/images/logo.png'),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(28, 10, 28, 10),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Enter Fullname'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(28, 10, 28, 10),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Enter Email'),
            ),
          ),
          Padding(
              padding: const EdgeInsets.fromLTRB(28, 10, 28, 10),
              child: DropdownButton<String>(
                hint: Text('Select account type'),
                isExpanded: true,
                items:
                    <String>['Agent', 'Vendor', 'Agency'].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: new Text(value),
                  );
                }).toList(),
                onChanged: (_) {},
              )),
          Padding(
            padding: const EdgeInsets.fromLTRB(28, 10, 28, 10),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Enter Password'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(28, 10, 28, 20),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Confirm Password'),
            ),
          ),
          ElevatedButton(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(120, 20, 120, 20),
                child: Text('Register'),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.red, // set the background color
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              }),
          Padding(
            padding: const EdgeInsets.fromLTRB(28, 10, 28, 20),
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
              child: Text(
                "Already have an account?", //title
                textAlign: TextAlign.end, //aligment
              ),
            ),
          ),
        ],
      )),
    );
  }
}
