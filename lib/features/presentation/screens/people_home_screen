import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PeopleHomeScreen extends StatefulWidget {
  const PeopleHomeScreen({super.key});

  @override
  _PeopleHomeScreenState createState() => _PeopleHomeScreenState();
}

class _PeopleHomeScreenState extends State<PeopleHomeScreen> {
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
            'People Home',
            style: GoogleFonts.poppins(),
          ),
        ),
        backgroundColor: Colors.blue,
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
                    '120 events hosted',
                    '120',
                    'in the last 90 days',
                  ),
                  _buildTopContainer(
                    context,
                    'assets/images/circular_image_4.png',
                    '1K followers',
                    '1K',
                    '',
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Text(
                'Events Hosted',
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
                    _buildEventContainer(
                      context,
                      'Event 1',
                      'assets/images/volunteer.jpg',
                      true,
                      [
                        'assets/images/circular_image_4.png',
                        'assets/images/circular_image_4.png'
                      ],
                      250,
                    ),
                    _buildEventContainer(
                      context,
                      'Event 2',
                      'assets/images/volunteer.jpg',
                      false,
                      [
                        'assets/images/circular_image_4.png',
                        'assets/images/circular_image_4.png'
                      ],
                      180,
                    ),
                    _buildEventContainer(
                      context,
                      'Event 3',
                      'assets/images/volunteer.jpg',
                      true,
                      [
                        'assets/images/circular_image_4.png',
                        'assets/images/circular_image_4.png'
                      ],
                      300,
                    ),
                    _buildEventContainer(
                      context,
                      'Event 4',
                      'assets/images/volunteer.jpg',
                      false,
                      [
                        'assets/images/circular_image_4.png',
                        'assets/images/circular_image_4.png'
                      ],
                      120,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Related',
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              _buildRelatedContainer(
                context,
                'assets/images/volunteer.jpg',
                'Organization Name',
                'Location Name',
                4.5,
                100,
              ),
              _buildRelatedContainer(
                context,
                'assets/images/volunteer.jpg',
                'Organization Name',
                'Location Name',
                4.0,
                80,
              ),
              _buildRelatedContainer(
                context,
                'assets/images/volunteer.jpg',
                'Organization Name',
                'Location Name',
                3.5,
                60,
              ),
              const SizedBox(height: 20),
              Text(
                'Testimonials',
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
                    _buildTestimonialContainer(
                      context,
                      'assets/images/circular_image_4.png',
                      'Great Event! The organizers were very helpful and everything was well planned. I had a wonderful experience.',
                      'John Doe',
                    ),
                    _buildTestimonialContainer(
                      context,
                      'assets/images/circular_image_4.png',
                      'Amazing Experience! The activities were engaging and the community was welcoming. I\'d love to participate again.',
                      'Jane Doe',
                    ),
                    _buildTestimonialContainer(
                      context,
                      'assets/images/circular_image_4.png',
                      'Loved it! It was a memorable event with lots of learning opportunities and fun activities.',
                      'Alex Smith',
                    ),
                    _buildTestimonialContainer(
                      context,
                      'assets/images/circular_image_4.png',
                      'Highly Recommend! A great way to spend time and meet new people. Very well organized.',
                      'Maria Garcia',
                    ),
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
            icon: Icon(Icons.home),
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
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }

  Widget _buildTopContainer(BuildContext context, String imagePath, String title, String number, String subtitle) {
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
            number,
            style: GoogleFonts.poppins(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            title,
            style: GoogleFonts.poppins(
              fontSize: 16,
            ),
          ),
          if (subtitle.isNotEmpty) ...[
            const SizedBox(height: 5),
            Text(
              subtitle,
              style: GoogleFonts.poppins(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildEventContainer(BuildContext context, String eventName, String imagePath, bool isOnline, List<String> participantImages, int participantCount) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      width: 200,
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            eventName,
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5),
          ClipRRect(
            borderRadius: BorderRadius.circular(15.0), // Rounded border
            child: Image.asset(
              imagePath,
              height: 100,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 5),
          Row(
            children: [
              Icon(
                isOnline ? Icons.cloud : Icons.location_on,
                color: isOnline ? Colors.green : Colors.red,
                size: 16,
              ),
              const SizedBox(width: 5),
              Text(
                isOnline ? 'Online' : 'Offline',
                style: GoogleFonts.poppins(fontSize: 14, color: Colors.grey),
              ),
            ],
          ),
          const SizedBox(height: 5),
          Row(
            children: participantImages.map((imagePath) {
              return Padding(
                padding: const EdgeInsets.only(right: 5),
                child: CircleAvatar(
                  radius: 10,
                  backgroundImage: AssetImage(imagePath),
                ),
              );
            }).toList(),
          ),
          const SizedBox(height: 5),
          Text(
            '$participantCount+ participants',
            style: GoogleFonts.poppins(fontSize: 14, color: Colors.grey),
          ),
        ],
      ),
    );
  }

  Widget _buildRelatedContainer(
    BuildContext context,
    String imagePath,
    String organizationName,
    String locationName,
    double rating,
    int employeeCount,
  ) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
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
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15.0), // Rounded border
            child: Image.asset(
              imagePath,
              height: 100,
              width: 100,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  organizationName,
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: List.generate(
                    5,
                    (index) => Icon(
                      Icons.star,
                      color: index < rating ? Colors.amber : Colors.grey,
                      size: 16,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Icon(Icons.location_on, size: 16),
                    Text(
                      locationName,
                      style: GoogleFonts.poppins(fontSize: 14, color: Colors.grey),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.people, size: 16),
                    Text(
                      '$employeeCount employees',
                      style: GoogleFonts.poppins(fontSize: 14, color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTestimonialContainer(
    BuildContext context,
    String imagePath,
    String testimonial,
    String name,
  ) {
    return Container(
      width: 250,
      margin: const EdgeInsets.only(right: 10),
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage(imagePath),
          ),
          const SizedBox(height: 10),
          Text(
            '"$testimonial"',
            style: GoogleFonts.poppins(fontSize: 14),
          ),
          const SizedBox(height: 10),
          Text(
            '- $name',
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
