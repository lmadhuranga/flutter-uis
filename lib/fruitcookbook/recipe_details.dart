import 'package:flutter/material.dart'; 
 
class RecipeDetails extends StatelessWidget { 
  final heroTag, dishName, calCount;

  RecipeDetails({Key key, this.heroTag, this.dishName, this.calCount}) ; 

  @override
  Widget build(BuildContext context) {
    final sWidth  = MediaQuery.of(context).size.width;
    final sHeight  = MediaQuery.of(context).size.height;
    var dFont = 'Montserrat';

    return Scaffold(
      body: Stack(
        children: [
          Container(
            height:225.0,
            color: Color(0xFF20D3D2),
          ),
          Positioned(
            left: sWidth / 2 + 25.0,
            bottom: sHeight - 175.0,
            child: Hero(
              tag: heroTag,
              child: Container(
                height:250.0,
                width: 250.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(heroTag),
                    fit: BoxFit.cover
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(top:20.0),
              child: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed:(){
                  Navigator.of(context).pop();
                },
              ),
            ),
          ),
          Positioned(
            top:190.0,
            child: Container(
              height:sHeight - 190.0,
              width: sWidth,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0),
                ),
              ),
              child: ListView(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 10.0,
                      left: 20.0,
                      right: 20.0,
                      bottom: 10.0,
                    ),
                    child: Container(
                      width: sWidth - 40.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            dishName,
                            style: TextStyle(
                              fontFamily: dFont,
                              fontWeight: FontWeight.w900,
                              fontSize: 22.0,
                            ),
                          ),
                          Container(
                            height:40.0,
                            width: 100.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.0),
                              color: Color(0xFF20D3D2),
                            ),
                            child: Center(
                              child: Text(
                                calCount,
                                style: TextStyle(
                                  fontFamily: dFont,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                  color: Colors.white
                                ),
                              ),
                            ),
                          ),
                        ],                        
                      ),                      
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 20.0, right: 20.0, bottom: 10.0, top: 5.0
                    ),
                    child: Text(
                      'A refreshin and incredible tasting fruit salad',
                      style: TextStyle(
                        fontFamily: dFont,
                        fontWeight: FontWeight.w400,
                        fontSize: 16.0,
                        color: Color(0xFFBBBBBB),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 20.0, right: 20.0, bottom: 10.0, top: 5.0,
                    ),
                    child: Text(
                      'Ingredients',
                      style: TextStyle(
                        fontFamily: dFont,
                        fontWeight: FontWeight.w900,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 20.0,
                      right: 20.0,
                      bottom: 10.0,
                      top: 5.0
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                       _buildIngredientRow('Strawberries',
                            'assets/fruit-cookbook/strawberries.png', '400g', sWidth),
                        SizedBox(height: 5.0),
                        Container(
                          height: 0.5,
                          color: Colors.grey.withOpacity(0.2),
                        ),
                        SizedBox(height: 5.0),
                      _buildIngredientRow('Blueberries',
                            'assets/fruit-cookbook/blueberries.png', '200g', sWidth),
                        SizedBox(height: 5.0),
                        Container(
                          height: 0.5,
                          color: Colors.grey.withOpacity(0.2),
                        ),
                        SizedBox(height: 5.0),
                        _buildIngredientRow(
                            'Kiwi', 'assets/fruit-cookbook/kiwi.png', '2', sWidth),
                        SizedBox(height: 5.0),
                        Container(
                          height: 0.5,
                          color: Colors.grey.withOpacity(0.2),
                        ),
                        SizedBox(height: 5.0),
                        _buildIngredientRow(
                            'Mango', 'assets/fruit-cookbook/mango.png', '1', sWidth),
                        SizedBox(height: 5.0),
                        Container(
                          height: 0.5,
                          color: Colors.grey.withOpacity(0.2),
                        ),
                        SizedBox(height: 15.0),
                        Text(
                          'Directions',
                          style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w900,
                        fontSize: 16.0,
                          )
                        ),                        
                        SizedBox(height: 15.0),

                        _buildBulletList('Slice all the fruits and place them into a large salad bowl', sWidth),
                      SizedBox(height: 15.0),
                      _buildBulletList('Combine any additional juices like lime juice or any fresh orange juice', sWidth)
                      ],
                    )
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  //Just a function to return text in a row
  _buildBulletList(String content, double screenWidth) {

    return Container(
      width: screenWidth,
      child: Row(
        children: [
          Container(
            height:8.0,
            width: 8.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.0),
              color: Color(0xFF25BEBD),
            ),
          ),
          SizedBox(height: 10.0,),
          Container(
            width: screenWidth - 60.0,
            child: Text(
              content,
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w400,
                fontSize: 12.0,
              ),
            ),
          ),
        ],
        
      )
    );
  }

  _buildIngredientRow(String title, String imgPath, String quantity, double screenWidth) { 
    var dFont = 'Montserrat';
    return Container(
      width: screenWidth,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 180.0,
            child: Row(
              children: [
                Container(
                  height:50.0,
                  width: 50.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(imgPath),
                      fit: BoxFit.contain
                    ),
                  ),
                ),
                SizedBox(width: 25.0,),
                Text(
                  title,
                  style: TextStyle(
                    fontFamily: dFont,
                    fontWeight: FontWeight.w400,
                    fontSize: 14.0,
                  ),
                ),
                
              ],
              
            ),
          ),
          Text(
            quantity,
            style: TextStyle(
              fontFamily: dFont,
              fontWeight: FontWeight.w400,
              fontSize: 14.0,
              color: Color(0xFFBBBBBB),
            ),
          ),
        ], 
      )
    );
  }
}