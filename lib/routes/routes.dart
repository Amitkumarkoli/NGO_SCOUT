import 'package:flutter/material.dart';
import 'package:ngo_scout/features/presentation/screens/login_screen.dart';
import 'package:ngo_scout/features/presentation/screens/people_home_screen';
import 'package:ngo_scout/features/presentation/screens/signup_screen.dart';
import 'package:ngo_scout/features/presentation/screens/scrollable_content_screen.dart';
import 'package:ngo_scout/features/presentation/screens/ngo_home_screen.dart';  // Add this import
import 'package:ngo_scout/features/presentation/screens/welcome_screen.dart';

class AppRoutes {
  static const String welcome = '/';
  static const String scrollable = '/scrollable';
  static const String login = '/login';
  static const String signup = '/signup';
  static const String home = '/home';
  static const String ngoHome = '/ngo_home';    // Add this route
  static const String peopleHome = '/people_home'; // Add this route

  static Map<String, WidgetBuilder> routes = {
    welcome: (context) => const WelcomeScreen(),
    login: (context) => const LoginScreen(),
    signup: (context) => const SignUpScreen(),
    scrollable: (context) => const NewContentScreen(),
    ngoHome: (context) => const NgoHomeScreen(),  // Add this route
    peopleHome: (context) => const PeopleHomeScreen(), // Add this route
  };
}
