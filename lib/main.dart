import 'package:flutter/material.dart';
import 'home_page.dart';

// the entry point of the application
void main() {
  runApp(const MyApp());
}

// a stateless class widget
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lab Test',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(),
    );
  }
}
