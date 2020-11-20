import 'package:flutter/material.dart';
import 'package:flutter_production_navigation_example/bottom_navigation/destinations.dart';

class SchoolPage extends StatelessWidget {
  final int number;
  final TopLevelDestination destination;

  SchoolPage({this.number, this.destination}) : super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(destination.title),
        backgroundColor: destination.color,
      ),
      body: Center(
        child: Text('My number is: $number'),
      ),
    );
  }
}
