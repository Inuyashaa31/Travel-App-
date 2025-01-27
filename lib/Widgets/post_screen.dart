import 'package:flutter/material.dart';
import 'package:travel_app/Widgets/post_app_bar.dart';
import 'package:travel_app/Widgets/post_bottom_bar.dart';

int index = 3;

class PostScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/City${index + 1}.jpg"),
              fit: BoxFit.cover,
              opacity: 0.7)),
      // )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(90),
          child: PostAppBar(),
        ),
        bottomNavigationBar: PostBottomBar(),
      ),
    );
  }
}
