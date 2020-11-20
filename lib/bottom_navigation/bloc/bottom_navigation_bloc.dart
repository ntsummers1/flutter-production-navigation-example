import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_production_navigation_example/bottom_navigation/destinations.dart';
import 'package:meta/meta.dart';

part 'bottom_navigation_event.dart';
part 'bottom_navigation_state.dart';

class BottomNavigationBloc
    extends Bloc<BottomNavigationEvent, BottomNavigationState> {
  BottomNavigationBloc() : super(PageLoading());

  int currentIndex = 0;

  @override
  Stream<BottomNavigationState> mapEventToState(
      BottomNavigationEvent event) async* {
    if (event is AppStarted) {
      this.add(PageTapped(index: this.currentIndex));
    }
    if (event is PageTapped) {
      this.currentIndex = event.index;
      yield PageLoading();

      if (this.currentIndex == 0) {
        yield HomePageLoaded(
          destination: allDestinations[this.currentIndex],
        );
      }
      if (this.currentIndex == 1) {
        yield BusinessPageLoaded(
          destination: allDestinations[this.currentIndex],
        );
      }
      if (this.currentIndex == 2) {
        yield SchoolPageLoaded(
          destination: allDestinations[this.currentIndex],
        );
      }
      if (this.currentIndex == 3) {
        yield FlightPageLoaded(
          destination: allDestinations[this.currentIndex],
        );
      }
    }
  }
}
