import 'package:flutter/material.dart';

class StyledNavbar extends StatefulWidget {
  const StyledNavbar(
      {Key? key, required this.activeScreen, required this.selectDestination})
      : super(key: key);

  final int activeScreen;
  final void Function(int) selectDestination;
  @override
  State<StyledNavbar> createState() => _StyledNavbarState();
}

class _StyledNavbarState extends State<StyledNavbar> {
  @override
  Widget build(BuildContext context) {
    return NavigationBarTheme(
      data: NavigationBarThemeData(
          backgroundColor: const Color(0xff07122A),
          iconTheme: MaterialStateProperty.all(
              const IconThemeData(color: Colors.white)),
          labelTextStyle:
              MaterialStateProperty.all(const TextStyle(color: Colors.white))),
      child: NavigationBar(
        destinations: const [
          NavigationDestination(
            icon: Icon(
              Icons.business_rounded,
              color: Colors.white,
            ),
            label: "Companies",
          ),
          NavigationDestination(
            icon: Icon(
              Icons.school_rounded,
              color: Colors.white,
            ),
            label: "Mentors",
          ),
          NavigationDestination(
            icon: Icon(
              Icons.settings_rounded,
              color: Colors.white,
            ),
            label: "Settings",
          )
        ],
        selectedIndex: widget.activeScreen,
        onDestinationSelected: (index) => widget.selectDestination(index),
      ),
    );
  }
}
