import 'package:flutter/material.dart';
import 'package:ngo_scout/features/domain/providers/welcome_provider.dart';
import 'package:ngo_scout/features/presentation/screens/welcome_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => WelcomeProvider(),
      child: MaterialApp(
        title: 'NGO Scout',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: WelcomeScreen(),
      ),
    );
  }
}
