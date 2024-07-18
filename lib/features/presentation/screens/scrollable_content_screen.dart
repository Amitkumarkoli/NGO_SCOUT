import 'package:flutter/material.dart';

class ContentScreen extends StatelessWidget {
  const ContentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/images/children_image.png'),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'This is the content screen with images and text.',
                style: TextStyle(fontSize: 18),
              ),
            ),
            // Add more content as needed
          ],
        ),
      ),
    );
  }
}
