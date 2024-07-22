import 'package:flutter/material.dart';
import 'package:ngo_scout/features/presentation/home_screen.dart';
import 'package:ngo_scout/features/presentation/screens/login_screen.dart';
import 'package:ngo_scout/features/presentation/screens/signup_screen.dart';

final Map<String, WidgetBuilder> routes = {
  '/login': (context) => const LoginScreen(),
  '/signup': (context) => const SignUpScreen(),
  '/home': (context) => const HomeScreen(), // Ensure this route is correct
};
