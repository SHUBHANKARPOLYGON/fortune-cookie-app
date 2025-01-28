import 'package:flutter/material.dart';
import 'dart:math';

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
  int _counter = 0;
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
  ];

  void _randomFortune() {
    var random = Random();
    int fortune = random.nextInt(_fortuneList.length);
    setState(() {
      _currentFortune = _fortuneList[fortune]; 
    });

    print(_currentFortune);
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Fortune Cookie"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Your Fortune is:",
            ),
            Text(
              '${_currentFortune }',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _randomFortune,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
