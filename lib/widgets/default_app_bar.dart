import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:skribla_web/util/config.dart';
import 'package:skribla_web/util/context_utils.dart';

class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DefaultAppBar({
    super.key,
    this.title,
    this.titleStyle,
    this.leading,
    this.actions = const [],
    this.automaticallyImplyLeading = true,
  });

  final Widget? title;
  final TextStyle? titleStyle;
  final Widget? leading;
  final List<Widget> actions;
  final bool automaticallyImplyLeading;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: automaticallyImplyLeading,
      backgroundColor: context.theme.scaffoldBackgroundColor,
      scrolledUnderElevation: 0,
      elevation: 0,
      centerTitle: true,
      leading: automaticallyImplyLeading
          ? GestureDetector(
              onTap: Navigator.of(context).pop,
              child: CircleAvatar(
                backgroundColor: context.theme.inputDecorationTheme.fillColor,
                child: const Icon(PhosphorIconsBold.x),
              ),
            )
          : null,
      title: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Image.asset(
            'assets/images/logo.png',
            height: 50,
          ),
          Text('kribla', style: context.textTheme.displayMedium),
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
