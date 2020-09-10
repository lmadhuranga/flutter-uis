import 'package:curved_designs/Emojis/DashboardPage.dart';
import 'package:curved_designs/curveddesigns/HealthyFood.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData( 
        primarySwatch: Colors.blue, 
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // home: HealthyFood(title: 'Flutter Demo Home Page'),
      // home: HealthyFood(title: 'Flutter Demo Home Page'),
      home: DashboardPage(),
    );
  }
}
