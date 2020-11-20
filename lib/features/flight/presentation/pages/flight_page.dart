import 'package:flutter/material.dart';
import 'package:flutter_production_navigation_example/bottom_navigation/destinations.dart';

class FlightPage extends StatelessWidget {
  final int number;
  final TopLevelDestination destination;

  FlightPage({this.number, this.destination}) : super();

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
