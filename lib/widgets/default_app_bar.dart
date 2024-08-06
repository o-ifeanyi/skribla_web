import 'package:flutter/material.dart';
import 'package:skribla_web/util/config.dart';
import 'package:skribla_web/util/context_utils.dart';

class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DefaultAppBar({
    super.key,
    this.title,
    this.titleStyle,
    this.leading,
    this.actions = const [],
  });

  final Widget? title;
  final TextStyle? titleStyle;
  final Widget? leading;
  final List<Widget> actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: context.theme.scaffoldBackgroundColor,
      scrolledUnderElevation: 0,
      elevation: 0,
      centerTitle: true,
      leading: null,
      title: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          GestureDetector(
            onTap: Navigator.of(context).pop,
            child: Image.asset(
              'assets/images/logo.png',
              height: 35,
            ),
          ),
          Text('kribla', style: context.textTheme.titleSmall),
        ],
      ),
      actions: [
        ...actions,
        if (actions.isNotEmpty) Config.hGap20,
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
