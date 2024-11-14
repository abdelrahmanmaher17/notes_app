import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          CustomAppBar(
            icon: Icons.check,
            title: 'Edit Note',
          ),
          SizedBox(
            height: 20,
          ),
          CustomTextField(hinttext: "Title"),
          SizedBox(
            height: 15,
          ),
          CustomTextField(
            hinttext: "Content",
            maxlines: 5,
          ),
        ],
      ),
    );
  }
}
