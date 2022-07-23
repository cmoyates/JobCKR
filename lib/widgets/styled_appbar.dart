import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class StyledAppbar extends StatelessWidget {
  const StyledAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      title: Container(
        margin: const EdgeInsets.only(top: 20),
        child: const Text(
          "JobCKR",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w700, fontSize: 20),
        ),
      ),
      automaticallyImplyLeading: false,
    );
  }
}
