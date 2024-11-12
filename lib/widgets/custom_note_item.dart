import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16),
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: const Text(
              "Flutter Tips",
              style: TextStyle(color: Colors.black, fontSize: 26),
            ),
            subtitle:  const Padding(
              padding: EdgeInsets.only(top: 12),
              child: Text(
                "build your career",
                style: TextStyle(
                    color: Color.fromARGB(255, 85, 82, 82), fontSize: 18),
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.trash,
                color: Colors.black,
                size: 26,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 24, top: 10),
            child: Text(
              "MAR 9 ,2024",
              style: TextStyle(color: Color.fromARGB(255, 85, 82, 82)),
            ),
          )
        ],
      ),
    );
  }
}