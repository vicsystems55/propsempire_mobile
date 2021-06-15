import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.pinkAccent,
          size: 200,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Text('Drawer Header'),
            ),
            Card(
              child: ListTile(
                leading: IconData(Icons.home),
                title: Text('Home'),
              ),
            ),
            Card(
              child: ListTile(
                leading: FlutterLogo(),
                title: Text('My Listings'),
              ),
            ),
            Card(
              child: ListTile(
                leading: FlutterLogo(),
                title: Text('Notifications'),
              ),
            ),
          ],
        ), // Populate the Drawer in the next step.
      ),
    );
  }
}
