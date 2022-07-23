import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ListingCard extends StatelessWidget {
  ListingCard({Key? key, required this.listing}) : super(key: key);

  final Map<String, dynamic> listing;

  Future<void> _launchUrl() async {
    final Uri _url = Uri.parse(listing["applyUrl"]);
    if (!await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Stack(alignment: AlignmentDirectional.bottomStart, children: [
          DefaultTextStyle.merge(
              style: const TextStyle(color: Colors.white),
              child: Container(
                  decoration: const BoxDecoration(color: Color(0xff07122A)),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          listing["name"],
                          style: const TextStyle(fontWeight: FontWeight.w600),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 12),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Essential Skills & Qualifications",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 13),
                              ),
                              Container(
                                margin: const EdgeInsets.only(left: 8, top: 4),
                                child: ListView.builder(
                                    shrinkWrap: true,
                                    itemCount: listing["requirements"].length,
                                    itemBuilder: (context, index) {
                                      return Text(
                                        "\u2022 ${listing["requirements"][index]}",
                                        style: const TextStyle(
                                            fontSize: 13,
                                            height: 1.1,
                                            fontWeight: FontWeight.w100),
                                      );
                                    }),
                              ),
                            ],
                          ),
                        ),
                      ]))),
          Positioned.fill(
            child: Material(
                color: Colors.transparent,
                child: Ink(
                  child: InkWell(
                    onTap: _launchUrl,
                  ),
                )),
          ),
        ]),
      ),
    );
  }
}
