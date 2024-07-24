import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:ngo_scout/core/providers/welcome_provider.dart';
import 'package:ngo_scout/domain/providers/auth_provider.dart';
import 'package:ngo_scout/features/presentation/screens/home_screen.dart';
import 'package:ngo_scout/features/presentation/screens/people_home_screen';
import 'package:ngo_scout/features/presentation/screens/scrollable_content_screen.dart';
import 'package:ngo_scout/features/presentation/screens/welcome_screen.dart';
import 'package:ngo_scout/features/presentation/screens/login_screen.dart';
import 'package:ngo_scout/features/presentation/screens/signup_screen.dart';
import 'package:ngo_scout/features/presentation/screens/ngo_home_screen.dart';  // Import for NGO home
import 'package:ngo_scout/routes/routes.dart';
import 'package:provider/provider.dart';

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
      child: const MaterialApp(
        title: 'NGO Scout',
        // initialRoute: AppRoutes.welcome,
        // routes: AppRoutes.routes, // Use the routes from your routes file
        home: PeopleHomeScreen(),
      ),
    );
  }
}
