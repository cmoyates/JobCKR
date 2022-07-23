import 'package:flutter/material.dart';
import 'package:jobckr/screens/companies_screen.dart';
import 'package:jobckr/screens/mentors_screen.dart';
import 'package:jobckr/screens/settings_screen.dart';
import 'package:jobckr/widgets/styled_appbar.dart';
import 'package:jobckr/widgets/styled_navbar.dart';

class DiscoverScreen extends StatefulWidget {
  const DiscoverScreen({Key? key, required this.activeScreen})
      : super(key: key);

  final int activeScreen;

  @override
  State<DiscoverScreen> createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen> {
  @override
  void initState() {
    super.initState();
    activeScreen = widget.activeScreen;
  }

  late int activeScreen;

  final screens = [
    const CompaniesScreen(),
    const MentorsScreen(),
    const SettingsScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        bottomNavigationBar: StyledNavbar(
          activeScreen: activeScreen,
          selectDestination: (int index) =>
              setState(() => activeScreen = index),
        ),
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(40),
          child: StyledAppbar(title: "JobCKR"),
        ),
        body: screens[activeScreen]);
  }
}
