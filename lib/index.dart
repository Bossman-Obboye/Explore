import 'package:flutter/material.dart';
import 'package:my_first_application/home.dart';
import 'package:my_first_application/news.dart';
import 'package:my_first_application/places.dart';
import 'package:my_first_application/profile.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  bool isSelected = false;

  onTap(index) {
    setState(() {
      currentIndex = index;
      isSelected = true;
    });
  }

  List<Widget> pages = const [
    HomeView(),
    PlaceView(),
    NewsView(),
    ProfileView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffecf4da),
      body: IndexedStack(
        index: currentIndex,
        children: pages,
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                const BoxShadow(
                  color: const Color.fromARGB(178, 128, 177, 113),
                  spreadRadius: -5,
                  blurRadius: 20,
                  // offset: Offset(10, 10),
                ),
              ]),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30.0),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.white,
              // elevation: 0,
              selectedItemColor: const Color.fromARGB(255, 36, 158, 3),
              unselectedItemColor: const Color(0xff192815),
              onTap: onTap,
              currentIndex: currentIndex,
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.cloud_outlined), label: "Weather"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.location_on), label: "Places"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.newspaper), label: "News"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person), label: "Profile"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
