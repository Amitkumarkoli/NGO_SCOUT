
import 'package:flutter/material.dart';
import 'package:ngo_scout/core/providers/welcome_provider.dart';
import 'package:provider/provider.dart';
import 'features/presentation/screens/welcome_screen.dart';
import 'features/presentation/screens/login_screen.dart';
import 'features/presentation/screens/signup_screen.dart';
import 'features/presentation/screens/scrollable_content_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
          '/': (context) => const WelcomeScreen(),
          '/newContent': (context) => const NewContentScreen(),
          '/login': (context) => const LoginScreen(),
          '/signup': (context) => const SignUpScreen(),
        },
      ),
    );
  }
}
