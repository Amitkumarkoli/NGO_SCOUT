import 'package:flutter/material.dart';

class NgoProfilePage extends StatefulWidget {
  @override
  _NgoProfilePageState createState() => _NgoProfilePageState();
}

class _NgoProfilePageState extends State<NgoProfilePage> {
  final _ngoNameController = TextEditingController(text: 'My NGO');
  final _emailController = TextEditingController(text: 'ngo@example.com');
  final _passwordController = TextEditingController(text: '••••••••');
  final _locationController = TextEditingController(text: 'Location details here');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Image.asset(
              'assets/images/volunteer.jpg', // Replace with your background image path
              fit: BoxFit.cover,
            ),
          ),
          // Circular Profile Image
          Positioned(
            top: MediaQuery.of(context).size.height * 0.2,
            left: MediaQuery.of(context).size.width * 0.5 - 75, // Center horizontally
            child: CircleAvatar(
              radius: 75,
              backgroundImage: AssetImage('assets/images/volunteer.jpg'), // Replace with your profile image path
              backgroundColor: Colors.transparent,
            ),
          ),
          // Content
          Positioned(
            top: MediaQuery.of(context).size.height * 0.4,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(24.0)),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Ngo Name',
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    TextFormField(
                      controller: _ngoNameController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter NGO Name',
                      ),
                    ),
                    SizedBox(height: 16.0),
                    Text(
                      'Email',
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    TextFormField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter Email',
                      ),
                    ),
                    SizedBox(height: 16.0),
                    Text(
                      'Password',
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    TextFormField(
                      controller: _passwordController,
                      obscureText: true, // Mask the password input
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter Password',
                      ),
                    ),
                    SizedBox(height: 16.0),
                    // Change Password Button
                    ElevatedButton(
                      onPressed: () {
                        // Handle change password action
                        print('Change Password');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black, // Black color
                        minimumSize: Size(double.infinity, 60), // Full width and fixed height
                      ),
                      child: Text('Change Password'),
                    ),
                    SizedBox(height: 16.0),
                    Text(
                      'Location',
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    TextFormField(
                      controller: _locationController,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.location_on), // Location icon
                        border: OutlineInputBorder(),
                        hintText: 'Enter Location',
                      ),
                    ),
                    SizedBox(height: 16.0),
                    // Save Button
                    ElevatedButton(
                      onPressed: () {
                        // Handle save action
                        print('NGO Name: ${_ngoNameController.text}');
                        print('Email: ${_emailController.text}');
                        print('Password: ${_passwordController.text}');
                        print('Location: ${_locationController.text}');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green, // Green color
                        minimumSize: Size(double.infinity, 60), // Full width and fixed height
                      ),
                      child: Text('Save'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
