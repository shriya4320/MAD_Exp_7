import 'package:flutter/material.dart';
import 'main_page.dart';
import 'emergency_contacts_page.dart';
import 'my_location_page.dart';
import 'settings_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Women Safety App',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      initialRoute: '/home', // Set the initialRoute to a default route
      routes: {
        '/home': (context) => HomePage(),
        '/emergency': (context) => EmergencyContactsPage(),
        '/location': (context) => MyLocationPage(),
        '/settings': (context) => SettingsPage(),
      },
    );
  }
}


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Women Safety App'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.pink,
              ),
              child: Text(
                'Navigation Panel',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/');
              },
            ),
            ListTile(
              leading: Icon(Icons.contacts),
              title: Text('Emergency Contacts'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/emergency');
              },
            ),
            ListTile(
              leading: Icon(Icons.location_on),
              title: Text('My Location'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/location');
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/settings');
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text('Home Page Content'),
      ),
    );
  }
}
