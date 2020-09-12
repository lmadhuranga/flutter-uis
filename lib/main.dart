import 'package:curved_designs/Emojis/DashboardPage.dart';
import 'package:curved_designs/HomePage.dart';
import 'package:curved_designs/Surfin/ListInstroctors.dart';
import 'package:curved_designs/cookies/cookies_home.dart';
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
        // brightness: Brightness.dark,
      ),
      // home: HealthyFood(title: 'Flutter Demo Home Page'),
      // home: HealthyFood(title: 'Flutter Demo Home Page'),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/healthFood': (context) => HealthyFood(),
        '/food': (context) => DashboardPage(),
        '/surfin': (context) => ListInstructors(),
        '/cookies': (context) => CookiesHomePage()
      },
    );
  }
}
