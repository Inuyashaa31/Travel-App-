import 'package:flutter/material.dart';
import 'package:travel_app/Widgets/home_bottom_bar.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Historical Places',
      home: const searchpage(),
    );
  }
}

class searchpage extends StatefulWidget {
  const searchpage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<searchpage> {
  final List<Place> places = [
    
    Place(
      image: 'images/a1.jpg',
      name: 'Mehrangarh Fort',
      location: 'Jodhpur',
      description: 'Description for Mehrangarh Fort',
    ),
    Place(
      image: 'images/a2.jpg',
      name: 'Amber Fort and Palace',
      location: 'Jaipur',
      description: 'Description for Amber Fort and Palace',
    ),
    Place(
      image: 'images/a3.jpg',
      name: 'Jain Temple – Ranakpur',
      location: 'Udaipur',
      description: 'Description for Jain Temple – Ranakpur',
    ),
    Place(
      image: 'images/a4.jpg',
      name: 'Kumbhalgarh Fort',
      location: 'Udaipur',
      description: 'Description for Kumbhalgarh Fort',
    ),
    Place(
      image: 'images/a5.jpg',
      name: 'Dilwara Jain Temples',
      location: 'Mount Abu',
      description: 'Description for Dilwara Jain Temples',
    ),
    Place(
      image: 'images/a6.jpg',
      name: 'Keoladeo Ghana National Park',
      location: 'Bharatpur',
      description: 'Description for Keoladeo Ghana National Park',
    ),
    Place(
      image: 'images/a7.jpg',
      name: 'Junagarh Fort',
      location: 'Bikaner',
      description: 'Description for Junagarh Fort',
    ),
    Place(
      image: 'images/a8.jpg',
      name: 'Chittorgarh Fort',
      location: 'Chittorgarh',
      description: 'Description for Chittorgarh Fort',
    ),
    Place(
      image: 'images/a9.jpg',
      name: 'Govind Devji Temple',
      location: 'Jaipur',
      description: 'Description for Govind Devji Temple',
    ),
    Place(
      image: 'images/a10.jpg',
      name: 'Sheesh Mahal (Hall of Mirrors)',
      location: 'Jaipur',
      description: 'Description for Sheesh Mahal (Hall of Mirrors)',
    ),
    Place(
      image: 'images/a11.jpg',
      name: 'Ranthambore National Park',
      location: 'Sawai Madhopur',
      description: 'Description for Ranthambore National Park',
    ),
    Place(
      image: 'images/a12.jpg',
      name: 'Lake Pichola',
      location: 'Udaipur',
      description: 'Description for Lake Pichola',
    ),
    Place(
      image: 'images/a13.jpg',
      name: 'Bagore Ki Haveli',
      location: 'Udaipur',
      description: 'Description for Bagore Ki Haveli',
    ),
    Place(
      image: 'images/a14.jpg',
      name: 'Pushkar Yoga Garden',
      location: 'Pushkar',
      description: 'Description for Pushkar Yoga Garden',
    ),
    Place(
      image: 'images/a15.jpg',
      name: 'Jantar Mantar',
      location: 'Jaipur',
      description: 'Description for Jantar Mantar',
    ),
    Place(
      image: 'images/a16.jpg',
      name: 'City Palace of Udaipur',
      location: 'Udaipur',
      description: 'Description for City Palace of Udaipur',
    ),
    Place(
      image: 'images/a17.jpg',
      name: 'Patwon-ki-Haveli',
      location: 'Jaisalmer',
      description: 'Description for Patwon-ki-Haveli',
    ),
    Place(
      image: 'images/a19.jpg',
      name: 'Jaisalmer Fort',
      location: 'Jaisalmer',
      description: 'Description for Jaisalmer Fort',
    ),
    Place(
      image: 'images/a20.jpg',
      name: 'Birla Mandir Temple',
      location: 'Jaipur',
      description: 'Description for Birla Mandir Temple',
    ),
    Place(
      image: 'images/a21.jpg',
      name: 'City Palace of Jaipur',
      location: 'Jaipur',
      description: 'Description for City Palace of Jaipur',
    ),
    Place(
      image: 'images/a22.jpg',
      name: 'Hawa Mahal',
      location: 'Jaipur',
      description: 'Description for Hawa Mahal',
    ),
    Place(
      image: 'images/a23.jpg',
      name: 'Jag Mandir',
      location: 'Udaipur',
      description: 'Description for Jag Mandir',
    ),
    Place(
      image: 'images/a24.jpg',
      name: 'Karni Mata Temple',
      location: 'Deshnok',
      description: 'Description for Karni Mata Temple',
    ),
    Place(
      image: 'images/a25.jpg',
      name: 'Nahargarh Fort',
      location: 'Jaipur',
      description: 'Description for Nahargarh Fort',
    ),
    Place(
      image: 'images/a26.jpg',
      name: 'Jal Mahal',
      location: 'Jaipur',
      description: 'Description for Jal Mahal',
    ),
    Place(
      image: 'images/a27.jpg',
      name: 'Alwar City Palace',
      location: 'Alwar',
      description: 'Description for Alwar City Palace',
    ),
    Place(
      image: 'images/a34.jpg',
      name: 'The Ajmer Sharif Dargah',
      location: 'Ajmer',
      description: 'Description for The Ajmer Sharif Dargah',
    ),
    Place(
      image: 'images/a28.jpg',
      name: 'Rampuria Haveli',
      location: 'Bikaner',
      description: 'Description for Rampuria Haveli',
    ),
    Place(
      image: 'images/a29.jpg',
      name: 'Sajjan Garh Palace',
      location: 'Udaipur',
      description: 'Description for Sajjan Garh Palace',
    ),
    Place(
      image: 'images/a30.jpg',
      name: 'Bhangarh Fort',
      location: 'Alwar',
      description: 'Description for Bhangarh Fort',
    ),
    Place(
      image: 'images/a31.jpg',
      name: 'Kuldhara Village',
      location: 'Jaisalmer',
      description: 'Description for Kuldhara Village',
    ),
    Place(
      image: 'images/a32.jpg',
      name: 'Foy Sagar Lake',
      location: 'Ajmer',
      description: 'Description for Foy Sagar Lake',
    ),
    Place(
      image: 'images/a33.jpg',
      name: 'Moosi Maharani Ki Chhatri',
      location: 'Alwar',
      description: 'Description for Moosi Maharani Ki Chhatri',
    ),
    // Add more places as needed
  ];

  late List<Place> filteredPlaces;

  TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    filteredPlaces = places;
    _searchController.addListener(_onSearchChanged);
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _onSearchChanged() {
    setState(() {
      filteredPlaces = places.where((place) {
        final query = _searchController.text.toLowerCase();
        return place.name.toLowerCase().contains(query);
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tourist Atraction (${filteredPlaces.length})'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                labelText: 'Search',
                hintText: 'Search by name...',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredPlaces.length,
              itemBuilder: (context, index) {
                final place = filteredPlaces[index];
                return PlaceCard(place: place);
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: HomeBottomBar(),
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

class PlaceCard extends StatelessWidget {
  final Place place;

  const PlaceCard({Key? key, required this.place}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: ListTile(
        leading: Image.asset(
          place.image,
          width: 100,
          height: 100,
          fit: BoxFit.cover,
        ),
        title: Text(place.name),
        subtitle: Text(place.location),
        onTap: () {
          _showPlaceDetails(context);
        },
      ),
    );
  }
   void _showPlaceDetails(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(place.name),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
            Image.asset(
            place.image,
            width: 300,
            height: 300,
            fit: BoxFit.cover,
        ),
              Text('Location: ${place.location}'),
              SizedBox(height: 8),
              Text('Description: ${place.description}'),
            ],
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Close'),
            ),
          ],
        );
      },
    );
  }
}

