import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:twitter_clone/widgets/searchbar.dart';
import 'package:twitter_clone/widgets/top_menu.dart';
import '../widgets/custom_scaffold.dart';
import '../widgets/nav_bar.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      navBar: NavBar(
        leading: const SearchBar(),
        trailing: IconButton(
            onPressed: () {}, icon: const Icon(EvaIcons.settings2Outline)),
        child: const TopMenu(
          titles: [
            'For your',
            'Trending',
            'COVID-19',
            'News',
            'Sports',
            'Entertainment'
          ],
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.only(top: 100.0),
      ),
    );
  }
}
