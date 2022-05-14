import 'package:flutter/material.dart';

class SidebarItem extends StatelessWidget {
  const SidebarItem({
    super.key,
    required this.title,
    required this.icon,
    required this.isSelected,
    this.onPressed,
  });

  final String title;
  final IconData icon;
  final bool isSelected;
  final VoidCallback? onPressed;

  double get _fontSize => isSelected ? 17 : 16;

  FontWeight get _fontWeight => isSelected ? FontWeight.w600 : FontWeight.w500;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(vertical: 11),
        margin: const EdgeInsets.only(top: 8),
        child: Row(
          children: [
            Icon(
              icon,
              size: 28,
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: _fontSize,
                  fontWeight: _fontWeight,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
