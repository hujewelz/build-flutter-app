import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:twitter_clone/widgets/blur_effect_widget.dart';

class NavBar extends StatelessWidget {
  const NavBar({
    super.key,
    this.leading,
    this.title,
    this.trailing,
  });

  final Widget? leading;
  final Widget? title;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return GaussianBlurWidget(
      sigmaX: 5.0,
      sigmaY: 5.0,
      opacity: 0.75,
      child: Container(
        height: 50.0,
        color: Theme.of(context).backgroundColor,
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _NavBarLeadingWidget(leading: leading),
            title ?? const SizedBox.shrink(),
            trailing ?? const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}

class _NavBarLeadingWidget extends StatefulWidget {
  const _NavBarLeadingWidget({this.leading});

  final Widget? leading;

  @override
  State<_NavBarLeadingWidget> createState() => __NavBarLeadingWidgetState();
}

class __NavBarLeadingWidgetState extends State<_NavBarLeadingWidget> {
  @override
  Widget build(BuildContext context) {
    Widget leading = widget.leading ?? const SizedBox.shrink();
    List<Widget> leadings = [leading];
    if (Navigator.of(context).canPop()) {
      leadings.insert(
          0,
          GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
              setState(() {});
            },
            child: const Padding(
              padding: EdgeInsets.only(right: 16.0, top: 8.0, bottom: 8.0),
              child: Icon(EvaIcons.arrowBack),
            ),
          ));
    }
    leading = Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: leadings,
    );
    return leading;
  }
}
