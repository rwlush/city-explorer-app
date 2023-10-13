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
        colorScheme:
            ColorScheme.fromSeed(seedColor: const Color(0x00d5883a)),
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
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Welcome To Dubai!",
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40, color: Color.fromARGB(255, 137, 52, 7))),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Container(
                    alignment: Alignment.center,
                    height: 350,
                    width: double.infinity,
                    child: const Image(image: AssetImage('landscape.jpg'))),
              ),
              // Container(
              //     height: 150,
              //     width: 350,
              //     decoration: BoxDecoration(
              //       color: Colors.grey[350],
              //       borderRadius: BorderRadius.circular(10),
              //     ),
              //     child: Padding(
              //       padding: EdgeInsets.all(7.0),
              //       child: Column(
              //         children: [],
              //       ),
              //     )),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: TextButton(
                    style: const ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll<Color>(Color.fromARGB(255, 94, 90, 42)),
                    ),
                    onPressed: () => {Navigator.pushNamed(context, '/itinerary')},
                    child: const Text(style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 225, 206, 180)),"Explore one-day iteneraries in Dubai")),
              )
            ],
          ),
        ),
      ),
    );
  }
}
