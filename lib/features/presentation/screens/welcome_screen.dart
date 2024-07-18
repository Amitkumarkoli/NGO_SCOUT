import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../domain/providers/welcome_provider.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final welcomeProvider = Provider.of<WelcomeProvider>(context);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'welcome to',
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
            SizedBox(
              width: 600,
              height: 400,
              child: Image.asset(
                'assets/images/children_image.png',
                fit: BoxFit.cover,
              ),
            ),
            const Spacer(),
            Center(
              child: SizedBox(
                width: 400,
                height: 60,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green[500], 
                    foregroundColor: Colors.white, 
                  ),
                  onPressed: () {
                    welcomeProvider.updateMessage("Let's Get Started!");
                  },
                  child: const Text(
                    'Get Started',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
