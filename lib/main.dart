import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_production_navigation_example/features/home/presentation/pages/home_page.dart';

import 'bottom_navigation/bloc/bottom_navigation_bloc.dart';
import 'features/business/presentation/pages/business_page.dart';

void main() {
  runApp(MaterialApp(home: App()));
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider<BottomNavigationBloc>(
        create: (context) => BottomNavigationBloc()..add(AppStarted()),
        child: AppScreen(),
      ),
    );
  }
}

class AppScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<BottomNavigationBloc, BottomNavigationState>(
        builder: (BuildContext context, BottomNavigationState state) {
          if (state is PageLoading) {
            return Center(child: CircularProgressIndicator());
          }
          if (state is HomePageLoaded) {
            return HomePage(text: state.text);
          }
          if (state is BusinessPageLoaded) {
            return BusinessPage(number: state.number);
          }
          return Container();
        },
      ),
      bottomNavigationBar:
          BlocBuilder<BottomNavigationBloc, BottomNavigationState>(
              builder: (BuildContext context, BottomNavigationState state) {
        return BottomNavigationBar(
          currentIndex:
              context.select((BottomNavigationBloc bloc) => bloc.currentIndex),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.black),
              label: 'First',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.all_inclusive, color: Colors.black),
              label: 'Second',
            ),
          ],
          onTap: (index) => context
              .read<BottomNavigationBloc>()
              .add(PageTapped(index: index)),
        );
      }),
    );
  }
}
