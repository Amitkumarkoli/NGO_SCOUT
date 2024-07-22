import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:ngo_scout/core/providers/welcome_provider.dart';
import 'package:ngo_scout/features/presentation/home_screen.dart';
import 'package:ngo_scout/features/presentation/screens/scrollable_content_screen.dart';
import 'package:ngo_scout/features/presentation/screens/welcome_screen.dart';
import 'package:ngo_scout/features/presentation/screens/login_screen.dart';
import 'package:ngo_scout/features/presentation/screens/signup_screen.dart';
import 'package:provider/provider.dart';
import 'domain/providers/auth_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => WelcomeProvider()),
        ChangeNotifierProvider(create: (_) => AuthProvider()),
      ],
      child: MaterialApp(
        title: 'NGO Scout',
        initialRoute: '/',
        routes: {
          '/': (context) => const WelcomeScreen(),
          '/new_content': (context) => const NewContentScreen(),
          '/login': (context) => const LoginScreen(),
          '/signup': (context) => const SignUpScreen(),
          '/home': (context) => const HomeScreen(),
        },
      ),
    );
  }
}
