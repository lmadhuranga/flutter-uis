import 'package:curved_designs/curveddesigns/DetailsPage.dart';
import 'package:flutter/material.dart';

class HealthyFood extends StatefulWidget {
  HealthyFood({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HealthyFoodState createState() => _HealthyFoodState();
} 


class _HealthyFoodState extends State<HealthyFood> { 
  @override
  Widget build(BuildContext context) { 
    double dHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xFF21BFBD),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only( top:15.0, left:10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(icon: Icon(Icons.arrow_back_ios),
                color: Colors.white,
                onPressed: (){},
                ),
                Container(
                  width: 125.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(icon: Icon(Icons.filter_list), color: Colors.white, onPressed: (){}),
                      IconButton(icon: Icon(Icons.menu), color: Colors.white, onPressed: (){}),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 40.0),
          Padding(
            padding: EdgeInsets.only(left: 40.0),
            child: Row(
              children: [
                Text('Healthy',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0
                )),
                SizedBox(width: 10.0,),
                Text(
                  'Food',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    color: Colors.white,
                    fontSize: 25.0
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 40.0,),
          Container(
            height: dHeight-185.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only( topLeft: Radius.circular(75.0)),
            ),
            child: ListView(
              primary: false,
              padding: EdgeInsets.only(left: 25.0, right:20.0),
              children: [
                Padding(padding: EdgeInsets.only(top: 45.0),
                child: Container(
                  height: dHeight - 300.0,
                  child: ListView(
                    children: [
                      _buildFoodItem('assets/curveddesigns/plate1.png', 'Salmon bowl', '\$24.00'),
                      _buildFoodItem('assets/curveddesigns/plate2.png', 'Spring bowl', '\$24.00'), 
                      _buildFoodItem('assets/curveddesigns/plate6.png', 'Avocado bowl', '\$24.00'), 
                      _buildFoodItem('assets/curveddesigns/plate5.png', 'Berry bowl', '\$24.00'), 
                    ],
                  ),
                ),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 65.0,
                      width: 60.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          style: BorderStyle.solid,
                          width: 1.0
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Center(
                        child: Icon(Icons.search, color: Colors.black),
                      ),
                    ),
                    Container(
                      height: 65.0,
                      width: 60.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          style: BorderStyle.solid,
                          width: 1.0
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Center(
                        child: Icon(Icons.shopping_basket, color: Colors.black),
                      ),
                    ),
                    Container(
                      height: 65.0,
                      width: 120.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          style: BorderStyle.solid,
                          width: 1.0
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                        color: Color(0xFF1C1428)
                      ),
                      child: Center(
                        child: Text(
                          'Checkout',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            color: Colors.white,
                            fontSize: 15.0
                          ),
                        )
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildFoodItem(String imgPath, String foodName, String price) {
    return Padding(
      padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
      child: InkWell(
        onTap: (){
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context)=> DetailsPage(heroTag:imgPath, foodName:foodName, foodPrice:price),
            )
          );
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(
                children: [
                  Hero(
                    tag: imgPath, 
                    child: Image(
                      image: AssetImage(imgPath),
                      fit: BoxFit.cover,
                      height: 75.0,
                      width: 75.0,
                    )
                  ),
                  SizedBox(width: 10.0,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        foodName,
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      Text(
                        price,
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 15.0,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            IconButton(
              icon: Icon(Icons.add),
              color: Colors.black,
              onPressed: () {

              }
            ),
          ],
        ),
      ),
    );
  }
}