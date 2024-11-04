import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String text;
  final bool showNavButton; //true
  final bool showHomeButton; //false
  final PreferredSizeWidget? bottom;
  final Widget? leading;
  final double height;

  const CustomAppBar(
      {required this.text,
      this.height = 60,
      this.showNavButton = true,
      this.showHomeButton = false,
      this.bottom,
      this.leading,
      super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: leading,
      automaticallyImplyLeading: showNavButton,
      title: Text(
        text,
        style: Theme.of(context).textTheme.titleMedium,
        softWrap: false,
        overflow: TextOverflow.fade,
        //style: AppStyles.appBar,
      ),
      bottom: bottom,
      actions: showHomeButton
          ? [
              IconButton(
                  icon: const Icon(Icons.home),
                  onPressed: () =>
                      Modular.to.popUntil((route) => route.isFirst))
            ]
          : null,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
