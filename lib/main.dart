import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Country Generator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CountryPage(),
    );
  }
}

class CountryPage extends StatefulWidget {
  @override
  _CountryPageState createState() => _CountryPageState();
}

class _CountryPageState extends State<CountryPage> {
  final List<String> countries = [
    'USA',
    'Canada',
    'Mexico',
    'Germany',
    'France',
    'Japan',
  ];

  String currentCountry = 'USA';

  void generateNextDestination() {
    setState(() {
      currentCountry = (countries..shuffle()).first;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Country Generator'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Your next destination is:',
              style: TextStyle(fontSize: 30),
            ),
            Text(
              '$currentCountry',
              style: TextStyle(fontSize: 50),
            ),
            ElevatedButton(
              child: Text('Generate next destination'),
              onPressed: generateNextDestination,
            ),
          ],
        ),
      ),
    );
  }
}
