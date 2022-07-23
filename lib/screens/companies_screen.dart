import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:jobckr/widgets/company_card.dart';
import '../models/company.dart';

class CompaniesScreen extends StatelessWidget {
  const CompaniesScreen({Key? key}) : super(key: key);

  Stream<List<Company>> readCompanies() => FirebaseFirestore.instance
      .collection("companies")
      .snapshots()
      .map((snapshot) => snapshot.docs
          .map((doc) => Company.fromJson(doc.data(), doc.id))
          .toList());

  Widget buildCompany(Company company) => CompanyCard(
        company: company,
      );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
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
                        fontSize: 17, fontWeight: FontWeight.w200, height: 0.9),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        margin: EdgeInsets.only(top: 10, bottom: 6),
                        child: const Text(
                          "Most Viewed",
                          style: TextStyle(fontSize: 16),
                        )),
                    StreamBuilder<List<Company>>(
                        stream: readCompanies(),
                        builder: (context, snapshot) {
                          if (snapshot.hasError) {
                            return Text("Error: ${snapshot.error}");
                          } else if (snapshot.hasData) {
                            final companies = snapshot.data!;
                            return ListView(
                              scrollDirection: Axis.vertical,
                              shrinkWrap: true,
                              children: companies.map(buildCompany).toList(),
                            );
                          } else {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          }
                        })
                  ],
                )
              ],
            ),
          )),
    ));
  }
}
