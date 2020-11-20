part of 'home_bloc.dart';

abstract class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object> get props => [];
}

class HomeLoading extends HomeState {
  @override
  String toString() => 'HomeLoading';
}

class HomePageLoaded extends HomeState {
  @override
  String toString() => 'HomePageLoaded';
}
