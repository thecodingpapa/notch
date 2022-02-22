import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notch/sectioned.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
    );
  }

  ListView _body() {
    return ListView(
      padding: EdgeInsets.symmetric(vertical: 16),
      children: [
        const SizedBox(
          height: 100,
        ),
        Sectioned(),
        Sectioned(),
        Sectioned(),
        const SizedBox(
          height: 600,
        ),
      ],
    );
  }
}
