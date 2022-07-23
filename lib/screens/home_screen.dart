import 'package:flutter/material.dart';
import 'package:jobckr/screens/discover_screen.dart';
import 'package:jobckr/screens/mentor_overview_screen.dart';
import 'package:jobckr/widgets/styled_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(40),
          child: Center(child: StyledAppbar(title: "JobCKR"))),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 34),
                  child: const Text(
                    "Discover your next opportunity and connect with a mentor.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w100,
                        fontSize: 20,
                        height: 0.91,
                        color: Color.fromARGB(255, 85, 85, 85)),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 24),
                  child: Image.asset(
                    "assets/images/sitting_at_desk.png",
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 34),
                  child: ElevatedButton(
                    child: const Text(
                      "Discover Companies",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const DiscoverScreen(
                                    activeScreen: 0,
                                  )));
                    },
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 16),
                  child: ElevatedButton(
                    child: const Text(
                      "Discover Mentors",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const DiscoverScreen(
                                    activeScreen: 1,
                                  )));
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
