import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jobckr/widgets/styled_appbar.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(100), child: StyledAppbar()),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 32),
                child: Image.asset(
                  "assets/images/sitting_on_floor.png",
                  height: 300,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 35),
                child: const Text(
                  "Streamline your job search process and find mentors on the way.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w100,
                      height: 1,
                      color: Color(0xff4F4F4F)),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 35),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        minimumSize: const Size(320, 58),
                        primary: const Color(0xff07122A)),
                    onPressed: () {
                      ScaffoldMessenger.of(context)
                          .showSnackBar(const SnackBar(content: Text("Test")));
                    },
                    child: const Text(
                      "Discover your opportunities",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                    )),
              ),
              Container(
                margin: const EdgeInsets.only(top: 15),
                child: TextButton(
                  style: TextButton.styleFrom(primary: Colors.grey.shade300),
                  onPressed: () {
                    SystemChannels.platform.invokeMethod('SystemNavigator.pop');
                  },
                  child: const Text(
                    "Not now",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
