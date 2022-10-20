import 'package:flutter/material.dart';
import 'package:food_ninja/src/auth/pages/payment_method_page.dart';
import 'package:food_ninja/src/auth/pages/set_location_page.dart';
import 'package:food_ninja/src/auth/pages/signin_page.dart';
import 'package:food_ninja/src/auth/pages/signup_process_page.dart';
import 'package:food_ninja/src/auth/pages/upload_photo_page.dart';
import 'package:food_ninja/src/onboarding/pages/splace_screen.dart';

import 'auth/pages/signup_page.dart';
import 'onboarding/pages/onboarding_screen.dart';

class RouteNames {
  static const String splaceScreen = '/splace-screen';
  static const String onboarding = '/onboarding';
  static const String home = '/';
  static const String login = '/login';
  static const String signup = '/signup';
  static const String signupProcess = '/signup-process';
  static const String paymentMethod = '/payment-method';
  static const String uploadPhoto = '/upload-photo';
  static const String setLocation = '/set-location';
  static const String success = '/success';
  static const String forgotPassword = '/forgot-password';
  static const String resetPassword = '/reset-password';
  static const String profile = '/profile';
  static const String settings = '/settings';
  static const String about = '/about';
  static const String contact = '/contact';
  static const String privacyPolicy = '/privacy-policy';
  static const String termsOfService = '/terms-of-service';
  static const String notFound = '/not-found';
  static const String serverError = '/server-error';
}

class Routes {
  static Map<String, WidgetBuilder> get generateRoutes => {
        RouteNames.splaceScreen: (context) => const SplaceScreen(),
        RouteNames.onboarding: (context) => OnboardingScreen(),
        RouteNames.signup: (context) => const SignUpPage(),
        RouteNames.signupProcess: (context) => const SignUpProcessPage(),
        RouteNames.paymentMethod: (context) => const PaymentMethodPage(),
        RouteNames.uploadPhoto: (context) => const UploadPhotoPage(),
        RouteNames.setLocation: (context) => const SetLocationPage(),
        RouteNames.login: (context) => const SignInPage(),
        // RouteNames.home: (context) => const HomeScreen(),
        // RouteNames.forgotPassword: (context) => const ForgotPasswordScreen(),
        // RouteNames.resetPassword: (context) => const ResetPasswordScreen(),
        // RouteNames.profile: (context) => const ProfileScreen(),
        // RouteNames.settings: (context) => const SettingsScreen(),
        // RouteNames.about: (context) => const AboutScreen(),
        // RouteNames.contact: (context) => const ContactScreen(),
        // RouteNames.privacyPolicy: (context) => const PrivacyPolicyScreen(),
        // RouteNames.termsOfService: (context) => const TermsOfServiceScreen(),
        // RouteNames.notFound: (context) => const NotFoundScreen(),
        // RouteNames.serverError: (context) => const ServerErrorScreen(),
      };
}
