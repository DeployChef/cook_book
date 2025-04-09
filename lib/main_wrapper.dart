import 'dart:developer';

import 'package:cook_book/Domain/interfaces/i_recipe_service.dart';
import 'package:cook_book/Ui/pages/favourite_page.dart';
import 'package:cook_book/Ui/pages/home_page.dart';
import 'package:cook_book/Ui/pages/search_page.dart';
import 'package:cook_book/Ui/pages/settings_page.dart';
import 'package:flutter/material.dart';

class MainWrapper extends StatefulWidget {
  IRecipeService service;

  MainWrapper({super.key, required this.service});

  @override
  State<MainWrapper> createState() => _MainWrapperState(
        pages: [
          HomePage(service: service),
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
