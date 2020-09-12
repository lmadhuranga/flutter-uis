import 'package:flutter/material.dart';

class CookiesHomePage extends StatefulWidget {
  @override
  _CookiesHomePageState createState() => _CookiesHomePageState();
}

class _CookiesHomePageState extends State<CookiesHomePage> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  Widget build(BuildContext context) {
    var dFont = 'Varela';
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

            },
          )
        ],
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 20.0),
        children: [
          SizedBox(height: 15.0,),
          Text(
            'Categories',
            style: TextStyle(
              fontFamily: dFont,
              fontSize: 42.0,
              fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(height: 15.0,),
          TabBar(
            controller: _tabController,
            indicatorColor: Colors.transparent,
            labelColor: Color(0xFFC88D67),
            isScrollable: true,
            labelPadding: EdgeInsets.only(right: 45.0),
            unselectedLabelColor: Color(0xFFCDCDCD),
            tabs: [
              Tab(
                child: Text(
                  'Cookies',
                  style: TextStyle(
                    fontFamily: 'Varela',
                    fontSize: 21.0,
                  )
                ),
              ),
              Tab(
                child: Text(
                  'Cookie cake',
                  style: TextStyle(
                    fontFamily: 'Varela',
                    fontSize: 21.0,
                  )
                ),
              ),
              Tab(
                child: Text(
                  'Ice cream',
                  style: TextStyle(
                    fontFamily: 'Varela',
                    fontSize: 21.0,
                  )
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}