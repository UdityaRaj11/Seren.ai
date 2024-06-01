import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Affirmation extends StatefulWidget {
  const Affirmation({super.key});

  @override
  State<Affirmation> createState() => _AffirmationState();
}

class _AffirmationState extends State<Affirmation> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Text(
        "\"Remember, every step you take towards self-care is a step closer to a brighter and calmer you.\"",
        style: GoogleFonts.lato(
          fontSize: 16,
          fontWeight: FontWeight.w800,
          color: const Color.fromARGB(255, 221, 226, 236),
        ),
      ),
    );
  }
}
