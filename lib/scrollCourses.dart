import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class scrollCourse extends StatefulWidget {
  const scrollCourse(
      {required this.list_course, required this.title, required this.viewAll});
  final List list_course;
  final title;
  final Function viewAll;

  @override
  State<scrollCourse> createState() => _scrollCourseState();
}

class _scrollCourseState extends State<scrollCourse> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 24, 11, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "${widget.title}",
                style:
                    GoogleFonts.lora(fontWeight: FontWeight.w500, fontSize: 18),
              ),
              InkWell(
                onTap: () {
                  widget.viewAll();
                  print("view all clicked");
                },
                child: Row(
                  children: [
                    Text(
                      "View all",
                      textAlign: TextAlign.right,
                      style: GoogleFonts.inter(
                          color: Color.fromARGB(210, 134, 142, 150),
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: 7.75,
                    ),
                    Image.asset('assets/Icon_arrow.png')
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 24, 0, 0),
          child: Container(
            height: 280,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                // controller: _pageController,
                itemCount: widget.list_course.length,
                itemBuilder: (BuildContext context, int index) {
                  final subTittle =
                      widget.list_course[index]['duration'] != null
                          ? widget.list_course[index]['duration']
                          : widget.list_course[index]['total_lessons'] != null
                              ? widget.list_course[index]['total_lessons']
                              : widget.list_course[index]['date_start'];
                  return Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 16, 5),
                    // padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 1,
                          blurRadius: 2,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    width: 242,
                    height: 280,
                    child: Column(children: [
                      widget.list_course[index]['image'] != null
                          ? Image.asset(
                              "assets/${widget.list_course[index]['image']}",
                              height: 140,
                            )
                          : SizedBox(),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(12, 16, 0, 0),
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "${widget.list_course[index]['category'].toString().toUpperCase()}",
                              style: GoogleFonts.inter(
                                  color: Color.fromARGB(220, 89, 139, 237),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(12, 15, 0, 0),
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "${widget.list_course[index]['title']}",
                              style: GoogleFonts.inter(
                                  fontSize: 16, fontWeight: FontWeight.w700),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(12, 16, 0, 0),
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "$subTittle",
                              style: GoogleFonts.inter(
                                  color: Color.fromARGB(210, 134, 142, 150),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500),
                            )),
                      )
                    ]),
                  );
                }),
          ),
        )
      ],
    );
  }
}
