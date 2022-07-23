import 'dart:ffi';

import 'package:flutter/material.dart';

class CompanyCard extends StatelessWidget {
  const CompanyCard(
      {Key? key,
      required this.name,
      required this.address,
      required this.url,
      required this.listings,
      required this.description})
      : super(key: key);

  final String name;
  final String address;
  final String description;
  final String url;
  final List<String> listings;

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle.merge(
        style: const TextStyle(color: Colors.white),
        child: Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                color: Color(0xff07122A)),
            padding: const EdgeInsets.all(16),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [Text(name), Text(address)],
                  ),
                  Text(url),
                ])));
  }
}
