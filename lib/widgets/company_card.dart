import 'dart:math';

import 'package:flutter/material.dart';

import '../models/company.dart';
import '../screens/company_screen.dart';

class CompanyCard extends StatelessWidget {
  const CompanyCard({
    Key? key,
    required this.company,
  }) : super(key: key);

  final Company company;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Stack(alignment: AlignmentDirectional.bottomStart, children: [
          DefaultTextStyle.merge(
              style: const TextStyle(color: Colors.white),
              child: Container(
                  decoration: const BoxDecoration(color: Color(0xff07122A)),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 70,
                              height: 70,
                              child: Image.network(company.imgUrl),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                margin: const EdgeInsets.only(left: 12),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          company.name,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Text(
                                          company.address,
                                          style: const TextStyle(fontSize: 12),
                                        )
                                      ],
                                    ),
                                    Text(company.url,
                                        style: const TextStyle(fontSize: 11)),
                                    Container(
                                      margin: const EdgeInsets.only(top: 8),
                                      child: Text(company.description,
                                          style: const TextStyle(
                                              fontSize: 11, height: 1.1)),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 12),
                          child: Text(
                              "Current Opportunities (${company.listings.length})",
                              style: const TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w600)),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 4),
                          child: ListView.builder(
                              shrinkWrap: true,
                              itemCount: min(company.listings.length, 2),
                              itemBuilder: (context, index) {
                                return Text(
                                  company.listings[index]["name"],
                                  style: const TextStyle(
                                      fontSize: 13, height: 1.1),
                                );
                              }),
                        )
                      ]))),
          Positioned.fill(
            child: Material(
                color: Colors.transparent,
                child: Ink(
                  child: InkWell(
                    onTap: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  CompanyScreen(company: company)))
                    },
                  ),
                )),
          ),
        ]),
      ),
    );
  }
}
