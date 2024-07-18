import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'core/routes/app_routes.dart';
import 'core/theme/app_theme.dart';
import 'features/domain/providers/welcome_provider.dart';
import 'features/presentation/screens/welcome_screen.dart';

void main() {
  runApp(const NGOConnectApp());
}

class NGOConnectApp extends StatelessWidget {
  const NGOConnectApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => WelcomeProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'NGO Connect',
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        initialRoute: AppRoutes.welcome,
        routes: {
          AppRoutes.welcome: (context) => const WelcomeScreen(),
        },
      ),
    );
  }
}
