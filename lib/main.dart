import 'package:city_explorer_app/itinerary_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dubai City Itinerary',
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 94, 90, 42),
        scaffoldBackgroundColor: const Color(0x00d5883a),
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0x00d5883a)),
        useMaterial3: true,
      ),
      routes: {
        '/itinerary': (context) => const ItineraryPage(),
      },
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Welcome To Dubai!",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      color: Color.fromARGB(255, 137, 52, 7))),
              Container(
                  alignment: Alignment.center,
                  height: 350,
                  width: double.infinity,
                  child: const Image(image: AssetImage('landscape.jpg'))),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: TextButton(
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll<Color>(
                          Color.fromARGB(255, 94, 90, 42)),
                    ),
                    onPressed: () =>
                        {Navigator.pushNamed(context, '/itinerary')},
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 25,
                              color: Color.fromARGB(255, 225, 206, 180)),
                          "Explore one-day itineraries in Dubai!"),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
