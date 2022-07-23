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
        padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 32),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/sitting_on_floor.png",
                height: 300,
              ),
              const Text(
                "Streamline your job search process and find mentors on the way.",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w300),
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: const Color(0xff383837)),
                  onPressed: () {
                    ScaffoldMessenger.of(context)
                        .showSnackBar(const SnackBar(content: Text("Test")));
                  },
                  child: const Text("Discover your opportunities")),
              TextButton(
                style: TextButton.styleFrom(primary: Colors.grey.shade300),
                onPressed: () {
                  SystemChannels.platform.invokeMethod('SystemNavigator.pop');
                },
                child: const Text("Not now"),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
