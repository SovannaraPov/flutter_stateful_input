import 'package:flutter/material.dart';

import 'MyBodyApp.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App List Programming'),
      ),
      body: SafeArea(
        child: MyBodyApp(),
      ),
    );
  }
}
