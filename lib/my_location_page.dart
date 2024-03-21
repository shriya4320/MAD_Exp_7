import 'package:flutter/material.dart';

class MyLocationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Location'),
      ),
      body: Center(
        child: Text(
          'My Location Page Content',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
