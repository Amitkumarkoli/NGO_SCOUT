import 'package:flutter/material.dart';
import 'package:ngo_scout/features/presentation/screens/scrollable_content_screen.dart';
import 'package:provider/provider.dart';
import 'package:ngo_scout/core/providers/welcome_provider.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      Provider.of<WelcomeProvider>(context, listen: false).showNewScreen();
    });
  }

  @override
  Widget build(BuildContext context) {
    final welcomeProvider = Provider.of<WelcomeProvider>(context);

    return Scaffold(
      body: Stack(
        children: [
          if (!welcomeProvider.showNewContent) ...[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Welcome to',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.lightGreen,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Center(
                    child: Text(
                      'NGO SCOUT',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.green[500],
                      ),
                    ),
                  ),
                  const SizedBox(height: 6),
                  const Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Discover, Connect, Impact',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Colors.lightGreen,
                      ),
                    ),
                  ),
                  const Spacer(),
                  Center(
                    child: SizedBox(
                      width: 700,
                      height: 400,
                      child: Image.asset(
                        'assets/images/children_image.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const Spacer(),
                ],
              ),
            ),
          ] else
            const NewContentScreen(),
          Positioned(
            bottom: 30,
            left: 0,
            right: 0,
            child: Center(
              child: SizedBox(
                width: 300,
                height: 60,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green[500],
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  child: const Text(
                    'Get Started',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
