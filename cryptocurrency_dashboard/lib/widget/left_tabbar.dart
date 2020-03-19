import 'package:flutter/material.dart';

class LeftTabBar extends StatefulWidget {
  LeftTabBar({Key key}) : super(key: key);

  @override
  _LeftTabBarState createState() => _LeftTabBarState();
}

class _LeftTabBarState extends State<LeftTabBar> {
  int _activedIndex = 0;

  List<IconData> icons = [
    Icons.home,
    Icons.filter_drama,
    Icons.people,
    Icons.message,
    Icons.account_balance,
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 113,
      child: Stack(
        children: <Widget>[
          AnimatedPositioned(
            duration: Duration(milliseconds: 250),
            curve: Curves.fastOutSlowIn,
            top: 9.0 + (_activedIndex * 68.0).toDouble(),
            right: 0,
            child: Container(
              width: 3.0,
              height: 54.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(1.5),
                color: Color(0xFF4D2FE0),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: icons
                    .map((e) => _buildTabItem(context, icons.indexOf(e)))
                    .toList(),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildTabItem(BuildContext context, int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 9.0),
      child: Container(
        width: 50.0,
        height: 50.0,
        decoration: BoxDecoration(
          color: _activedIndex == index ? Color(0xFFFA7A54) : null,
          border: _activedIndex != index
              ? Border.all(
                  color: Theme.of(context).iconTheme.color.withOpacity(0.4),
                  width: 0.5,
                )
              : null,
          borderRadius: BorderRadius.circular(14),
        ),
        child: IconButton(
          icon: Icon(icons[index]),
          color: _activedIndex == index
              ? Colors.white
              : Theme.of(context).iconTheme.color,
          onPressed: () {
            setState(() {
              _activedIndex = index;
            });
          },
        ),
      ),
    );
  }
}
