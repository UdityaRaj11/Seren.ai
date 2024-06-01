import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExpertScreen extends StatelessWidget {
  const ExpertScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 78, 89, 102),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Text(
                  "Guidance From ",
                  style: GoogleFonts.openSans(
                    fontSize: 20,
                    color: const Color.fromARGB(255, 251, 255, 247),
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "Professionals.",
                  style: GoogleFonts.openSans(
                    fontSize: 20,
                    color: const Color.fromARGB(255, 122, 128, 142),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Text(
              "Coming Soon!!",
              style: TextStyle(
                color: Color.fromARGB(255, 122, 128, 142),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
