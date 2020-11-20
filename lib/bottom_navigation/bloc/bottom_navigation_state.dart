part of 'bottom_navigation_bloc.dart';

abstract class BottomNavigationState extends Equatable {
  const BottomNavigationState();

  @override
  List<Object> get props => [];
}

class PageLoading extends BottomNavigationState {
  @override
  String toString() => 'PageLoading';
}

class HomePageLoaded extends BottomNavigationState {
  final TopLevelDestination destination;

  HomePageLoaded({@required this.destination});

  @override
  String toString() => 'HomePageLoaded';
}

class BusinessPageLoaded extends BottomNavigationState {
  final TopLevelDestination destination;

  BusinessPageLoaded({@required this.destination});

  @override
  String toString() => 'BusinessPageLoaded';
}

class SchoolPageLoaded extends BottomNavigationState {
  final TopLevelDestination destination;

  SchoolPageLoaded({@required this.destination});

  @override
  String toString() => 'SchoolPageLoaded';
}

class FlightPageLoaded extends BottomNavigationState {
  final TopLevelDestination destination;

  FlightPageLoaded({@required this.destination});

  @override
  String toString() => 'FlightPageLoaded';
}
