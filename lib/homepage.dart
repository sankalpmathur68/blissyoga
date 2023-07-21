import 'package:blissyoga/scrollCourses.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List programs = [
    {
      "title": "A complete guide for your new born baby",
      "category": "Lifestyle",
      "image": "Frame_122.png",
      'total_lessons': "16 lessons"
    },
    {
      "title": "Understanding of human behaviour",
      "category": "Working Parents",
      "image": "Frame_122.png",
      'total_lessons': "12 lessons"
    }
  ];
  List events = [
    {
      "title": "Understanding of human behaviour",
      "book_url": "https://book.com",
      "category": "babycare",
      "image": "young-woman-doing-natarajasana-exercise 1.png",
      "date_start": "13 Feb, Sunday"
    },
    {
      "title": "Understanding of human behaviour",
      "book_url": "https://book.com",
      "category": "babycare",
      "image": "young-woman-doing-natarajasana-exercise 1.png",
      "date_start": "13 Feb, Sunday"
    }
  ];
  List lesson_for_you = [
    {
      "title": "Understanding of human behaviour",
      "icon": "lock",
      "category": "babycare",
      "image": "young-woman-doing-natarajasana-exercise 1.png",
      "duration": "3 min"
    },
    {
      "title": "Understanding of human behaviour",
      "icon": "lock",
      "category": "babycare",
      "image": "young-woman-doing-natarajasana-exercise 1.png",
      "duration": "1 min"
    }
  ];
  PageController _pageController = PageController(viewportFraction: 0.7);
  @override
  Widget build(BuildContext context) {
    final currentHeight = MediaQuery.of(context).size.height;
    final currentWidth = MediaQuery.of(context).size.width;
    print(programs.length);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
          child: Column(
            children: [
              Container(
                width: currentWidth,
                margin: EdgeInsets.fromLTRB(0, 24, 0, 0),
                height: 276,
                decoration: BoxDecoration(
                  color: Color.fromARGB(220, 238, 243, 253),
                  // color: Colors.black
                ),
                child: Column(
                  children: [
                    Container(
                      width: currentWidth,
                      height: 56,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(220, 238, 243, 253),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(13, 16, 0, 0),
                            child: Image.asset(
                              "assets/Menu.png",
                              width: 24,
                              height: 24,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(16, 16, 14, 0),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset(
                                    "assets/msg.png",
                                    width: 24,
                                    height: 24,
                                  ),
                                ),
                                Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(
                                      Icons.notifications_outlined,
                                      color: Color.fromARGB(210, 134, 142, 150),
                                    )),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 8, 0, 0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Hello, Priya!",
                          style: GoogleFonts.lora(
                              color: Color.fromARGB(210, 8, 9, 10),
                              fontSize: 20),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 2, 0, 0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "What do you wanna learn today?",
                          style: GoogleFonts.inter(
                              color: Color.fromARGB(208, 109, 116, 122),
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.fromLTRB(16, 32, 16, 0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                GestureDetector(
                                  child: Container(
                                    width: 160,
                                    height: 48,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                          width: 1,
                                          color:
                                              Color.fromARGB(220, 89, 139, 237),
                                        ),
                                        borderRadius: BorderRadius.circular(8)),
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                20, 0, 0, 0),
                                            child: Row(
                                              children: [
                                                Image.asset(
                                                    width: 24,
                                                    height: 24,
                                                    'assets/bookmark.png'),
                                                SizedBox(
                                                  width: 12,
                                                ),
                                                Text(
                                                  'Programs',
                                                  style: GoogleFonts.inter(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Color.fromARGB(
                                                          220, 89, 139, 237)),
                                                )
                                              ],
                                            ),
                                          )
                                        ]),
                                  ),
                                ),
                                GestureDetector(
                                  child: Container(
                                    width: 160,
                                    height: 48,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                          width: 1,
                                          color:
                                              Color.fromARGB(220, 89, 139, 237),
                                        ),
                                        borderRadius: BorderRadius.circular(8)),
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                20, 0, 0, 0),
                                            child: Row(
                                              children: [
                                                Image.asset(
                                                    width: 20,
                                                    height: 20,
                                                    'assets/help-circle.png'),
                                                SizedBox(
                                                  width: 12,
                                                ),
                                                Text(
                                                  'Get help',
                                                  style: GoogleFonts.inter(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Color.fromARGB(
                                                          220, 89, 139, 237)),
                                                )
                                              ],
                                            ),
                                          )
                                        ]),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                GestureDetector(
                                  child: Container(
                                    width: 160,
                                    height: 48,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                          width: 1,
                                          color:
                                              Color.fromARGB(220, 89, 139, 237),
                                        ),
                                        borderRadius: BorderRadius.circular(8)),
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                20, 0, 0, 0),
                                            child: Row(
                                              children: [
                                                Image.asset(
                                                    width: 24,
                                                    height: 24,
                                                    'assets/book.png'),
                                                SizedBox(
                                                  width: 12,
                                                ),
                                                Text(
                                                  'Learn',
                                                  style: GoogleFonts.inter(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Color.fromARGB(
                                                          220, 89, 139, 237)),
                                                )
                                              ],
                                            ),
                                          )
                                        ]),
                                  ),
                                ),
                                GestureDetector(
                                  child: Container(
                                    width: 160,
                                    height: 48,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                          width: 1,
                                          color:
                                              Color.fromARGB(220, 89, 139, 237),
                                        ),
                                        borderRadius: BorderRadius.circular(8)),
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                20, 0, 0, 0),
                                            child: Row(
                                              children: [
                                                Image.asset(
                                                    'assets/trello.png'),
                                                SizedBox(
                                                  width: 12,
                                                ),
                                                Text(
                                                  'DD Tracker',
                                                  style: GoogleFonts.inter(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Color.fromARGB(
                                                          220, 89, 139, 237)),
                                                )
                                              ],
                                            ),
                                          )
                                        ]),
                                  ),
                                )
                              ],
                            ),
                          ],
                        )),
                  ],
                ),
              ),
              scrollCourse(
                  list_course: programs,
                  title: "Programs for you",
                  viewAll: () {}),
              scrollCourse(
                  list_course: events,
                  title: "Events and experiences",
                  viewAll: () {}),
              scrollCourse(
                  list_course: lesson_for_you,
                  title: "Lesson for you",
                  viewAll: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
