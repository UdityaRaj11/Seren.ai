import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seren/screens/chat_screen.dart';

class AIandChatOptions extends StatelessWidget {
  const AIandChatOptions({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        InkWell(
          customBorder: const CircleBorder(),
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const ChatScreen(),
              ),
            );
          },
          child: Stack(
            children: [
              CircleAvatar(
                radius: deviceWidth / 3.3,
                backgroundColor: const Color.fromARGB(255, 113, 128, 146),
              ),
              Positioned(
                top: deviceWidth / 40,
                left: deviceWidth / 40,
                child: CircleAvatar(
                  radius: deviceWidth / 3.6,
                  backgroundColor: const Color.fromARGB(255, 138, 157, 180),
                ),
              ),
              Positioned(
                top: deviceWidth / 19,
                left: deviceWidth / 19,
                child: CircleAvatar(
                  radius: deviceWidth / 4,
                  backgroundColor: Colors.grey,
                  foregroundImage: const AssetImage("images/avatar image.png"),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          "Tap above to chat",
          style: GoogleFonts.lato(
            fontWeight: FontWeight.w600,
            color: const Color.fromARGB(255, 138, 157, 180),
            fontSize: 13,
          ),
        )
      ],
    );
  }
}
