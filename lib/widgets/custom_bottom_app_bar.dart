import 'package:flutter/material.dart';

class CustomBottomAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  final bool isExpanded;
  final void Function() onTap;

  const CustomBottomAppBar({Key? key, required this.isExpanded, required this.onTap}) : super(key: key);

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(20);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Icon(
        isExpanded ? Icons.keyboard_arrow_down : Icons.keyboard_arrow_up,
        color: Colors.white,
        size: 28,
      ),
    );
  }
}
