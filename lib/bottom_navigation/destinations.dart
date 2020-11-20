import 'package:flutter/material.dart';

class TopLevelDestination {
  const TopLevelDestination(this.index, this.title, this.icon, this.color);
  final int index;
  final String title;
  final IconData icon;
  final MaterialColor color;
}

const List<TopLevelDestination> allDestinations = <TopLevelDestination>[
  TopLevelDestination(0, 'Home', Icons.home, Colors.lightGreen),
  TopLevelDestination(1, 'Business', Icons.business, Colors.lightGreen),
  TopLevelDestination(2, 'School', Icons.school, Colors.lightGreen),
  TopLevelDestination(3, 'Flight', Icons.flight, Colors.lightGreen)
];
