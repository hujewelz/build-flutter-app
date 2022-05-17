import 'package:flutter/material.dart';
import '../widgets/custom_scaffold.dart';
import '../widgets/nav_bar.dart';

class BookmarkScreeen extends StatelessWidget {
  const BookmarkScreeen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      navBar: NavBar(
        leading: Text(
          'Explore',
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
      body: const Center(child: Text('Bookmarks')),
    );
  }
}
