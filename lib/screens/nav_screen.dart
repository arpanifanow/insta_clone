import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:insta_clone/screens/home_screen.dart';
import 'package:insta_clone/screens/liike_screen.dart';
import 'package:insta_clone/screens/profile_screen.dart';
import 'package:insta_clone/screens/reel_screen.dart';
import 'package:insta_clone/screens/search_screen.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({super.key});

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  //initial home select
  int _selectedIndex = 0;

  //function called when click on navbar diff btn
  void _bottomNavBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  //nav btwn diff pages
  final List<Widget> _navDifPage = [
    HomeScreen(),
    SearchScreen(),
    ReelScreen(),
    LikeScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Text(
                "instagram",
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Billabong",
                    fontSize: 40,
                    decoration: TextDecoration.none),
              ),
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    "assets/images/plus.png",
                    width: 20,
                  ),
                ),

                // SizedBox(
                //   width: 10,
                // ),
                IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      "assets/images/messenger.png",
                      width: 20,
                    )),
              ],
            ),
          ],
        ),
      ),
      body: _navDifPage[_selectedIndex],
      bottomNavigationBar: BottomAppBar(
        child: BottomNavigationBar(

            // selectedFontSize: 0,
            currentIndex: _selectedIndex,
            onTap: _bottomNavBar,
            selectedItemColor: Colors.black87,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            iconSize: 35,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                  icon: Image.asset(
                    "assets/images/home.png",
                    width: 25,
                  ),
                  label: "home"),
              BottomNavigationBarItem(
                  icon: Image.asset("assets/images/search.png", width: 25),
                  label: "search"),
              BottomNavigationBarItem(
                  icon: Image.asset("assets/images/video.png", width: 25),
                  label: "reels"),
              BottomNavigationBarItem(
                  icon: Image.asset("assets/images/heart.png", width: 25),
                  label: "liked"),
              BottomNavigationBarItem(
                  icon: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/1.jpg"),
                  ),
                  label: "profile"),
            ]),
      ),
    );
  }
}
