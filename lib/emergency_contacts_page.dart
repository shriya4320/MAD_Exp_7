import 'package:flutter/material.dart';

class EmergencyContactsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Emergency Contacts'),
      ),
      body: Center(
        child: Text(
          'Emergency Contacts Page Content',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
