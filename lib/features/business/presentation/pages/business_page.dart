import 'package:flutter/material.dart';

class BusinessPage extends StatelessWidget {
  final int number;

  BusinessPage({this.number}) : super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomePage'),
      ),
      body: Center(
        child: Text('My number is: $number'),
      ),
    );
  }
}
