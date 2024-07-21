import 'package:flutter/material.dart';

class NewContentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
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
                    width: 400,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Connecting you with non-profit organizations making a difference.',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Features',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w400,
                        color: Colors.lightGreen,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                buildContentContainer(
                  'assets/images/avatar1.png',
                  'Discover NGOs',
                  'The Search functionality allows users to find non-profit organizations based '
                      'on specific criteria such as name, location, cause, or keywords. Users can '
                      'enter search terms into a search bar and receive relevant results matching '
                      'their query. Search results display NGO profiles with key information such as '
                      'mission statements, contact details, and ongoing projects.',
                ),
                buildContentContainer(
                  'assets/images/avatar2.png',
                  'Detailed NGO Profiles',
                  'Detailed NGO profiles offer comprehensive information about each '
                      'organization. This includes mission statements, objectives, impact metrics, '
                      'contact information, social media links, and project details. Users can explore '
                      'these profiles to learn more about the NGO’s activities, achievements, and '
                      'current initiatives.',
                ),
                buildContentContainer(
                  'assets/images/avatar3.png',
                  'Interactive Map Integration',
                  'The interactive map integration feature allows users to visually explore NGOs '
                      'based on their geographical locations. Users can view markers or pins '
                      'representing different organizations on the map. They can interact with these '
                      'markers to access brief information about each NGO, such as mission focus '
                      'and contact details.',
                ),
                SizedBox(height: 20),
                Text(
                  'How It Works?',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.lightGreen,
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 80.0),
                        child: buildSquareContainer(
                          'assets/images/avatar1.png',
                          'Search for NGOs',
                          [
                            'Enter keywords, location, or causes of interest to discover relevant NGOs.',
                            'Use filters to narrow down results based on preferences.'
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 80.0),
                        child: buildSquareContainer(
                          'assets/images/avatar2.png',
                          'Explore NGO Profiles',
                          [
                            'Click on NGO markers on the map or search results to view detailed profiles.',
                            'Learn about their mission, projects, and impact metrics.'
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 80.0),
                        child: buildSquareContainer(
                          'assets/images/avatar3.png',
                          'Support NGOs',
                          [
                            'Choose how to contribute: make a donation, volunteer, or support campaigns.',
                            'Follow your favorite NGOs to stay updated on their activities.'
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildContentContainer(
      String avatarImage, String text, String paragraphText) {
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
          Center(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Colors.lightGreen,
              ),
            ),
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

  Widget buildSquareContainer(
      String avatarImage, String title, List<String> points) {
    return Container(
      height: 325,
      width: 300,
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(avatarImage),
          ),
          SizedBox(height: 10),
          Center(
            child: Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Colors.lightGreen,
              ),
            ),
          ),
          SizedBox(height: 10),
          for (var point in points)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('• ', style: TextStyle(fontSize: 16)),
                  Expanded(
                    child: Text(
                      point,
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
