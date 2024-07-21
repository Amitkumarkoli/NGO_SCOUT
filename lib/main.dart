// lib/main.dart
import 'package:flutter/material.dart';
import 'package:ngo_scout/core/providers/welcome_provider.dart';
import 'package:provider/provider.dart';
import 'features/presentation/screens/welcome_screen.dart';
import 'features/presentation/screens/login_screen.dart';
import 'features/presentation/screens/signup_screen.dart';
import 'features/presentation/screens/scrollable_content_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => WelcomeProvider()),
      ],
      child: MaterialApp(
        title: 'NGO Scout',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => WelcomeScreen(),
          '/newContent': (context) => NewContentScreen(),
          '/login': (context) => LoginScreen(),
          '/signup': (context) => SignUpScreen(),
        },
      ),
    );
  }
}
