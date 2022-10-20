import 'package:flutter/material.dart';
import 'package:food_ninja/src/routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: RouteNames.splaceScreen,
      routes: Routes.generateRoutes,
    );
  }
}
