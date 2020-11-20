import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String text;

  HomePage({this.text}) : super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomePage'),
      ),
      body: Center(
        child: Text('My text is: $text'),
      ),
    );
  }
}
