import 'package:flutter/material.dart';

class MoodOptions extends StatefulWidget {
  const MoodOptions({super.key});

  @override
  State<MoodOptions> createState() => _MoodOptionsState();
}

class _MoodOptionsState extends State<MoodOptions> {
  bool selectedHappy = false;
  bool selectedCalm = false;
  bool selectedNeutral = false;
  bool selectedAnxious = false;
  bool selectedSad = false;
  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    return Container(
      width: deviceWidth,
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton.filled(
            onPressed: () {
              setState(() {
                selectedHappy = true;
                selectedCalm = false;
                selectedNeutral = false;
                selectedAnxious = false;
                selectedSad = false;
              });
            },
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(
                selectedHappy
                    ? const Color.fromARGB(255, 113, 128, 146)
                    : Colors.transparent,
              ),
            ),
            icon: const Icon(
              Icons.sentiment_very_satisfied,
              color: Color.fromARGB(255, 29, 136, 12),
            ),
          ),
          IconButton.filled(
            onPressed: () {
              setState(() {
                selectedCalm = true;
                selectedHappy = false;
                selectedNeutral = false;
                selectedAnxious = false;
                selectedSad = false;
              });
            },
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(
                selectedCalm
                    ? const Color.fromARGB(255, 113, 128, 146)
                    : Colors.transparent,
              ),
            ),
            icon: const Icon(
              Icons.sentiment_satisfied,
              color: Color.fromARGB(255, 85, 221, 64),
            ),
          ),
          IconButton.filled(
            onPressed: () {
              setState(() {
                selectedNeutral = true;
                selectedCalm = false;
                selectedHappy = false;
                selectedAnxious = false;
                selectedSad = false;
              });
            },
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(
                selectedNeutral
                    ? const Color.fromARGB(255, 113, 128, 146)
                    : Colors.transparent,
              ),
            ),
            icon: const Icon(
              Icons.sentiment_neutral,
              color: Color.fromARGB(255, 127, 225, 113),
            ),
          ),
          IconButton.filled(
            onPressed: () {
              setState(() {
                selectedAnxious = true;
                selectedCalm = false;
                selectedNeutral = false;
                selectedHappy = false;
                selectedSad = false;
              });
            },
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(
                selectedAnxious
                    ? const Color.fromARGB(255, 113, 128, 146)
                    : Colors.transparent,
              ),
            ),
            icon: const Icon(
              Icons.sentiment_dissatisfied,
              color: Color.fromARGB(255, 255, 150, 150),
            ),
          ),
          IconButton.filled(
            onPressed: () {
              setState(() {
                selectedSad = true;
                selectedCalm = false;
                selectedNeutral = false;
                selectedAnxious = false;
                selectedHappy = false;
              });
            },
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(
                selectedSad
                    ? const Color.fromARGB(255, 113, 128, 146)
                    : Colors.transparent,
              ),
            ),
            icon: const Icon(
              Icons.sentiment_very_dissatisfied,
              color: Color.fromARGB(255, 220, 91, 91),
            ),
          ),
        ],
      ),
    );
  }
}
