import 'package:flutter/material.dart';
import 'package:jobckr/models/mentor.dart';

class MentorCard extends StatelessWidget {
  const MentorCard({Key? key, required this.mentor}) : super(key: key);

  final Mentor mentor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7), color: Colors.grey.shade200),
      child: Row(
        children: [
          SizedBox(
            height: 100,
            child: AspectRatio(
              aspectRatio: 3 / 4,
              child: Image.network(mentor.imgUrl),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(mentor.name),
              Text("t"),
              Text("t"),
              Text("t"),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    minimumSize: const Size(190, 40),
                  ),
                  onPressed: () {},
                  child: const Text("Check Availability"))
            ],
          )
        ],
      ),
    );
  }
}
