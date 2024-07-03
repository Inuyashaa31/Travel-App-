import 'package:flutter/material.dart';

class PostBottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2,
      padding: EdgeInsets.only(top: 20, left: 20, right: 20),
      decoration: BoxDecoration(
          color: Color(0xFFEDE2F6),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          )),
      child: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Chittorgarh,Rajasthan",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 25,
                      ),
                      Text(
                        "4.5",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(height: 25),
              Text(
                "Chittorgarh ki Kahani idhar",
                style: TextStyle(color: Colors.black, fontSize: 25),
                textAlign: TextAlign.justify,
              )
            ]),
          )
        ],
      ),
    );
  }
}
