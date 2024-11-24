import 'package:flutter/material.dart';

class Coloritem extends StatelessWidget {
  const Coloritem({super.key, required this.isactive, required this.color});
  final bool isactive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isactive
        ? CircleAvatar(
            radius: 22,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 20,
              backgroundColor: color,
            ),
          )
        : CircleAvatar(
            radius: 22,
            backgroundColor: color,
          );
  }
}

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex = 0;
  List<Color> colors = const [
    Colors.black,
    Colors.blue,
    Colors.red,
    Colors.yellow,
    Color.fromARGB(255, 33, 243, 72),
    Color.fromARGB(255, 230, 0, 169),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44,
      child: ListView.builder(
          itemCount: colors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: GestureDetector(
                onTap: () {
                  currentIndex = index;
                  setState(() {});
                },
                child: Coloritem(
                  color: colors[index],
                  isactive: currentIndex == index,
                ),
              ),
            );
          }),
    );
  }
}
