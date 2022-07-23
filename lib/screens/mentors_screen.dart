import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:jobckr/models/mentor.dart';

import '../widgets/mentor_card.dart';

class MentorsScreen extends StatelessWidget {
  const MentorsScreen({Key? key}) : super(key: key);

  Stream<List<Mentor>> readMentors() => FirebaseFirestore.instance
      .collection("mentors")
      .snapshots()
      .map((snapshot) => snapshot.docs
          .map((doc) => Mentor.fromJson(doc.data(), doc.id))
          .toList());

  Widget buildMentor(Mentor mentor) => MentorCard(
        mentor: mentor,
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
                        "Mentors",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 16),
                  child: const Text(
                    "Check out partnered mentors and get career advice",
                    style: TextStyle(
                        fontSize: 17, fontWeight: FontWeight.w200, height: 0.9),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        margin: const EdgeInsets.only(top: 10, bottom: 6),
                        child: const Text(
                          "Most Viewed",
                          style: TextStyle(fontSize: 16),
                        )),
                    StreamBuilder<List<Mentor>>(
                        stream: readMentors(),
                        builder: (context, snapshot) {
                          if (snapshot.hasError) {
                            return Text("Error: ${snapshot.error}");
                          } else if (snapshot.hasData) {
                            final mentors = snapshot.data!;
                            return ListView(
                              scrollDirection: Axis.vertical,
                              shrinkWrap: true,
                              children: mentors.map(buildMentor).toList(),
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
