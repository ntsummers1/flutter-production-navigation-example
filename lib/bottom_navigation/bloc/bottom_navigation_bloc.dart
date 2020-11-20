import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
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
      yield CurrentIndexChanged(currentIndex: this.currentIndex);
      yield PageLoading();

      if (this.currentIndex == 0) {
        String data = await _getHomePageData();
        yield HomePageLoaded(text: data);
      }
      if (this.currentIndex == 1) {
        int data = await _getBusinessPageData();
        yield BusinessPageLoaded(number: data);
      }
    }
  }

  Future<String> _getHomePageData() async {
    String data = "First Page";
    return data;
  }

  Future<int> _getBusinessPageData() async {
    int data = 2;
    return data;
  }
}
