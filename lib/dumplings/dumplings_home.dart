import 'package:Flutter_UI/dumplings/donut_page.dart';
import 'package:flutter/material.dart';

class DumplingsPage extends StatefulWidget {
  @override
  _DumplingsPageState createState() => _DumplingsPageState();
}

class _DumplingsPageState extends State<DumplingsPage> {
  @override
  Widget build(BuildContext context) {
    var dFront = 'OpenSans';
    var sWidth  = MediaQuery.of(context).size.width;
    var sHeight  = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color(0xFFF4F0F1),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width:185.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 50.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/dumplings/model2.jpg'),
                            fit: BoxFit.cover
                          ),
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                      ),
                      Text(
                        'Francis Austin',
                        style: TextStyle(
                          fontFamily: dFront,
                          fontWeight: FontWeight.bold,
                          fontSize: 17.0,
                          color: Color(0xFF42403F),
                        ),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  onPressed:(){},
                  icon: Icon(
                    Icons.cake,
                    color: Colors.grey.withOpacity(0.7),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 200.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/dumplings/dumpling.png'),
                fit: BoxFit.cover
              ),
            ),
          ),
          SizedBox(height: 20.0,),
          Center(
            child: Text(
              'Dumplings',
              style: TextStyle(
                fontFamily: dFront,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                color: Color(0xFF322F2E),
              ),
            ),
          ),
          SizedBox(height: 20.0,),
          Center(
            child: Text(
              '喜欢订阅',
              style: TextStyle(
                fontFamily: dFront,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                color: Color(0xFF808080),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              width: sWidth - 30.0,
              child: Text(
                'These tasty treats make a perfect appetizer or you can serve them as a main dish. For a main dish count on about 15 dumplings per person. Serve with hoisin sauce, hot Chinese-style mustard and toasted sesame seeds.',
                style: TextStyle(
                  fontFamily: dFront,
                  fontSize: 12.5,
                  color: Color(0xFF8E8989),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
            child: Container(
              width: sWidth,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(Icons.remove_circle_outline),
                    color: Color(0xFFC4C2C5),
                    onPressed:(){},
                  ),
                  Container(
                    width: 125.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '\$6.99',
                          style: TextStyle(
                            fontFamily: dFront,
                            fontWeight: FontWeight.bold,
                            fontSize: 25.0,
                            color: Color(0xFF322F2E),
                          ),
                        ),

                        Text(
                          '1 Order',
                          style: TextStyle(
                            fontFamily: dFront,
                            fontWeight: FontWeight.bold,
                            fontSize: 12.0,
                            color: Color(0xFF322F2E),
                          ),
                        ),                        
                      ],
                    ),                    
                  ),
                  IconButton(
                    icon: Icon(Icons.add_circle_outline),
                    // color: Color(0xFF4C4A4A),
                    onPressed:(){},
                  ),
                ],                
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.0, right: 20.0),
            child: InkWell(
              child: Container(
                height: 50.0,
                width: sWidth,
                color: Color(0xFF312F2E),
                child: Center(
                  child: Text(
                  'Add to card',
                  style: TextStyle(
                    fontFamily: dFront,
                    color: Colors.white,
                  ),
                ),
                ),
              ),
              onTap: (){
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => DonutPage(), 
                  )
                );
              },
            ),
          ),
          SizedBox(height: 3.0,),
          Center(
            child: Text(
              'Get the second order in half price',
              style: TextStyle(
                fontFamily: dFront,
                fontSize: 12.0,
                color: Color(0xFF8E8989),
              ),
            ),
          ),
        ],
      ),
    );
  }
}