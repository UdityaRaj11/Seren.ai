import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seren/screens/home_screen.dart';
import 'package:seren/screens/music_screen.dart';
import 'package:seren/screens/tabs_screen.dart';

Future main() async {
  await dotenv.load(fileName: "assets/.env");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Seren.ai',
      theme: ThemeData(
        textTheme: GoogleFonts.openSansTextTheme(
          Theme.of(context).textTheme,
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        '/': (ctx) => const TabsScreen(),
        '/home_screen': (ctx) => const HomeScreen(),
        '/music_screen': (ctx) => const MusicScreen(),
      },
    );
  }
}
