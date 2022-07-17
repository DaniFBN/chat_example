import 'package:flutter/material.dart';

import '../../theme/interfaces/i_dw_theme_data.dart';
import '../text/responsive_text_widget.dart';
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
  Size get preferredSize => const Size.fromHeight(70);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context).extension<IDwThemeData>()!;

    return InternalAppBarWidget(
      searchController: searchController,
      onTapSearch: onTapSearch,
      child: Row(
        children: [
          Container(
            height: size.width * theme.responsiveTheme.s44Percent,
            width: size.width * theme.responsiveTheme.s44Percent,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: size.width * theme.responsiveTheme.s12Percent),
          DwResponsiveTextWidget(
            text: title,
            style: theme.textStyleTheme.messageAppBarTextStyle,
          ),
        ],
      ),
    );
  }
}
