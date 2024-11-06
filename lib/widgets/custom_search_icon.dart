import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 47,
        width: 47,
        decoration: BoxDecoration(color: Colors.white.withOpacity(.05) , borderRadius: BorderRadius.circular(12)),
        child: const Center(
          child: Icon(
            Icons.search,
            color: Colors.white,
            size: 35,
          ),
        ),
      ),
    );
  }
}
