import 'package:flutter/material.dart';

class SubHeading extends StatelessWidget {
  final String title;
  const SubHeading(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.all(10.0),
      width: deviceWidth,
      child: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.w600,
          color: Color.fromARGB(255, 122, 128, 142),
        ),
      ),
    );
  }
}
