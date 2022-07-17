import 'package:flutter/material.dart';

import '../../theme/interfaces/i_dw_theme_data.dart';
import 'internal_app_bar_widget.dart';

class DwAppBarMessageWidget extends StatelessWidget
    implements PreferredSizeWidget {
  const DwAppBarMessageWidget({
    super.key,
    required this.title,
    required this.imageUrl,
    required this.searchController,
    required this.onTapSearch,
  });

  final String title;
  final String imageUrl;
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
      child: Row(
        children: [
          Container(
            height: 44,
            width: 44,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 12),
          Text(
            title,
            style: theme.textStyleTheme.messageAppBarTextStyle,
          ),
        ],
      ),
    );
  }
}
