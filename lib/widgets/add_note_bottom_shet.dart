import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_bottom.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddNoteBottomShet extends StatelessWidget {
  const AddNoteBottomShet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 14),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30),
            CustomTextField(hinttext: "Title"),
            SizedBox(
              height: 20,
            ),
            CustomTextField(
              hinttext: "Content",
              maxlines: 5,
            ),
            SizedBox(
              height: 30,
            ),
            CustomBottom(),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
