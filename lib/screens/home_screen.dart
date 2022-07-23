import 'package:flutter/material.dart';
import 'package:jobckr/widgets/styled_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(56),
          child: Center(child: StyledAppbar())),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 18),
                  child: const Text(
                    "Discover your next opportunity and connect with a mentor.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w100,
                        fontSize: 20,
                        height: 0.91),
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
                    onPressed: () {},
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
                    onPressed: () {},
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
