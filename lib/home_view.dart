import 'package:best/core/extensions/context_extension.dart';
import 'package:best/first-page/first_page_view.dart';
import 'package:best/l10n/gen/app_localizations.dart';

import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _activeIngredientNo = 0;

  late List _ingredient;

  @override
  Widget build(BuildContext context) {
    _ingredient = [
      FirstPageView(),
      Text(
        AppLocalizations.of(context)!.noInternet,
      ),
      Text(context.localization.notFoundNavigation),
      Text("İçerik 4"),
      Text("İçerik 5"),
    ];

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            actions: [
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.favorite_border_outlined)),
              IconButton(onPressed: () {}, icon: Icon(Icons.message_rounded)),
            ],
            backgroundColor: Theme.of(context).primaryColor,
            title: Text(
              "Instagram",
              style: TextStyle(color: Colors.black),
            )),
        body: _ingredient[_activeIngredientNo],
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_filled,
                ),
                label: "home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_comment_outlined), label: "home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.video_collection_outlined), label: "home"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.account_circle_sharp,
                ),
                label: "home"),
          ],
          selectedItemColor: Theme.of(context).primaryColor,
          unselectedItemColor: Colors.grey,
          onTap: (int value) {
            setState(() {
              _activeIngredientNo = value;
            });
          },
          currentIndex: _activeIngredientNo,
        ),
      ),
    );
  }
}
