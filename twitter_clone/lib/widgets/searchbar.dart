import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({super.key});

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400.0,
      height: 38.0,
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: const BorderRadius.all(Radius.circular(30)),
      ),
      child: const TextField(
        decoration: InputDecoration(
          icon: Icon(EvaIcons.searchOutline),
          hintText: 'Search Twitter',
          border: OutlineInputBorder(borderSide: BorderSide.none),
          contentPadding: EdgeInsets.all(0),
        ),
      ),
    );
  }
}
