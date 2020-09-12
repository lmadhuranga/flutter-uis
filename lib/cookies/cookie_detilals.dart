import 'package:flutter/material.dart';

class CookieDetails extends StatelessWidget {
  final assetPath, cookieprice, cookiename;

  CookieDetails({Key key, this.assetPath, this.cookieprice, this.cookiename});

  @override
  Widget build(BuildContext context) {
    var dFont = 'Varela';
    var sWidth  = MediaQuery.of(context).size.width;
    var sHeight  = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Color(0xFF545D68),
          ),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Pick',
          style: TextStyle(
            fontFamily: dFont, 
            fontSize: 20.0,
            color: Color(0xFF545D68),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.notifications_none,
              color: Color(0xFF545D68),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
      body: ListView(
        children: [
          SizedBox(height: 15.0,),
          Padding(
            padding: EdgeInsets.only(left: 20.0, right: 20.0),
            child: Text(
              'Cookie',
              style: TextStyle(
                fontFamily: dFont,
                fontSize: 42.0,
                color: Color(0xFF17532),
              ),
            ),
          ),
          SizedBox(height: 15.0,),
          Hero(
            tag: assetPath,
            child: Image.asset(
              assetPath,
              height: 150.0,
              width: 100.0,
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(height: 20.0,),
          Center(
            child: Text(
              cookiename,
              style: TextStyle(
                fontFamily: dFont,
                fontSize: 24.0,
                color: Color(0xFF575E67),
              ),
            ),
          ),
          SizedBox(height: 20.0,),
          Center(
            child: Container(
              width: sWidth - 50.0,
              child: Text(
                'Cold, creamy ice cream sandwiched between delicious deluxe cookies. Pick your favorite deluxe cookies and ice cream flavor.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: dFont,
                  fontSize: 16.0,
                  color: Color(0xFFB4B8B9),
                ),
              ),
            ),
          ),
          SizedBox(height: 20.0,),
          Center(
            child: Container(
              width: sWidth - 50.0,
              height: 50.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                color: Color(0xFFF17532)
              ),
              child: Center(
                child: Text(
                  'Add to Card',
                  style: TextStyle(
                    fontFamily: dFont,
                    fontSize: 14.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            )
          ),
        ],
      ),
    );
  }
}