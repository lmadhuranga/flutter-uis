
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final minwidth = 150.0;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ui Collection',
      theme: ThemeData( 
        primarySwatch: Colors.blue, 
        visualDensity: VisualDensity.adaptivePlatformDensity,
        brightness: Brightness.dark,
      ),
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              ButtonTheme(
                minWidth: minwidth,
                child: RaisedButton(
                  child: Text('Health Food'),
                  onPressed: () {
                    Navigator.pushNamed(context, '/healthFood');
                  },
                ),
              ),
              ButtonTheme(
                minWidth: minwidth,
                child: RaisedButton(
                  child: Text('Food'),
                  onPressed: () {
                    Navigator.pushNamed(context, '/food');
                  },
                ),
              ),
            ]
          ),
        ),
      ),
    );
  }
}
