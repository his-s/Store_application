import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store/constant/routing.dart';
import 'package:store/logic/cubit/dummy_cubit.dart';
import 'package:store/presentation/core/screens/home_screen/home_screen.dart';

class AppRouter {
  Route? onGenetratedRouting(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case HOME_SCREEN:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (BuildContext context) => DummyCubit(),
            child: const HomeScreen(),
          ),
        );

      default:
    }
  }
}
