import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home', style: GoogleFonts.poppins()),
      ),
      body: Center(
        child: Text(
          'Welcome to the Home Screen!',
          style: GoogleFonts.poppins(fontSize: 24),
        ),
      ),
    );
  }
}
