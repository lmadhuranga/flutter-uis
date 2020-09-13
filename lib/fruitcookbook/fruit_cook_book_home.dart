import 'package:Flutter_UI/fruitcookbook/recipe_details.dart';
import 'package:flutter/material.dart';

class FruitCookBook extends StatefulWidget {
  @override
  _FruitCookBookState createState() => _FruitCookBookState();
}
 
class _FruitCookBookState extends State<FruitCookBook> {
  @override
  Widget build(BuildContext context) {

    var sWidth  = MediaQuery.of(context).size.width;
    var sHeight  = MediaQuery.of(context).size.height;
    var dFont = 'Montserrat';
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            height: sHeight,
            width: sWidth,
            color: Colors.transparent,
          ),
          Container(
            height:200.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/fruit-cookbook/greenapple.jpg'),
                fit: BoxFit.cover
              ),
            ),
          ),
          Positioned(
            left: 35.0,
            top: 75.0,
            child: Container(
              height:400.0,
              width: 335.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25.0),
                  topRight: Radius.circular(25.0),
                ),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 4.0,
                    spreadRadius: 5.0,
                    color: Colors.grey.withOpacity(0.2),
                    offset: Offset(0.0, -6.0)
                  )
                ],
              ),
              child: ListView(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 15.0, bottom: 10.0),
                    child: Text(
                      'Fruit Tecipes',
                      style: TextStyle(
                        fontFamily: dFont,
                        fontWeight: FontWeight.w400,
                        fontSize: 20.0,
                        color: Color(0xFF9E9E9E),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 15.0,
                      right: 25.0,
                      bottom: 10.0
                    ),
                    child: Text(
                      'Enjoy one of our deliciso fruit recipes',
                      style: TextStyle(
                        fontFamily: dFont,
                        fontWeight: FontWeight.w400,
                        fontSize: 14.0,
                        color: Color(0xFF9E9E9E),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 25.0, bottom: 10.0),
                    child: Container(
                      height: 275.0,
                      width: 310.0,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          _buildFoodCard('Fruit Salad', '248kcal', 'assets/fruit-cookbook/salad.png'),
                          _buildFoodCard('Apple Pie', '124kcal', 'assets/fruit-cookbook/applepie.png'),
                          _buildFoodCard('Green Salad', '241kcal', 'assets/fruit-cookbook/greensalad.png')
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 15.0,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15.0,),
                  child: Text(
                    'Your Favorites',
                    style: TextStyle(
                      fontFamily: dFont,
                      fontWeight: FontWeight.bold,
                      fontSize: 17.0,
                    ),
                  ),
                ),
                SizedBox(height: 20.0,),
                Padding(
                  padding: EdgeInsets.only(left: 25.0, right: 15.0),
                  child: Container(
                    width: sWidth - 45.0,
                    child: Container(
                      width: sWidth - 45.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    height:100.0,
                                    width: 150.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15.0),
                                      color: Color(0xFF77E8CB),
                                    ),
                                  ),
                                  Positioned(
                                    top:25.0,
                                    left: 60.0,
                                    child: Container(
                                      height:100.0,
                                      width: 100.0,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage('assets/fruit-cookbook/applepie.png'),
                                          fit: BoxFit.cover
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 15.0,),
                              Text(
                                'Apple Pie',
                                style: TextStyle(
                                  fontFamily: dFont,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14.0,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    height:100.0,
                                    width: 150.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15.0),
                                      color: Color(0xFF77E8CB),
                                    ),
                                  ),
                                  Positioned(
                                    top:25.0,
                                    left: 60.0,
                                    child: Container(
                                      height:100.0,
                                      width: 100.0,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage('assets/fruit-cookbook/greensalad.png'),
                                          fit: BoxFit.cover
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 15.0,),
                              Text(
                                'Green Salad',
                                style: TextStyle(
                                  fontFamily: dFont,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14.0,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFoodCard(String title, String calCount, String imgPath) {
    var dFont = 'Montserrat';
    return InkWell(
      onTap: () {
         Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => RecipeDetails(
              heroTag: imgPath,
              calCount: calCount,
              dishName: title
            )
          )
        );
      },
      child: Padding(
        padding: EdgeInsets.only(left: 25.0, top: 10.0, bottom: 10.0),
        child: Stack(
          children: [
            Container(
              height:275.0,
              width: 200.0,
            ),
            Positioned(
              top: 7.0,
              child: Container(
                height:250.0,
                width: 175.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Color(0xFF20D3D2),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 15.0,),
                      child: Text(
                        title,
                        style: TextStyle(
                          fontFamily: dFont,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(height: 7.0,),
                    Padding(
                      padding: EdgeInsets.only(left: 15.0,),
                      child: Text(
                        'A refreshing and incredible testing fruit salad',
                        style: TextStyle(
                          fontFamily: dFont,
                          fontWeight: FontWeight.w400,
                          fontSize: 12.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(height: 25.0,),
                    Padding(
                      padding: EdgeInsets.only(left: 15.0,),
                      child: Text(
                        calCount,
                        style: TextStyle(
                          fontFamily: dFont,
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(height: 25.0,),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 90.0,
              child: Hero(
                tag: imgPath,
                child: Container(
                  height:110.0,
                  width:110.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(imgPath),
                      fit: BoxFit.cover
                    ),
                  ),
                ),
              ),
            ),
          ],
        )
      ),
    );
  }
}