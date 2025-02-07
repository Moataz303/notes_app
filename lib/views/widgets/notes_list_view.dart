import 'package:flutter/material.dart';
import 'custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});
  final data = const [
    Color(0xffFFCC80),
    Colors.greenAccent,
    Colors.cyanAccent,
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 6),
        child: CustomNoteItem(
          color: data[index % data.length],
        ),
      );
    });
  }
}
