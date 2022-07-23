import 'package:flutter/material.dart';
import 'package:jobckr/models/company.dart';
import 'package:jobckr/widgets/listing_card.dart';
import 'package:jobckr/widgets/styled_appbar.dart';

class CompanyScreen extends StatelessWidget {
  const CompanyScreen({Key? key, required this.company}) : super(key: key);

  final Company company;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(40),
        child: StyledAppbar(title: company.name),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "About ${company.name}",
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: Image.network(company.imgUrl),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(left: 16),
                      child: Column(
                        children: [
                          Text(
                            company.description,
                            style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                height: 1),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Container(
                  margin: const EdgeInsets.only(top: 20, bottom: 10),
                  child: const Text(
                    "Current Opprotunities",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  )),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: company.listings.length,
                  itemBuilder: (context, index) =>
                      ListingCard(listing: company.listings[index])),
            ],
          ),
        ),
      )),
    );
  }
}
