import 'package:flutter/material.dart';
import 'package:travel_app/Widgets/home_bottom_bar.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Best Places',
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Place> places = [
    Place(
      image: 'images/bp1.jpg',
      name: 'Hawa Mahal',
      location: 'Jaipur, Rajasthan',
      description: 'The Hawa Mahal also known as the ‘Palace of The Winds ‘, is located in the heart of the Pink City of India- Jaipur. Built by Maharaja Sawai Pratap Singh in 1799, it’s a five-storey palace that belongs to the Kachhwaha Rajput dynasty. This ancient building is believed to be constructed in the form of Lord Krishna’s crown with pink and red sandstone.',
    ),
    Place(
      image: 'images/bp2.jpg',
      name: 'Lake Pichola',
      location: 'Udaipur, Rajasthan',
      description: 'Located in the heart of Udaipur, Pichola Lake is the largest, most picturesque and most visited tourist place in Rajasthan. It was built by Pichhu Banjara in 1362 during Maharana Lakha’s ruling period. Later on, Maharana Udai Singh expanded this lake.',
    ),
    Place(
      image: 'images/bp3.jpg',
      name: 'Sheesh Mahal (Hall of Mirrors)',
      location: 'Jaipur, Rajasthan',
      description: 'Any list consisting of tourist places to visit in Rajasthan cannot miss out the Sheesh Mahal or the Hall of Mirrors is situated at Amber Fort in Jaipur. Built by Raja Man Singh in 1592 with red sandstone and white marble, the beauty of this fort is blown up by the Maotha Lake.',
    ),
    Place(
      image: 'images/bg4.jpg',
      name: 'Rampuria Haveli',
      location: 'Bikaner, Rajasthan',
      description: 'Rampuria Haveli of Bikaner will take you back to the bygone era. It is one of the most beautiful landmark destinations to visit in Rajasthan. This beautiful mansion is the last reminiscence of a wealthy merchant family- Rampuria. It was built in the 1400’s by Baluji Chalva by the orders of Rampuria family. One of the most exquisite features of this haveli is its handiwork which is built in a style prominent in the 15th century.',
    ),
    Place(
    image: 'images/bg5.jpg',
      name: 'Jal Mahal',
      location: 'Jaipur, Rajasthan',
      description: 'The Jal Mahal, also known as the “Lake Palace”, is situated on the Man Sagar Lake and is an incredible piece of architecture which is a matter of pride for Rajasthan tourism. It is enveloped by the mighty Aravalli Hills with ancient forts on one hand and busy Jaipur city on the other hand.',
    ),

    // Add more places as needed
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Best Places'),
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              itemCount: places.length,
              onPageChanged: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              itemBuilder: (context, index) {
                final place = places[index];
                return PlaceDetails(place: place);
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              places.length,
              (index) => buildDot(index: index),
            ),
          ),
        ],
      ),
    );
    
  }

  Widget buildDot({required int index}) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      margin: EdgeInsets.symmetric(horizontal: 4),
      height: 8,
      width: _currentIndex == index ? 24 : 8,
      decoration: BoxDecoration(
        color: _currentIndex == index ? Colors.blue : Colors.grey,
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }
}

class Place {
  final String image;
  final String name;
  final String location;
  final String description;

  Place({
    required this.image,
    required this.name,
    required this.location,
    required this.description,
  });
}

class PlaceDetails extends StatelessWidget {
  final Place place;

  const PlaceDetails({Key? key, required this.place}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ImageSection(image: place.image),
        TitleSection(name: place.name, location: place.location),
        ButtonSection(),
        TextSection(description: place.description),
      ],
    );
  }
  
}

class TitleSection extends StatelessWidget {
  final String name;
  final String location;

  const TitleSection({Key? key, required this.name, required this.location}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Text(
              name,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text(
            location,
            style: TextStyle(
              color: Colors.grey[500],
            ),
          ),
        ],
      ),
    );
  }
}

class TextSection extends StatelessWidget {
  final String description;

  const TextSection({Key? key, required this.description}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Text(
        description,
        softWrap: true,
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    final Color color = Theme.of(context).primaryColor;
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ButtonWithText(
            color: color,
            icon: Icons.call,
            label: 'CALL',
          ),
          ButtonWithText(
            color: color,
            icon: Icons.near_me,
            label: 'ROUTE',
          ),
          ButtonWithText(
            color: color,
            icon: Icons.share,
            label: 'SHARE',
          ),
        ],
      ),
    );
  }
}

class ButtonWithText extends StatelessWidget {
  const ButtonWithText({
    super.key,
    required this.color,
    required this.icon,
    required this.label,
  });

  final Color color;
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
    bottomNavigationBar: HomeBottomBar();
  }
}

class ImageSection extends StatelessWidget {
  final String image;

  const ImageSection({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      width: 600,
      height: 240,
      fit: BoxFit.cover,
    );
  }
}
