import 'package:flutter/material.dart';

import '../../theme/interfaces/i_dw_theme_data.dart';
import '../icon/external_icon_widget.dart';
import '../text_field/search_text_field_widget.dart';

class InternalAppBarWidget extends StatefulWidget{
  const InternalAppBarWidget({
    super.key,
    required this.child,
    required this.searchController,
    required this.onTapSearch,
  });

  final Widget child;
  final TextEditingController searchController;
  final void Function() onTapSearch;

  @override
  State<InternalAppBarWidget> createState() => _InternalAppBarWidgetState();
}

class _InternalAppBarWidgetState extends State<InternalAppBarWidget>
    with TickerProviderStateMixin {
  bool showMessage = true;
  final searchFocus = FocusNode();

  void toggleWidget() {
    if (!showMessage && widget.searchController.text.isNotEmpty) {
      widget.onTapSearch();
    } else {
      toggleShowMessage();
    }

    if (showMessage == false) searchFocus.requestFocus();
  }

  void toggleShowMessage() {
    setState(() {
      showMessage = !showMessage;
    });
  }

  void clearText() {
    widget.searchController.clear();

    toggleShowMessage();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context).extension<IDwThemeData>()!;

    return SafeArea(
      child: ColoredBox(
        color: theme.colorTheme.backgroundColor,
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: size.width * theme.responsiveTheme.s8Percent,
            horizontal: size.width * theme.responsiveTheme.s24Percent,
          ),
          child: Row(
            children: [
              Expanded(
                child: AnimatedSwitcher(
                  duration: const Duration(seconds: 1),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: showMessage
                        ? widget.child
                        : DwSearchTextFieldWidget(
                            controller: widget.searchController,
                            focusNode: searchFocus,
                            onSubmitted: (_) => toggleWidget,
                            onCleared: clearText,
                          ),
                  ),
                ),
              ),
              IconButton(
                onPressed: toggleWidget,
                icon: const DwExternalIconWidget(
                  icon: ExternalIcons.search,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
