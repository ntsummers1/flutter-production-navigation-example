import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeLoading());

  @override
  Stream<HomeState> mapEventToState(
    HomeEvent event,
  ) async* {
    if (event is HomeStarted) {
      yield HomeLoading();
      await _getFirstPageData();
      yield HomePageLoaded();
    }
  }

  Future<String> _getFirstPageData() async {
    String data = "Hello!";
    return data;
  }
}
