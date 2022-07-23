import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class StyledAppbar extends StatelessWidget {
  const StyledAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent, // <-- SEE HERE
        statusBarIconBrightness:
            Brightness.dark, //<-- For Android SEE HERE (dark icons)
        statusBarBrightness:
            Brightness.light, //<-- For iOS SEE HERE (dark icons)
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: const Center(
        child: Text(
          "JobCKR",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
