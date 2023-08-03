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
                  bool book = false;
                  bool lock = false;
                  final subTittle =
                      widget.list_course[index]['duration'] != null
                          ? "${widget.list_course[index]['duration']} min"
                          : widget.list_course[index]['lesson'] != null
                              ? "${widget.list_course[index]['lesson']} lessons"
                              : widget.list_course[index]['date_start'];
                  if (widget.list_course[index]['locked'] != null) {
                    lock = widget.list_course[index]['locked'];
                  }
                  if (widget.list_course[index]['book_opt'] != null) {
                    book = true;
                  }
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
                      Container(
                        height: 140,
                        // child: Image.asset(
                        //   "assets/${widget.list_course[index]['image']}",
                        //   height: 140,
                        // ),
                        child: Image.asset(
                          "assets/Frame_122.png",
                          height: 140,
                        ),
                        // child: Placeholder(),
                      ),
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
                              "${widget.list_course[index]['name']}",
                              overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.inter(
                                  fontSize: 16, fontWeight: FontWeight.w700),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(12, 16, 0, 0),
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "$subTittle",
                                  style: GoogleFonts.inter(
                                      color: Color.fromARGB(210, 134, 142, 150),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500),
                                ),
                                book
                                    ? InkWell(
                                        child: Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              8, 0, 8, 0),
                                          child: Container(
                                            height: 26,
                                            width: 62,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    width: 1,
                                                    color: Color(0xFF598BED)),
                                                borderRadius:
                                                    BorderRadius.circular(100)),
                                            child: Center(
                                              child: Text(
                                                "book",
                                                style: GoogleFonts.inter(
                                                    color: Color(0xFF598BED),
                                                    fontSize: 12,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                    : lock
                                        ? InkWell(
                                            child: Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        8, 0, 8, 0),
                                                child: Icon(
                                                  CupertinoIcons.lock,
                                                  color: Color(0xFF6D747A),
                                                )),
                                          )
                                        : SizedBox()
                              ],
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
