import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LeftTabBar extends StatefulWidget {
  LeftTabBar({Key key}) : super(key: key);

  @override
  _LeftTabBarState createState() => _LeftTabBarState();
}

class _LeftTabBarState extends State<LeftTabBar> {
  int _activedIndex = 0;

  List<String> icons = [
    'assets/icons/home.svg',
    'assets/icons/filter.svg',
    'assets/icons/people.svg',
    'assets/icons/publish.svg',
    'assets/icons/assets.svg',
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
            top: 5.0 + (_activedIndex * 76.0).toDouble(),
            right: 0,
            child: Container(
              width: 4.0,
              height: 66.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
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
    final isActived = _activedIndex == index;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: GestureDetector(
        child: Container(
            width: 60.0,
            height: 60.0,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: isActived ? Color(0xFFFA7A54) : null,
              border: !isActived
                  ? Border.all(
                      color: Theme.of(context).iconTheme.color.withOpacity(0.6),
                      width: 1,
                    )
                  : null,
              boxShadow: isActived
                  ? [
                      BoxShadow(
                        color: Color(0xFFFA7A54).withOpacity(0.5),
                        offset: Offset(4, 4),
                        blurRadius: 20.0,
                      ),
                    ]
                  : null,
              borderRadius: BorderRadius.circular(20),
            ),
            child: SvgPicture.asset(
              icons[index],
              width: 24.0,
              height: 24.0,
              color: _activedIndex == index
                  ? Colors.white
                  : Theme.of(context).iconTheme.color,
            )),
        onTap: () {
          setState(() {
            _activedIndex = index;
          });
        },
      ),
    );
  }
}
