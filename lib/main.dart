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
      title: 'Incrementor',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blueGrey,
      ),
      home: const MyHomePage(title: 'Incremen2or'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int _record = 0;
  int _totalCounter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter += 2;
      _totalCounter++;
    });
  }

  void _resetCounter() {
    setState(() {
      if (_counter > _record) {
        _record = _counter;
      }
      _counter = 0;
      _totalCounter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(height: 100, color: Colors.transparent),
            const Text(
              'You have smashed the big button',
            ),
            Container(height: 5, color: Colors.transparent),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline3,
            ),
            Container(height: 5, color: Colors.transparent),
            const Text('times'),
            Container(height: 5, color: Colors.transparent),
            const Text('divided by two (/2) 😅 '),
            Container(height: 120, color: Colors.transparent),
            FloatingActionButton.large(
                onPressed: _incrementCounter,
                tooltip: 'Increment',
                child: const Icon(Icons.add)),
            Container(height: 50, color: Colors.transparent),
            ElevatedButton(
                onPressed: _resetCounter, child: const Text('Reset')),
            Container(height: 30, color: Colors.transparent),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Your high score is:',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                Container(width: 2, color: Colors.transparent),
                Text(
                  '$_record',
                  style: Theme.of(context).textTheme.bodyText2,
                ),
                Container(width: 3, color: Colors.transparent),
                Text('points', style: Theme.of(context).textTheme.bodySmall),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Total button hits in this session:',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                Container(width: 2, color: Colors.transparent),
                Text(
                  '$_totalCounter',
                  style: Theme.of(context).textTheme.bodyText2,
                ),
                Container(width: 3, color: Colors.transparent),
                Text('times', style: Theme.of(context).textTheme.bodySmall),
              ],
            ),
            Container(height: 10, color: Colors.transparent),
          ],
        ),
      ),
    );
  }
}
