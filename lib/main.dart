import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Journey Generator',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const CountryPage(),
    );
  }
}

class CountryPage extends StatefulWidget {
  const CountryPage({super.key});

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
    'Italy',
    'Denmark',
    'Portugal',
    'Kazakhstan',
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Your next destination is:',
              style: TextStyle(fontSize: 30),
            ),
            Text(
              currentCountry,
              style: const TextStyle(fontSize: 50),
            ),
            ElevatedButton(
              onPressed: generateNextDestination,
              child: const Text('Generate next destination'),
            ),
          ],
        ),
      ),
    );
  }
}
