import 'package:flutter/material.dart';
import 'package:jobckr/widgets/styled_appbar.dart';

class MentorOverviewScreen extends StatelessWidget {
  const MentorOverviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: StyledAppbar(title: "JobCKR"),
      ),
    );
  }
}
