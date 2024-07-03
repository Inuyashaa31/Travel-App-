import 'package:flutter/material.dart';
import '../Screens/searchpage.dart';
import 'package:travel_app/Screens/best_places.dart';
import 'package:travel_app/Widgets/home_app_bar.dart';
import 'package:travel_app/Widgets/home_bottom_bar.dart';
import 'package:travel_app/Widgets/post_screen.dart';

class HomePage extends StatelessWidget {
  var category = [
    'Best Places',
    'Tourists Attract',
    'Historic Places',
    'Hotels',
    'Restaurants',
  ];

  // ignore: non_constant_identifier_names
  var Cat = [
    'Chittorgarh',
    'Kumbalgarh',
    'Hawa Mahal',
    'City Palace',
    'Nahargarh',
    'Amber fort',
  ];

  var Divide = [
    'Jal Mahal',
    'Albert Hall Museum',
    'Udaipur Market',
    'Fatehsagar Lake',
    'Jantar Mantar',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90.0),
        child: HomeAppBar(),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 60),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                        child: Container(
                      height: 200,
                      child: ListView.builder(
                          itemCount: 6,
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            return InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => PostScreen(),
                                    ));
                              },
                              child: Container(
                                  width: 160,
                                  padding: EdgeInsets.all(30),
                                  margin: EdgeInsets.only(left: 15),
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(15),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "images/City${index + 1}.jpg"),
                                          fit: BoxFit.cover,
                                          opacity: 0.7)),
                                  child: Column(
                                    children: [
                                      Container(
                                          alignment: Alignment.topRight,
                                          child: Icon(
                                            Icons.bookmark_border_outlined,
                                            color: Colors.white,
                                            size: 30,
                                          )),
                                      Spacer(),
                                      Container(
                                        alignment: Alignment.bottomLeft,
                                        child: Text(
                                          Cat[index],
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      )
                                    ],
                                  )),
                            );
                          }),
                    )),
                  ],
                ),
                SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Row(children: [
                      for (int i = 0; i < 5; i++)
                        InkWell(
                          onTap: () {
                            // Open a new page or perform any action you want
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Newplaces(i),
                                // Replace NewPage with the page you want to navigate to
                              ),
                            );
                          },
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black26,
                                  blurRadius: 6,
                                ),
                              ],
                            ),
                            child: Text(
                              category[i],
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),

                      // Container(
                      //   margin: EdgeInsets.symmetric(horizontal: 10),
                      //   padding: EdgeInsets.all(10),
                      //   decoration: BoxDecoration(
                      //       color: Colors.white,
                      //       borderRadius: BorderRadius.circular(10),
                      //       boxShadow: [
                      //         BoxShadow(
                      //           color: Colors.black26,
                      //           blurRadius: 6,
                      //         )
                      //       ]),
                      //   child: Text(
                      //     category[i],

                      //     style: TextStyle(
                      //       fontSize: 15,
                      //       fontWeight: FontWeight.w400,
                      //     ),
                      //   ),
                      // )
                    ]),
                  ),
                ),
                SizedBox(height: 20),
                ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 5,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: EdgeInsets.all(15),
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => PostScreen(),
                                  ));
                            },
                            child: Container(
                              height: 200,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                    image: AssetImage(
                                        "images/Place${index + 1}.jpg"),
                                    fit: BoxFit.cover,
                                    opacity: 0.9,
                                  )),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  Divide[index],
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Icon(Icons.more_vert, size: 30),
                                
                              ],
                            ),
                          ),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 20,
                              ),
                              Text(
                                "4.5",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: HomeBottomBar(),
    );
  }

  TouristPlaces() {}
}

Newplaces(int i) {
  if (i == 0) {
    return MyHomePage();
  }
  if (i == 1) {
    return searchpage();
  }
  if (i == 2) {}
  if (i == 3) {}
  if (i == 4) {}
  if (i == 5) {}
  if (i == 6) {}
}
