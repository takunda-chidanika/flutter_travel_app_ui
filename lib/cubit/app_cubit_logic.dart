import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/cubit/app_cubits.dart';
import 'package:travel_app/screens/home_screen.dart';
import 'package:travel_app/screens/navPages/main_screen.dart';
import 'package:travel_app/screens/welcome_screen.dart';

import 'app_cubit_states.dart';

class AppCubitLogics extends StatefulWidget {
  const AppCubitLogics({super.key});

  @override
  State<AppCubitLogics> createState() => _AppCubitLogicsState();
}

class _AppCubitLogicsState extends State<AppCubitLogics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AppCubits, CubitStates>(
        builder: (context, state) {
          if (state is WelcomeState) {
            return const WelcomeScreen();
          }
          if (state is LoadingState) {
            return const Center(child: CircularProgressIndicator(),);
          }
          if (state is LoadedState) {
            return const MainScreen();
          }
          else {
            return Container();
          }
        },
      ),
    );
  }
}
