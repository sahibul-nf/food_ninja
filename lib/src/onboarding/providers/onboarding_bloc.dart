import 'package:flutter/material.dart';

class OnboardingBloc with ChangeNotifier {
  final PageController pageController = PageController();
  int _currentPage = 0;
  int get currentPage => _currentPage;

  void nextPage() {
    pageController.nextPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeIn,
    );

    _currentPage++;
  }

  void previousPage() {
    pageController.previousPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeIn,
    );

    _currentPage--;
  }
}
