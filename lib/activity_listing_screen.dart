import 'package:flutter/material.dart';

class ActivityPage extends StatelessWidget {
  final String category;
  const ActivityPage({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            backgroundColor: const Color.fromARGB(255, 94, 90, 42),
            title: Text(
                style:
                    const TextStyle(color: Color.fromARGB(255, 225, 206, 180)),
                category)),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        body: Center(
          child: ListView.builder(
            itemCount: getActivitiesForCategory(category).length,
            itemBuilder: (context, index) {
              var activity = getActivitiesForCategory(category)[index];
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Container(
                        color: Colors.white,
                        child: Column(children: [
                          Image(image: AssetImage(activity.imagePath)),
                          const SizedBox(height: 5),
                          Text(
                            activity.title,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 24,
                              color: Colors.black,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Text(activity.description,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                )),
                          ),
                          const SizedBox(height: 5)
                        ]),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ));
  }
}

List<Activity> getActivitiesForCategory(String category) {
  if (category == 'Adventure Enthusiasts') {
    return [
      Activity(
        title: 'Camel Rides',
        description:
            'Ride a camel in Dubai for an authentic desert experience!',
        imagePath: 'camelride.jpeg',
      ),
      Activity(
        title: 'Tandem Skydiving',
        description:
            'Embark on the ultimate skydiving experience in Dubai by booking the Tandem Skydive!',
        imagePath: 'skydiving.jpeg',
      ),
      Activity(
        title: 'Desert Quad Bike Safari',
        description:
            'Gear up for an unforgettable adventure as you take an action-packed desert Safari with quad biking in Dubai!',
        imagePath: 'quads.jpeg',
      ),
      // Add more activities here
    ];
  } else if (category == 'History Aficionados') {
    return [
      Activity(
        title: 'Jumeirah Mosque',
        description:
            'One of the most iconic cultural landmarks in Dubai, Jumeirah Mosque welcomes visitors of all faiths!',
        imagePath: 'mosque.jpeg',
      ),
      Activity(
        title: 'Al Fahidi Fort',
        description:
            'Visit Al Fahidi Fort, the oldest building in Dubai. Inside is a museum for tourists!',
        imagePath: 'museum.jpg',
      ),
      Activity(
        title: 'Old Dubai Tour',
        description: 'Explore several heritage areas in a tour of Old Dubai!',
        imagePath: 'olddubai.jpg',
      ),
      // Add more activities here
    ];
  } else if (category == 'Culinary Seekers') {
    return [
      Activity(
        title: 'Al Fanar',
        description:
            'Visit Michelin Star recipient Al Fanar for authentic Emirati food and a great view of the Dubai Creek!',
        imagePath: 'al-fanar.jpg',
      ),
      Activity(
        title: 'Al Mandaloun',
        description:
            'Visit Michelin Star recipient Al Mandaloun for a wide selection of affordable and authentic Lebanese food!',
        imagePath: 'al-mandaloun.webp',
      ),
      Activity(
        title: 'Trèsind',
        description:
            'Visit Michelin Star Trèsind for modern, imaginative Indian cuisine!',
        imagePath: 'tresind.webp',
      ),
      // Add more activities here
    ];
  } else if (category == 'Nightlife Revelers') {
    return [
      Activity(
        title: 'Activity 1',
        description: 'Description for Activity 1',
        imagePath: 'dubai.jpg',
      ),
      Activity(
        title: 'Activity 2',
        description: 'Description for Activity 2',
        imagePath: 'dubai.jpg',
      ),
      Activity(
        title: 'Activity 3',
        description: 'Description for Activity 3',
        imagePath: 'dubai.jpg',
      ),
      // Add more activities here
    ];
  }
  return [];
}

class Activity {
  final String title;
  final String description;
  final String imagePath;

  Activity({
    required this.title,
    required this.description,
    required this.imagePath,
  });
}
