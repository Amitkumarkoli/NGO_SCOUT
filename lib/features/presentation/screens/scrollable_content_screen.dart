import 'package:flutter/material.dart';

class NewContentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              Text(
                'NGO SCOUT',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.green[500],
                ),
              ),
              SizedBox(height: 20),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'assets/images/children_image_2.png', 
                  width: 300,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Connecting you with non-profit organizations making a difference.',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Features', 
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w400,
                        color: Colors.lightGreen,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              buildContentContainer(
                'assets/images/avatar1.png',
                'The Search functionality allows users to find non-profit organizations based '
                'on specific criteria such as name, location, cause, or keywords. Users can '
                'enter search terms into a search bar and receive relevant results matching '
                'their query. Search results display NGO profiles with key information such as '
                'mission statements, contact details, and ongoing projects.',
              ),
              buildContentContainer(
                'assets/images/avatar2.png',
                'Detailed NGO profiles offer comprehensive information about each '
                'organization. This includes mission statements, objectives, impact metrics, '
                'contact information, social media links, and project details. Users can explore '
                'these profiles to learn more about the NGO’s activities, achievements, and '
                'current initiatives.',
              ),
              buildContentContainer(
                'assets/images/avatar3.png',
                'The interactive map integration feature allows users to visually explore NGOs '
                'based on their geographical locations. Users can view markers or pins '
                'representing different organizations on the map. They can interact with these '
                'markers to access brief information about each NGO, such as mission focus '
                'and contact details.',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildContentContainer(String avatarImage, String paragraphText) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.grey[400]!, 
          width: 1, 
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(avatarImage),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              paragraphText,
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}







