import 'package:flutter/material.dart';
import 'package:twitter_clone/config/palette.dart';

class TopMenu extends StatefulWidget {
  const TopMenu({
    super.key,
    this.titles = const <String>[],
  });

  final List<String> titles;

  @override
  State<TopMenu> createState() => _TopMenuState();
}

class _TopMenuState extends State<TopMenu> {
  String? _selectedTitle;

  @override
  void initState() {
    super.initState();
    if (widget.titles.isNotEmpty) {
      _selectedTitle = widget.titles[0];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: widget.titles.map(_buildMenuItem).toList(),
        ),
      ],
    );
  }

  Widget _buildMenuItem(String title) {
    return GestureDetector(
      onTap: () => setState(() {
        _selectedTitle = title;
      }),
      child: Container(
        alignment: Alignment.center,
        height: 50.0,
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(color: Palette.separator)),
        ),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 15,
            fontWeight:
                title == _selectedTitle ? FontWeight.bold : FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
