import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seren/widgets/goal_music_cards.dart';
import 'package:seren/widgets/mood_options.dart';
import 'package:seren/widgets/music_cards.dart';
import 'package:seren/widgets/sub_heading.dart';

class MusicScreen extends StatelessWidget {
  const MusicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 78, 89, 102),
      body: Column(
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
                  "Soothing ",
                  style: GoogleFonts.openSans(
                    fontSize: 24,
                    color: const Color.fromARGB(255, 251, 255, 247),
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "Soundscapes.",
                  style: GoogleFonts.openSans(
                    fontSize: 24,
                    color: const Color.fromARGB(255, 122, 128, 142),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: deviceHeight / 35,
          ),
          const SubHeading("How's your mood?"),
          const MoodOptions(),
          const SubHeading("For you"),
          const MusicCards(),
          const SizedBox(
            height: 10,
          ),
          const SubHeading("Goal based"),
          const GoalMusicCards(),
        ],
      ),
    );
  }
}
