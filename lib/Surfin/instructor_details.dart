import 'package:Flutter_UI/Surfin/Models/Instructor.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class InstructorDetails extends StatefulWidget {
  final Instructor selectedInstructor;

  InstructorDetails({this.selectedInstructor});
  @override
  _InstructorDetailsState createState() => _InstructorDetailsState();
}

class _InstructorDetailsState extends State<InstructorDetails> {
  @override
  Widget build(BuildContext context) {

    var sWidth = MediaQuery.of(context).size.width;
    var sHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: sHeight,
            width: sWidth,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/surfin/surfing.jpg'),
                fit: BoxFit.cover
              )
            ),
          ),
          Positioned(
            top: sHeight - sHeight / 3 - 50.0,
            child: Container(
              padding: EdgeInsets.only(left: 20.0 ),
              height: sHeight / 3 + 50.0,
              width: sWidth,
              decoration: BoxDecoration(
                color: Color(0xFFFAF6ED),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(25.0), topRight: Radius.circular(25.0)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 25.0,),
                  Text(
                    widget.selectedInstructor.instructorName,
                    style: GoogleFonts.tinos(
                      fontSize: 25.0,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                  SizedBox( height: 7.0, ),
                  Text(
                    'Santa Monica CA',
                    style: GoogleFonts.sourceCodePro(
                      fontSize: 25.0,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF5E5B54)
                    ),
                  ),
                  SizedBox(height: 7.0,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SmoothStarRating(
                            allowHalfRating: false,
                            starCount: 5,
                            rating: 4.0,
                            size: 15.0,
                            color: Color(0xFFF36F32),
                            borderColor: Color(0xFFF35F32),
                            spacing: 0.0,
                          ),
                          SizedBox(width: 3.0,),
                          Text(
                            '4.7',
                            style: GoogleFonts.sourceCodePro(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFFD57843),
                            ),
                          ),
                          SizedBox(height: 3.0,),
                          Text(
                            '(200 Reviews)',
                            style: GoogleFonts.sourceCodePro(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFFC2C0B6),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5.0,),
                      Text('Hello, My name is Cora ! I am from Santa Monica, California. I have more than 10 years of experience as a surf instructor and would love to help you...',
                        style: GoogleFonts.sourceCodePro(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF201F1C)
                        ),
                      ),
                      SizedBox(height: 5.0,),
                      Text(
                        'Read More',
                        style: GoogleFonts.sourceCodePro(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFF36F32)
                        ),
                      ),
                      SizedBox(height: 10.0,),
                      Container(
                        width: 150.0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '200',
                                  style: GoogleFonts.tinos(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.w500
                                  ),
                                ),
                                Text(
                                  'Reiview',
                                  style: GoogleFonts.sourceCodePro(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF5E5B54)
                                  ),
                                )
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '4',
                                  style: GoogleFonts.tinos(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.w500
                                  ),
                                ),
                                Text(
                                  'Programs',
                                  style: GoogleFonts.sourceCodePro(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF5E5B54)
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: 90.0,
              width: 150.0,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '>',
                      style: GoogleFonts.sourceSansPro(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.white
                      ),
                    ),
                    Text(
                      'Availability',
                      style: GoogleFonts.sourceSansPro(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.white
                      ),
                    )
                  ],
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0)),
                color: Color(0xFFFE6D2E)
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 15.0, top:30.0),
              child: Container(
                height: 40.0,
                width: 40.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFA4B2AE),
                ),
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    size: 20.0,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                )
              )
            ),
          ),
           Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.only(right: 15.0, top:30.0),
              child: Container(
                height: 40.0,
                width: 40.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFA4B2AE),
                ),
                child: Center(
                  child: Icon(
                    Icons.favorite_border,
                    size: 20.0,
                    color: Colors.white,
                  ),
                ),
              )
            ),
          ),
          Positioned(
            top: (sHeight - sHeight / 3 ) / 2,
            left: (sWidth / 2) - 75.0,
            child: Container(
              height: 40.0,
              width: 150.0,
              decoration: BoxDecoration(
                color: Color(0xFFA4B2AE),
                borderRadius: BorderRadius.circular(20.0)
              ),
              child: Center(
                child: Text(
                  'Explore Programs',
                  style: GoogleFonts.sourceSansPro(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.white
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: sHeight - sHeight / 3 - 80.0,
            right: 25.0,
            child: Hero(
              tag: widget.selectedInstructor.instructorPic,
              child: Container(
                height: 100.0,
                width: 100.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(widget.selectedInstructor.instructorPic),
                    fit: BoxFit.cover
                  ),
                  borderRadius: BorderRadius.circular(10.0)
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}