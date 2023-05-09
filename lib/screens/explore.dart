import 'package:flutter/material.dart';

import '../widget/custom_card.dart';

class Explore extends StatelessWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            IconButton(
                onPressed: () {
                  print("app");
                },
                icon: Icon(Icons.people)),
            Spacer(),
            IconButton(
                onPressed: () {
                  print("app");
                },
                icon: Icon(Icons.shopping_bag)),
            Spacer(),
            IconButton(
                onPressed: () {
                  print("app");
                },
                icon: Icon(Icons.local_convenience_store))
          ],
        ),
      ),
      body: ListView(children: [
        Container(),
        CustomCard(
            "Samita Rai",
            "Haridwar,within 4.2KM",
            "Coffie | Business | Friendship",
            "Hi community ! I an open to new connections.",
            "Hello my name is Samita. I am from Uttrakhand. I am an flutter developer, I like to create beautiful and functional flutter apps and like to take feedback regularly"),
        CustomCard(
            "Dhruv Anand",
            "Haridwar,within 4.7KM",
            "Coffie | Business | Friendship",
            "Hi community ! I an open to new connections.",
            "Hello my name is Dhruv. I am from Uttrakhand. I am an frontend web developer, I like to create beautiful and functional website and like to take feedback regularly"),
        CustomCard(
            "Pushpendra Dhanbi",
            "Haridwar,within 6.2KM",
            "Coffie | Business | Friendship",
            "Hi community ! I an open to new connections.",
            "Hello my name is Pushpendra Dhanbi. I am from Uttrakhand."),
        CustomCard(
            "Shivani Ahuja",
            "Haridwar,within 5.2KM",
            "Coffie | Business | Friendship",
            "Hi community ! I an open to new connections.",
            "Hello my name is Shivani Ahuja."),
        CustomCard(
            "Kritika Bisht",
            "Haridwar ,Uttrakhand",
            "Coffie | Business | Friendship",
            "Hi community ! I an open to new connections.",
            "Hello my name is 'name'. I am from Uttrakhand. I am an flutter developer, I like to create beautiful and functional flutter apps and like to take feedback regularly"),
        CustomCard(
            "Name",
            "Haridwar,within 6.2KM",
            "Coffie | Business | Friendship",
            "Hi community ! I an open to new connections.",
            "Hello my name is 'name'. I am from Uttrakhand. I am an flutter developer, I like to create beautiful and functional flutter apps and like to take feedback regularly"),
      ]),
    );
  }
}
