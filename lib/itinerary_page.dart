// ignore_for_file: avoid_print

import 'package:city_explorer_app/activity_listing_screen.dart';
import 'package:flutter/material.dart';

class ItineraryPage extends StatelessWidget {
  const ItineraryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 94, 90, 42),
          title: const Text(
              style: TextStyle(color: Color.fromARGB(255, 225, 206, 180)),
              'One-Day Itineraries for Dubai')),
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      body: Center(
        child: GridView.builder(
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.5,
          ),
          itemCount: 4,
          itemBuilder: (BuildContext context, int index) {
            return CustomItineraryCard(
              imagePath:
                  getImageForIndex(index), // Replace with actual image paths
              title: getTitleForIndex(index), // Replace with appropriate titles
            );
          },
        ),
      ),
    );
  }

  String getTitleForIndex(int index) {
    switch (index) {
      case 0:
        return "Adventure Enthusiasts";
      case 1:
        return "History Aficionados";
      case 2:
        return "Culinary Seekers";
      case 3:
        return "Nightlife Revelers";
      default:
        return "";
    }
  }
}

String getImageForIndex(int index) {
  switch (index) {
    case 0:
      return "adventure.jpg";
    case 1:
      return "history.jpg";
    case 2:
      return "food.jpeg";
    case 3:
      return "nightlife.jpeg";
    default:
      return "";
  }
}

class CustomItineraryCard extends StatefulWidget {
  final String imagePath;
  final String title;

  const CustomItineraryCard(
      {super.key, required this.imagePath, required this.title});

  @override
  CustomItineraryCardState createState() => CustomItineraryCardState();
}

class CustomItineraryCardState extends State<CustomItineraryCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ActivityPage(
                      category: widget.title,
                    )))
      },
      child: Card(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            image: DecorationImage(
              image: AssetImage(widget.imagePath),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Container(
              height: 80,
              width: 150,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 137, 52, 7),
                  borderRadius: BorderRadius.circular(15.0)),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        widget.title,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
