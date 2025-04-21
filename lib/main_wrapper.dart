import 'dart:developer';

import 'package:cook_book/ui/old_structure_pages/favourite_page.dart';
import 'package:cook_book/ui/home/page/home_page.dart';
import 'package:cook_book/ui/old_structure_pages/search_page.dart';
import 'package:cook_book/ui/old_structure_pages/settings_page.dart';
import 'package:flutter/material.dart';

class MainWrapper extends StatefulWidget {
  MainWrapper({super.key});

  @override
  State<MainWrapper> createState() => _MainWrapperState(
        pages: [
          HomePage(),
          SearchPage(),
          FavouritePage(),
          SettingsPage(),
        ],
      );
}

class _MainWrapperState extends State<MainWrapper> {
  int _currentIndex = 0;
  List<Widget> _pages;

  _MainWrapperState({required List<Widget> pages}) : _pages = pages;

  @override
  void initState() {
    log("init");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (value) => setState(() {
          _currentIndex = value;
        }),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Explore"),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: "Favourites"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
        ],
      ),
    );
  }
}
