import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: 'Search by name and thier work ',
                  prefixIcon: const Icon(Icons.search, color: Colors.green),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                '10 Results Found',
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Expanded(
                child: ListView(
                  children: [
                    _buildFeaturedContainer(
                      context,
                      'assets/images/volunteer.jpg',
                      'Organization Name',
                      'Location Name',
                      4.5,
                      100,
                    ),
                    _buildFeaturedContainer(
                      context,
                      'assets/images/volunteer.jpg',
                      'Organization Name',
                      'Location Name',
                      4.0,
                      80,
                    ),
                    _buildFeaturedContainer(
                      context,
                      'assets/images/volunteer.jpg',
                      'Organization Name',
                      'Location Name',
                      3.5,
                      60,
                    ),
                    _buildFeaturedContainer(
                      context,
                      'assets/images/volunteer.jpg',
                      'Organization Name',
                      'Location Name',
                      4.0,
                      80,
                    ),
                    _buildFeaturedContainer(
                      context,
                      'assets/images/volunteer.jpg',
                      'Organization Name',
                      'Location Name',
                      4.0,
                      80,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFeaturedContainer(
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
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Stack(
        children: [
          Row(
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Image.asset(
                      imagePath,
                      height: 100,
                      width: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 8,
                    right: 8,
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.all(4.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 3,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: const Icon(
                          Icons.favorite_border,
                          color: Colors.red,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                ],
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
                        const Icon(Icons.location_on, size: 16),
                        Text(
                          locationName,
                          style: GoogleFonts.poppins(
                              fontSize: 14, color: Colors.grey),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(Icons.people, size: 16),
                        Text(
                          '$employeeCount employees',
                          style: GoogleFonts.poppins(
                              fontSize: 14, color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
