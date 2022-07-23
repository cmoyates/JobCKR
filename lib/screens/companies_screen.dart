import 'package:flutter/material.dart';
import 'package:jobckr/widgets/company_card.dart';

class CompaniesScreen extends StatelessWidget {
  const CompaniesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Companies",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 16),
                    child: const Text(
                      "Check out partnered companies and get hired.",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w200,
                          height: 0.9),
                    ),
                  ),
                  Column(
                    children: [
                      Text("Most Viewed"),
                      CompanyCard(
                          name: "Verafin",
                          address: "Wherever",
                          description: "Stuff",
                          url: "sdffs",
                          listings: [])
                    ],
                  )
                ],
              ),
            )));
  }
}
