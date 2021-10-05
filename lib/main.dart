import 'package:flutter/material.dart';
import 'package:store/presentation/routing/app_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final AppRouter appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: appRouter.onGenetratedRouting,
    );
  }
}
