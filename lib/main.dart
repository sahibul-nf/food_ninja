import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'src/app.dart';
import 'src/onboarding/providers/onboarding_bloc.dart';

void main() async {
  runApp(
    ChangeNotifierProvider(
      create: (context) => OnboardingBloc(),
      child: const MyApp(),
    ),
  );
}
