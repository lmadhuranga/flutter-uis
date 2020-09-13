import 'package:flutter/material.dart';

class DonutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var sWidth  = MediaQuery.of(context).size.width;
    var sHeight  = MediaQuery.of(context).size.height;
    var dFont = 'OpenSans';
    return Scaffold(
      body: Container(
        height: sHeight,
        width: sWidth,
        child: Stack(
          children: [
            Container(
              height: 250.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/dumplings/icecream.jpg'),
                  fit: BoxFit.cover
                ),
              ),
            ),
            Container(
              height:250.0,
              color: Colors.white.withOpacity(0.9),
            ),
            Padding(
              padding: EdgeInsets.only(top: 35.0, left: 30.0, right: 30.0),
              child: Container(
                padding: EdgeInsets.only(left: 45.0),
                height:50.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  color: Colors.white,
                ),
                child: Center(
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.search,
                        size: 16.0,
                        color: Color(0xFF999798),
                      ),
                      hintText: 'Find Something special',
                      hintStyle: TextStyle(
                        fontFamily: dFont,
                        fontSize: 12.0,
                        color: Color(0xFF999798),
                      )
                    ),
                  )
                ),
              ),
            ),
            Positioned(
              top: 110.0,
              left: 30.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'The Best Food',
                    style: TextStyle(
                      fontFamily: dFont,
                      fontWeight: FontWeight.w600,
                      fontSize: 25.0,
                      color: Color(0xFF312F2E),
                    ),
                  ),
                  Text(
                    'In only 20 Mins',
                    style: TextStyle(
                      fontFamily: dFont,
                      fontWeight: FontWeight.w600,
                      fontSize: 25.0,
                      color: Color(0xFF312F2E),
                    ),
                  ),
                  SizedBox(height: 15.0,),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Color(0xFF7C7574),
                        size: 15.0
                      ),
                      SizedBox(width: 10.0,),
                      Text(
                        '951 Rue Gleichner Coves, Suite 648',
                        style: TextStyle(
                          fontFamily: dFont,
                          fontWeight: FontWeight.w600,
                          fontSize: 12.0,
                          color: Color(0xFF7C7274),
                        ),
                      ),
                    ],                      
                  ),
                ],
              ),
            ),
            Positioned(
              top: 225.0,
              child: Container(
                height:sHeight - 225.0,
                width: sWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0)
                  ),
                  color: Colors.white
                ),
                child: ListView(
                  padding: EdgeInsets.only(
                    left: 30.0,
                    right: 30.0,
                  ),
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Weekly Special',
                          style: TextStyle(
                            fontFamily: dFont,
                            fontWeight: FontWeight.w600,
                            // fontSize: 20.0,
                            color: Color(0xFFC4C2C2),
                          ),
                        ),
                        IconButton(
                          icon: Icon(Icons.rotate_left),
                          color: Color(0xFFC4C2C2),
                          onPressed:(){},
                        ),
                      ],                      
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 150.0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height:50.0,
                                width: 50.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25.0),
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 4.0,
                                      spreadRadius: 3.0,
                                      color: Color(0xFFD1C0B9),
                                    )
                                  ],
                                  image: DecorationImage(
                                    image: AssetImage('assets/dumplings/chefhat.jpg'),
                                    fit: BoxFit.cover
                                  ),
                                ),
                              ),
                              Text(
                                'Gerald Jacobs',
                                style: TextStyle(
                                  fontFamily: dFont,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14.0,
                                  color: Color(0xFF353535),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          'Gerald Jacobs',
                          style: TextStyle(
                            fontFamily: dFont,
                            fontWeight: FontWeight.w600,
                            fontSize: 14.0,
                            color: Color(0xFF353535),
                          ),
                        ),

                      ],
                    ),
                    SizedBox(height: 15.0,),  
                    Container(
                      width: sWidth - 30.0,
                      child: Text(
                        'Our donuts have over 18 flavors and each of them will give you the different impression. Select any 6 donuts to make a package in a special price this week.',
                        style: TextStyle(
                          fontFamily: dFont,
                          fontSize: 12.5,
                          color: Color(0xFF939190),
                        ),
                      ),
                    ),
                    SizedBox(height: 15.0,),
                    Text(
                      '\$15.99',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Color(0xFF322F2E),
                      ),
                    ),
                    Image(
                      image: AssetImage('assets/dumplings/donuts.png'),
                      fit: BoxFit.cover,
                      height: 250.0,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}