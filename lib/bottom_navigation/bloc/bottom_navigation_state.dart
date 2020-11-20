part of 'bottom_navigation_bloc.dart';

abstract class BottomNavigationState extends Equatable {
  const BottomNavigationState();

  @override
  List<Object> get props => [];
}

class CurrentIndexChanged extends BottomNavigationState {
  final int currentIndex;

  CurrentIndexChanged({@required this.currentIndex});

  @override
  String toString() => 'CurrentIndexChanged to $currentIndex';
}

class PageLoading extends BottomNavigationState {
  @override
  String toString() => 'PageLoading';
}

class HomePageLoaded extends BottomNavigationState {
  final String text;
  final TopLevelDestination destination;

  HomePageLoaded({@required this.text, @required this.destination});

  @override
  String toString() => 'HomePageLoaded with text: $text';
}

class BusinessPageLoaded extends BottomNavigationState {
  final int number;
  final TopLevelDestination destination;

  BusinessPageLoaded({@required this.number, @required this.destination});

  @override
  String toString() => 'BusinessPageLoaded with number: $number';
}

class SchoolPageLoaded extends BottomNavigationState {
  final int number;
  final TopLevelDestination destination;

  SchoolPageLoaded({@required this.number, @required this.destination});

  @override
  String toString() => 'SchoolPageLoaded with number: $number';
}

class FlightPageLoaded extends BottomNavigationState {
  final int number;
  final TopLevelDestination destination;

  FlightPageLoaded({@required this.number, @required this.destination});

  @override
  String toString() => 'FlightPageLoaded with number: $number';
}
