import 'package:Flutter_UI/Surfin/Models/Instructor.dart';
import 'package:Flutter_UI/Surfin/instructor_details.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListInstructors extends StatefulWidget {
  @override
  _ListInstructorsState createState() => _ListInstructorsState();
}

class _ListInstructorsState extends State<ListInstructors> {
  @override
  Widget build(BuildContext context) {
    final sWidth =  MediaQuery.of(context).size.width;
    final instructors = allInstructors;
    return Scaffold(
      backgroundColor: Color(0xFFFAF6ED),
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back), 
                onPressed: () {
                  Navigator.pop(context);
                }
              ),
              IconButton(
                icon: Icon(Icons.arrow_forward), 
                onPressed: () {
                  Navigator.pop(context);
                }
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 15.0,
              right: 15.0
            ),
            child: Row(
              children: [
                Text(
                  'Santa Monica, Ca',
                  style: GoogleFonts.tinos(
                    fontSize: 25.0,
                    fontWeight: FontWeight.w500
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.keyboard_arrow_down),
                  onPressed: (){},
                ),
              ],
            )
          ),          
          Padding(
            padding: EdgeInsets.only(
              left: 15.0,
              right: 15.0
            ),
            child: Text(
              'Best Surfing Instrucotrs in Sanfransisco',
              style: GoogleFonts.sourceSansPro(
                fontSize: 15.0,
                fontWeight: FontWeight.w400,
                color: Color(0xFF5E5B54)
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 15.0,
              right: 15.0
            ),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {},
                ),
                hintText: 'Search',
                hintStyle: GoogleFonts.sourceSansPro(
                  fontSize: 17.0,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF5E5B54)
                ),
                suffixIcon: IconButton(
                  icon: Icon(Icons.filter_list),
                  onPressed: (){},
                )
              ),
            ),
          ),
          Container(
            height: sWidth,
            child: GridView.count(
              crossAxisCount: 3,
              crossAxisSpacing: 1,
              mainAxisSpacing: 1,
              childAspectRatio: 0.67,
              primary: false,
              children: [
                ...instructors.map((e) {
                  return buildInstructorGrid(e);
                }).toList(),
              ],
            ),
          )
        ],
      ),
    );
  }

  buildInstructorGrid(Instructor instructor) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => InstructorDetails(selectedInstructor: instructor),
          )
        );
      },
      child: Padding(
        padding: EdgeInsets.all(5.0),
        child: Stack(
          children: [
            Container(
              width: 100.0,
              color: Colors.transparent,
            ),
            Positioned(
              left: 12.0,
              top: 15.0,
              child: Hero(
                tag: instructor.instructorPic,
                child: Container(
                  height: 110.0,
                  width: 85.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7.0),
                    image: DecorationImage(
                      image: AssetImage(instructor.instructorPic),
                      fit: BoxFit.cover
                    )
                  ),
                ),
              ),
            ),
            Positioned(
              left: 22.0,
              top: 138.0,
              child: Column(
                children: [
                  Text(
                    instructor.instructorName,
                    style: GoogleFonts.sourceSansPro( fontSize: 12.0 ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.grey.withOpacity(0.5),
                        size: 15.0,
                      ),
                      SizedBox(width: 3.0,),
                      Text(
                        instructor.rating,
                        style: GoogleFonts.sourceSansPro(fontSize: 11.0),
                      )
                    ],
                  )
                ],
              )
            )
          ],
        ),
      ),
    );
  }
}