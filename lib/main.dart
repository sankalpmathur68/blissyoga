import 'package:blissyoga/homepage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: render_pages(),
    );
  }
}

class render_pages extends StatefulWidget {
  const render_pages({super.key});

  @override
  State<render_pages> createState() => _render_pagesState();
}

class _render_pagesState extends State<render_pages> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    MyHomePage(),
    Page2(),
    Page3(),
    Page4(),
    Page5(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color.fromARGB(220, 89, 139, 237),
        unselectedItemColor: Color.fromARGB(208, 109, 116, 122),
        unselectedLabelStyle: GoogleFonts.inter(
          fontSize: 10,
          fontWeight: FontWeight.w500,
          color: Color.fromARGB(208, 109, 116, 122),
        ),
        showUnselectedLabels: true,
        selectedLabelStyle: GoogleFonts.inter(
            fontSize: 10,
            fontWeight: FontWeight.w500,
            color: Color.fromARGB(220, 89, 139, 237)),
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 6),
              child: Image.asset("assets/home.png"),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 6),
              child: Image.asset("assets/Icon_0.png"),
            ),
            label: 'Learn',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 6),
              child: Image.asset("assets/Icon.png"),
            ),
            label: 'Hub',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 6),
              child: Image.asset("assets/Comment.png"),
            ),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 6),
              child: Image.asset("assets/Ellipse_14.png"),
            ),
            label: 'Profile',
          ),
        ],
      ),
      body: _pages[_currentIndex],
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Page4 extends StatelessWidget {
  const Page4({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Page5 extends StatelessWidget {
  const Page5({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
