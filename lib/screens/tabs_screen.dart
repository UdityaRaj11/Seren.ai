import 'package:flutter/material.dart';
import 'package:seren/screens/expert_screen.dart';
import 'package:seren/screens/home_screen.dart';
import 'package:seren/screens/music_screen.dart';
import 'package:seren/screens/report_screen.dart';
import 'package:seren/screens/resources_screen.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  late List<Map<String, Widget>> _pages;
  @override
  void initState() {
    _pages = [
      {'page': const ResourcesScreen()},
      {'page': const ReportScreen()},
      {'page': const MusicScreen()},
      {'page': const ExpertScreen()},
      {'page': const HomeScreen()},
    ];
    super.initState();
  }

  int _selectedPageIndex = 4;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleTextStyle: const TextStyle(
          color: Colors.white,
        ),
        backgroundColor: Colors.transparent,
        actions: const [],
        title: const Text("SEREN.AI"),
      ),
      backgroundColor: const Color.fromARGB(255, 78, 89, 102),
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        onTap: _selectPage,
        backgroundColor: Colors.transparent,
        unselectedItemColor: const Color.fromARGB(255, 122, 128, 142),
        selectedItemColor: const Color.fromARGB(255, 255, 250, 250),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        currentIndex: _selectedPageIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: const Icon(
              Icons.category,
              color: Color.fromARGB(255, 138, 157, 180),
            ),
            label: "Resources",
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: const Icon(
              Icons.analytics,
              color: Color.fromARGB(255, 138, 157, 180),
            ),
            label: "Report",
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: const Icon(
              Icons.music_note,
              color: Color.fromARGB(255, 138, 157, 180),
            ),
            label: "Music",
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: const Icon(
              Icons.chat_bubble,
              color: Color.fromARGB(255, 138, 157, 180),
            ),
            label: "Expert",
          ),
          const BottomNavigationBarItem(
            backgroundColor: Color.fromARGB(255, 118, 124, 138),
            icon: Icon(
              Icons.person_2_rounded,
              size: 40,
              color: Colors.white,
            ),
            label: 'Seren',
          ),
        ],
      ),
    );
  }
}
