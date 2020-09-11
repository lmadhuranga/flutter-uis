import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EmojisDetailsPage extends StatefulWidget {

  final heroTag, foodName, pricePerItem, imgPath ;
  
  EmojisDetailsPage({this.heroTag, this.foodName, this.pricePerItem, this.imgPath });

  @override
  _EmojisDetailsPageState createState() => _EmojisDetailsPageState();
}

class _EmojisDetailsPageState extends State<EmojisDetailsPage> {
  var netPrice = 0.0;
  var quantity = 1;

  @override
  Widget build(BuildContext context) {
    var dWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.menu, color: Colors.black),
                Stack(
                  children: [
                    Container(
                      height: 45.0,
                      width: 45.0,
                      color: Colors.transparent,
                    ),
                    Container(
                      height: 40.0,
                      width: 40.0,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFFFE7D6A).withOpacity(0.3),
                            blurRadius: 6.0,
                            spreadRadius: 4.0,
                            offset: Offset(0.0, 4.0)
                          )
                        ],
                        color: Color(0xFFFE7D6A),
                        shape: BoxShape.circle
                      ),
                      child: Center(
                        child: Icon(Icons.shopping_cart, color:Colors.white,),
                      ),
                    ),
                    Positioned(
                      top: 1.0,
                      right: 4.0,
                      child: Container(
                        height: 12.0,
                        width: 12.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape:BoxShape.circle
                        ),
                        child: Center(
                          child: Text(
                            '1',
                            style: GoogleFonts.notoSans(
                              fontSize: 7.0,
                              textStyle: TextStyle(color: Colors.red)
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Text(
              widget.foodName,
              style: GoogleFonts.notoSans(
                fontWeight: FontWeight.w800,
                fontSize: 27.0,
              ),
            ),
          ),
          SizedBox(height: 40.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Hero(
                tag: this.widget.heroTag, 
                child: Container(
                  height: 200.0,
                  width: 200.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(widget.imgPath),
                      fit: BoxFit.cover
                    )
                  ),
                ),
              ),
              SizedBox(width: 15.0,),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 45.0,
                        width: 40.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xFFFE7D6A).withOpacity(0.1),
                              blurRadius: 6.0,
                              spreadRadius: 6.0,
                              offset: Offset(5.0, 11.0)
                            )
                          ]
                        ),
                      ),
                      Container(
                        height: 50.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Colors.white,
                        ),
                        child: Center(
                          child: Icon(
                            Icons.favorite_border,
                            color: Color(0xFFFE7D6A),
                            size: 25.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  Stack(
                    children: [
                      Container(
                        height: 45.0,
                        width: 40.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xFFFE7D6A).withOpacity(0.1),
                              blurRadius: 6.0,
                              spreadRadius: 6.0,
                              offset: Offset(5.0, 11.0)
                            )
                          ]
                        ),
                      ),
                      Container(
                        height: 50.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Colors.white,
                        ),
                        child: Center(
                          child: Icon(
                            Icons.favorite_border,
                            color: Color(0xFFFE7D6A),
                            size: 25.0,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
          SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 70.0,
                width: 125.0,
                color: Colors.white,
                child: Center(
                  child: Text(
                    '\$' + (int.parse(widget.pricePerItem) + quantity).toString(),
                    style: GoogleFonts.notoSans(
                      fontSize: 40.0,
                      color: Color(0xFF5E6166),
                      fontWeight: FontWeight.w500
                    ),
                  ),
                ),
              ),
              Container(
                height: 60.0,
                width: 225.0,
                decoration: BoxDecoration(
                  color: Color(0xFFFE7D6A),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    bottomLeft: Radius.circular(10.0)
                  )
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 40.0,
                      width: 105.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white
                      ),
                      child: Row(
                        children: [
                          IconButton(
                            iconSize: 17.0,
                            icon: Icon(Icons.remove),
                            color: Color(0xFFFE7D6A),
                            onPressed: (){
                              adjustQuantity('Minus');
                            }
                          ),
                          Text(
                            quantity.toString(),
                            style: GoogleFonts.notoSans(
                              fontSize: 14.0,
                              color: Color(0xFFFE7D6A),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          IconButton(
                            iconSize: 17.0,
                            icon: Icon(Icons.add),
                            color: Color(0xFFFE7D6A),
                            onPressed: (){
                              adjustQuantity('Plus');
                            }
                          ),
                        ],
                      ),
                    ),
                    Text(
                      'Add to card',
                      style: GoogleFonts.notoSans(
                        fontSize: 15.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w400
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              'Featured',
              style: GoogleFonts.notoSans(
                fontSize: 16.0,
                fontWeight: FontWeight.w700
              ),
            ),
          ),
          Container(
            height: 225.0,
            width: dWidth,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _builListItem('1'),
                _builListItem('2'),
              ],
            ),
          )
        ],
      ),
    );
  }

  _builListItem(String columnNumber) {
    return Padding(
      padding: EdgeInsets.all(15.0),
      child: Column(
        children: <Widget>[
          //Don't do this in a real app. 
          if(columnNumber == '1')
          _builColumnItem('assets/emojis/cheese.png', 'Sweet cheese', '11', Color(0xFFFBD6F5)),
          if(columnNumber == '1')
          SizedBox(height: 15.0),
          if(columnNumber == '1')
          _builColumnItem('assets/emojis/popcorn.png', 'Sweet popcorn', '11', Color(0xFFFBD6F5)),
          if(columnNumber == '2')
          _builColumnItem('assets/emojis/taco.png', 'Tacos sdfsdf', '6', Color(0xFFC2E3FE)),
          if(columnNumber == '2')
            SizedBox(height: 15.0),
          if(columnNumber == '2')
          _builColumnItem('assets/emojis/sandwich.png', 'Sandwich', '6', Color(0xFFD7FADA)),
        ],
      ),
    );
  }

  _builColumnItem(String imgPath, String foodName, String price, Color bgColor) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 210.0,
          child: Row(
            children: [
              Container(
                height: 75.0,
                width: 75.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7.0),
                  color: bgColor
                ),
                child: Center(
                  child: Image.asset(imgPath, height: 50.0, width: 50.0),
                ),
              ),
              SizedBox(width: 20.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    foodName,
                    style: GoogleFonts.notoSans(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w800
                    ),
                  ),
                  Text(
                    '\$' + price,
                    style: GoogleFonts.lato(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                      textStyle: TextStyle(
                        color: Color(0xFFFE7D6A)
                      )
                    ),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }

  adjustQuantity(pressed) {
    switch (pressed) {
      case 'Plus':
        setState(() {
          quantity += 1;
        });
        return; 
      case 'Minus':
      setState(() {
        if(quantity != 0){
          quantity -=1;
        }
      }); 
      return;
    }
  }
}