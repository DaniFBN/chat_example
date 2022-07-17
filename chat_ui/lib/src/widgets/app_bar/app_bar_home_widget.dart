import 'package:flutter/material.dart';

import '../../theme/interfaces/i_dw_theme_data.dart';
import 'internal_app_bar_widget.dart';

class DwAppBarHomeWidget extends StatelessWidget
    implements PreferredSizeWidget {
  const DwAppBarHomeWidget({
    super.key,
    required this.title,
    required this.searchController,
    required this.onTapSearch,
  });

  final String title;
  final TextEditingController searchController;
  final void Function() onTapSearch;

  @override
  Size get preferredSize => const Size.fromHeight(75);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<IDwThemeData>()!;

    return InternalAppBarWidget(
      searchController: searchController,
      onTapSearch: onTapSearch,
      child: Text(
        title,
        style: theme.textStyleTheme.homeAppBarTextStyle,
      ),
    );
  }
}
