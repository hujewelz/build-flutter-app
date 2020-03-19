import 'package:flutter/material.dart';

class LeftTabBar extends StatefulWidget {
  LeftTabBar({Key key}) : super(key: key);

  @override
  _LeftTabBarState createState() => _LeftTabBarState();
}

class _LeftTabBarState extends State<LeftTabBar>
    with SingleTickerProviderStateMixin {
  int _activedIndex = 0;

  AnimationController _controller;
  Animation<double> _animation;

  List<IconData> icons = [
    Icons.home,
    Icons.filter_drama,
    Icons.people,
    Icons.message,
    Icons.account_balance,
  ];

  @override
  void initState() {
    super.initState();

    _controller =
        AnimationController(duration: Duration(seconds: 1), vsync: this);
    _animation =
        CurvedAnimation(curve: Curves.bounceInOut, parent: _controller);
    _animation = Tween<double>(begin: 0, end: 1).animate(_animation);

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print(_animation);
    return Container(
      // color: Colors.redAccent,
      child: Stack(
        children: <Widget>[
          AnimatedBuilder(
            animation: _controller,
            builder: (BuildContext context, Widget child) {
              return Positioned(
                top:
                    (10.0 + (_activedIndex * 78).toDouble()) * _animation.value,
                right: 0,
                child: Container(
                  width: 3.0,
                  height: 64.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(1.5),
                    color: Color(0xFF4D2FE0),
                  ),
                ),
              );
            },
          ),
          Column(
            children: icons
                .map((e) => _buildTabItem(context, icons.indexOf(e)))
                .toList(),
          ),
        ],
      ),
    );
  }

  Widget _buildTabItem(BuildContext context, int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 9.0),
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
              _controller.forward().orCancel;
            });
          },
        ),
      ),
    );
  }
}
