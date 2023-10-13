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
              'Itinerary')),
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
// Navigate back to first screen when tapped.
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}

class Tile extends StatelessWidget {
  const Tile({super.key, required this.title, required this.imagePath});

  final String title;

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return const Stack(
      alignment: AlignmentDirectional.topStart,
      children: [],
    );
  }
}
