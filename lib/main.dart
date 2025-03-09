import 'package:flutter/material.dart';  // Construction in UI
import 'dart:math';  // Construction of Logic in Application // Library that generates that random Values

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});

  String _currentFortune = "1";

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _currentFortune = "";

  final _fortuneList = [
    "You will find happiness with a new love.",
    "You will have a great day today.",
    "You will have a great day tomorrow.",
    "You will have a great day the day after tomorrow.",
    "You will have a great day the day after the day after tomorrow.",
    "You will have a great day the day after the day after the day after the day after tomorrow.",
    "You will have a great day the day after the day after the day after the day after the day after tomorrow.",
    "You will have a great day the day after the day after the day after the day after the day after the day after tomorrow.",
    "You will have a great day the day after the day after the day after the day after the day after the day after the day after tomorrow.",
    "You will have a great day the day after the day after the day after the day after the day after the day after the day after the day after tomorrow.",
    "You will have a great day the day after the day after the day after the day after the day after the day after the day after the day after the day after tomorrow.",
    "You will have a great day the day after the day after the day after the day after the day after the day after the day after the day after the day after the day after tomorrow.",
    "You will have a great day",
  ];

  void _randomFortune() {
    var random = Random();
    int fortune = random.nextInt(_fortuneList.length);
    setState(() {
       _currentFortune = _fortuneList[fortune];
      print("New Fortune==>: $_currentFortune");

    });
  }

  @override
  Widget build(BuildContext context) {
    print("Building the Widget");
    return Scaffold(

      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/images/fortune_cookie.png',
                width: 200, 
                height: 200, 
                fit: BoxFit.cover,
              ),

            Text(
              "Your Fortune Teller",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),

            Text(
              "Your Fortune is:",
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),
            FloatingActionButton.extended(
              onPressed: _randomFortune,
              label: const Text('Get Fortune'),
            ), // FloatingActionButton
            Card(
              // Main Widget
              child: Padding(
                // Child Widget of Main Widget
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  // Child Widget of Padding
                  '${_currentFortune}',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
            ),

            ElevatedButton(
                onPressed: _randomFortune,
                child: Text('My Fortune')), // ElevatedButton

               
          ],
        ),
      ),
    );
  }
}
