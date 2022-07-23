import 'package:flutter/material.dart';
import 'package:jobckr/screens/companies_screen.dart';
import 'package:jobckr/screens/mentors_screen.dart';
import 'package:jobckr/screens/settings_screen.dart';
import 'package:jobckr/widgets/styled_appbar.dart';
import 'package:jobckr/widgets/styled_navbar.dart';

class DiscoverScreen extends StatefulWidget {
  const DiscoverScreen({Key? key}) : super(key: key);

  @override
  State<DiscoverScreen> createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen> {
  int activeScreen = 2;

  final screens = [CompaniesScreen(), MentorsScreen(), SettingsScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: StyledNavbar(
          activeScreen: activeScreen,
          selectDestination: (int index) =>
              setState(() => activeScreen = index),
        ),
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(40),
          child: StyledAppbar(),
        ),
        body: screens[activeScreen]);
  }
}
