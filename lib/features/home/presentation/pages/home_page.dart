import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_production_navigation_example/bottom_navigation/destinations.dart';
import 'package:flutter_production_navigation_example/features/home/presentation/bloc/home_bloc.dart';

class HomePage extends StatelessWidget {
  final TopLevelDestination destination;

  HomePage({this.destination}) : super();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider<HomeBloc>(
        create: (context) => HomeBloc()..add(HomeStarted()),
        child: HomeScreen(),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home"), backgroundColor: Colors.lightGreen),
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (BuildContext context, HomeState state) {
          if (state is HomeLoading) {
            return Center(child: CircularProgressIndicator());
          }
          if (state is HomePageLoaded) {
            return Scaffold(
              body: Center(
                child: Text('Home Page Loaded!'),
              ),
            );
          }
          return Container();
        },
      ),
    );
  }
}
