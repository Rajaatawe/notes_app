import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/colors_list_view.dart';

class  EditNotesColorsList extends StatefulWidget {
   EditNotesColorsList({super.key});

  @override
  State<EditNotesColorsList> createState() => _EditNotesColorsListState();
}

class _EditNotesColorsListState extends State<EditNotesColorsList> {
   int currentIndex = 0;

  List<Color> Colors = [
    Color(0xFF8E3B46),
    Color(0XFFE1DD8F),
    Color(0XFFE0777D),
    Color(0XFF4C86A8),
    Color(0XFF477890),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        itemCount: Colors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: GestureDetector(
              onTap: () {
                currentIndex = index;
                setState(() {});
              },
              child: ColorItem(
                isActive: currentIndex == index,
                color: Colors[index],
              ),
            ), 
          );
        },
      ),
    );
  }
}