
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
        appBar: AppBar(
          title: const Text('Ui List Page'),
        ),
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
              ButtonTheme(
                minWidth: minwidth,
                child: RaisedButton(
                  child: Text('Surfin'),
                  onPressed: () {
                    Navigator.pushNamed(context, '/surfin');
                  },
                ),
              ),
              ButtonTheme(
                minWidth: minwidth,
                child: RaisedButton(
                  child: Text('Cookies'),
                  onPressed: () {
                    Navigator.pushNamed(context, '/cookies');
                  },
                ),
              ),
              ButtonTheme(
                minWidth: minwidth,
                child: RaisedButton(
                  child: Text('Dumpling'),
                  onPressed: () {
                    Navigator.pushNamed(context, '/dumplings');
                  },
                ),
              ),
              ButtonTheme(
                minWidth: minwidth,
                child: RaisedButton(
                  child: Text('Fruit Cook Book'),
                  onPressed: () {
                    Navigator.pushNamed(context, '/fruitcookbook');
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
