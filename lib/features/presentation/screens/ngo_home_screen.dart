import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NgoHomeScreen extends StatefulWidget {
  const NgoHomeScreen({super.key});

  @override
  _NgoHomeScreenState createState() => _NgoHomeScreenState();
}

class _NgoHomeScreenState extends State<NgoHomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'NGO Home',
            style: GoogleFonts.poppins(),
          ),
        ),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildTopContainer(
                    context,
                    'assets/images/circular_image_4.png',
                    'Reached',
                    '10,000',
                  ),
                  _buildTopContainer(
                    context,
                    'assets/images/circular_image_4.png',
                    'Followers',
                    '5,000',
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Text(
                'Events Attended',
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _buildEventContainer(context, 'Event 1'),
                    _buildEventContainer(context, 'Event 2'),
                    _buildEventContainer(context, 'Event 3'),
                    _buildEventContainer(context, 'Event 4'),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Featured',
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              _buildFeaturedContainer(context, 'Featured Content 1'),
              _buildFeaturedContainer(context, 'Featured Content 2'),
              _buildFeaturedContainer(context, 'Featured Content 3'),
              const SizedBox(height: 20),
              Text(
                'You Can Follow',
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _buildTestimonialContainer(context, 'assets/images/circular_image_4.png'),
                    _buildTestimonialContainer(context, 'assets/images/circular_image_4.png'),
                    _buildTestimonialContainer(context, 'assets/images/circular_image_4.png'),
                    _buildTestimonialContainer(context, 'assets/images/circular_image_4.png'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }

  Widget _buildTopContainer(BuildContext context, String imagePath, String title, String number) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.4,
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage(imagePath),
          ),
          const SizedBox(height: 10),
          Text(
            title,
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            number,
            style: GoogleFonts.poppins(
              fontSize: 16,
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildEventContainer(BuildContext context, String eventName) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      height: 150,
      width: 150,
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Center(
        child: Text(
          eventName,
          style: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget _buildFeaturedContainer(BuildContext context, String content) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      height: 150,
      width: double.infinity,
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Center(
        child: Text(
          content,
          style: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget _buildTestimonialContainer(BuildContext context, String imagePath) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      child: CircleAvatar(
        radius: 40,
        backgroundImage: AssetImage(imagePath),
      ),
    );
  }
}
