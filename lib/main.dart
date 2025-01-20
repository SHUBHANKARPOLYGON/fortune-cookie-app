import 'package:flutter/material.dart';

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
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
   MyHomePage({super.key});

  String _currentFortune = "";
  

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  final _fortuneList = [
    "You will find happiness with a new love.",
    "You will have a great day today.",
    "You will have a great day tomorrow.",
    "You will have a great day the day after tomorrow.",
    "You will have a great day the day after the day after tomorrow.",
    "You will have a great day the day after the day after the day after the day after tomorrow.",
    "You will have a great day the day after the day after the day after the day after the day after tomorrow.",
  ];

  void _randomFortune(){
    
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
              '${_fortuneList[_counter % _fortuneList.length]}',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
