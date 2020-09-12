import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var sWidth  = MediaQuery.of(context).size.width;
    var sHeight  = MediaQuery.of(context).size.height;
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 6.0,
      color: Colors.transparent,
      elevation: 9.0,
      clipBehavior: Clip.antiAlias,
      child: Container(
        height: 50.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25.0),
            topRight: Radius.circular(25.0)
          ),
          color: Colors.white
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 50.0,
              width: sWidth / 2  - 40.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon( Icons.home, color: Color(0xFFEF7532) ),
                  Icon( Icons.person_outline,color: Color(0xFF676E79) ),
                ],
              ),
            ),
            Container(
              height: 50.0,
              width: sWidth / 2  - 40.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon( Icons.search, color: Color(0xFFEF7532) ),
                  Icon( Icons.shopping_cart,color: Color(0xFF676E79) ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}